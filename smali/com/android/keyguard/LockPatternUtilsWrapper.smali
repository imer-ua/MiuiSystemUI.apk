.class public Lcom/android/keyguard/LockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/LockPatternUtilsWrapper$-boolean_checkPassword_java_lang_String_password_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0;,
        Lcom/android/keyguard/LockPatternUtilsWrapper$-boolean_checkPattern_java_util_List_pattern_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0;
    }
.end annotation


# static fields
.field private static sUserId:I


# instance fields
.field private final mUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static synthetic -com_android_keyguard_LockPatternUtilsWrapper-mthref-0(Lcom/android/keyguard/OnCheckForUsersCallback;)V
    .locals 0

    .prologue
    .line 98
    invoke-interface {p0}, Lcom/android/keyguard/OnCheckForUsersCallback;->onEarlyMatched()V

    return-void
.end method

.method static synthetic -com_android_keyguard_LockPatternUtilsWrapper-mthref-1(Lcom/android/keyguard/OnCheckForUsersCallback;)V
    .locals 0

    .prologue
    .line 120
    invoke-interface {p0}, Lcom/android/keyguard/OnCheckForUsersCallback;->onEarlyMatched()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 19
    return-void
.end method

.method public static getCurrentUser()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/keyguard/LockPatternUtilsWrapper;->sUserId:I

    return v0
.end method

.method private getCurrentUserId()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/android/keyguard/LockPatternUtilsWrapper;->sUserId:I

    return v0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/keyguard/KeyguardRequestThrottledException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const-class v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v1, Lcom/android/keyguard/KeyguardRequestThrottledException;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardRequestThrottledException;-><init>(I)V

    throw v1
.end method

.method public checkPassword(Ljava/lang/String;ILcom/android/keyguard/OnCheckForUsersCallback;)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/keyguard/OnCheckForUsersCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/keyguard/KeyguardRequestThrottledException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/keyguard/LockPatternUtilsWrapper$-boolean_checkPassword_java_lang_String_password_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0;

    invoke-direct {v2, p3}, Lcom/android/keyguard/LockPatternUtilsWrapper$-boolean_checkPassword_java_lang_String_password_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0;-><init>(Lcom/android/keyguard/OnCheckForUsersCallback;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const-class v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    new-instance v1, Lcom/android/keyguard/KeyguardRequestThrottledException;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardRequestThrottledException;-><init>(I)V

    throw v1
.end method

.method public checkPattern(Ljava/util/List;I)Z
    .locals 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/keyguard/KeyguardRequestThrottledException;
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;I)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const-class v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    new-instance v1, Lcom/android/keyguard/KeyguardRequestThrottledException;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardRequestThrottledException;-><init>(I)V

    throw v1
.end method

.method public checkPattern(Ljava/util/List;ILcom/android/keyguard/OnCheckForUsersCallback;)Z
    .locals 4
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/keyguard/OnCheckForUsersCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I",
            "Lcom/android/keyguard/OnCheckForUsersCallback;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/keyguard/KeyguardRequestThrottledException;
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/keyguard/LockPatternUtilsWrapper$-boolean_checkPattern_java_util_List_pattern_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0;

    invoke-direct {v2, p3}, Lcom/android/keyguard/LockPatternUtilsWrapper$-boolean_checkPattern_java_util_List_pattern_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0;-><init>(Lcom/android/keyguard/OnCheckForUsersCallback;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const-class v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    new-instance v1, Lcom/android/keyguard/KeyguardRequestThrottledException;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardRequestThrottledException;-><init>(I)V

    throw v1
.end method

.method public getActivePasswordQuality()I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getActivePasswordQuality(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public isOwnerInfoEnabled()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/keyguard/LockPatternUtilsWrapper;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method
