.class public Lcom/android/systemui/util/QcomBoostFramework;
.super Ljava/lang/Object;
.source "QcomBoostFramework.java"


# static fields
.field private static isQcom:Z

.field private static mAcquireFunc:Ljava/lang/reflect/Method;

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static mIOPStart:Ljava/lang/reflect/Method;

.field private static mIOPStop:Ljava/lang/reflect/Method;

.field private static mIopv2:I

.field private static mIsLoaded:Z

.field private static mPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mPerfHintFunc:Ljava/lang/reflect/Method;

.field private static mReleaseFunc:Ljava/lang/reflect/Method;

.field private static mReleaseHandlerFunc:Ljava/lang/reflect/Method;

.field private static mUXEngine_events:Ljava/lang/reflect/Method;

.field private static mUXEngine_trigger:Ljava/lang/reflect/Method;


# instance fields
.field private mPerf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 21
    const-string/jumbo v0, "iop.enable_uxe"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 20
    sput v0, Lcom/android/systemui/util/QcomBoostFramework;->mIopv2:I

    .line 22
    sput-boolean v2, Lcom/android/systemui/util/QcomBoostFramework;->mIsLoaded:Z

    .line 23
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    .line 24
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 25
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    .line 26
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 27
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 28
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 29
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    .line 30
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    .line 31
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mUXEngine_events:Ljava/lang/reflect/Method;

    .line 32
    sput-object v1, Lcom/android/systemui/util/QcomBoostFramework;->mUXEngine_trigger:Ljava/lang/reflect/Method;

    .line 68
    const-string/jumbo v0, "qcom"

    const-string/jumbo v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/QcomBoostFramework;->isQcom:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/util/QcomBoostFramework;->mPerf:Ljava/lang/Object;

    .line 71
    sget-boolean v2, Lcom/android/systemui/util/QcomBoostFramework;->isQcom:Z

    if-nez v2, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    const-class v3, Lcom/android/systemui/util/QcomBoostFramework;

    monitor-enter v3

    .line 75
    :try_start_0
    sget-boolean v2, Lcom/android/systemui/util/QcomBoostFramework;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 77
    :try_start_1
    const-string/jumbo v2, "com.qualcomm.qti.Performance"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    .line 79
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-class v2, [I

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 80
    .local v0, "argClasses":[Ljava/lang/Class;
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfLockAcquire"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 82
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Class;

    .end local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v2, v0, v4

    .line 83
    .restart local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfHint"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    .line 85
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    .line 86
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfLockRelease"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 88
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Class;

    .end local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 89
    .restart local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfLockReleaseHandler"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mReleaseHandlerFunc:Ljava/lang/reflect/Method;

    .line 91
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Class;

    .end local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 92
    .restart local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfIOPrefetchStart"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    .line 94
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    .line 95
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfIOPrefetchStop"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    .line 97
    sget v2, Lcom/android/systemui/util/QcomBoostFramework;->mIopv2:I

    if-ne v2, v5, :cond_1

    .line 98
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Class;

    .end local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v2, v0, v4

    .line 99
    .restart local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfUXEngine_events"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mUXEngine_events:Ljava/lang/reflect/Method;

    .line 102
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Class;

    .end local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 103
    .restart local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfUXEngine_trigger"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mUXEngine_trigger:Ljava/lang/reflect/Method;

    .line 107
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/util/QcomBoostFramework;->mIsLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "argClasses":[Ljava/lang/Class;
    :cond_2
    :goto_0
    monitor-exit v3

    .line 116
    :try_start_2
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 117
    sget-object v2, Lcom/android/systemui/util/QcomBoostFramework;->mPerfClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/util/QcomBoostFramework;->mPerf:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    :cond_3
    :goto_1
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BoostFramework() : Exception_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 120
    :catch_1
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BoostFramework() : Exception_2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public perfHint(ILjava/lang/String;II)I
    .locals 8
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData1"    # I
    .param p4, "userData2"    # I

    .prologue
    .line 188
    sget-boolean v3, Lcom/android/systemui/util/QcomBoostFramework;->isQcom:Z

    if-nez v3, :cond_0

    .line 189
    const/4 v3, -0x1

    return v3

    .line 191
    :cond_0
    const/4 v1, -0x1

    .line 193
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Lcom/android/systemui/util/QcomBoostFramework;->mPerfHintFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/util/QcomBoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 198
    :goto_0
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfLockRelease()I
    .locals 6

    .prologue
    .line 142
    sget-boolean v3, Lcom/android/systemui/util/QcomBoostFramework;->isQcom:Z

    if-nez v3, :cond_0

    .line 143
    const/4 v3, -0x1

    return v3

    .line 145
    :cond_0
    const/4 v1, -0x1

    .line 147
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Lcom/android/systemui/util/QcomBoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/util/QcomBoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
