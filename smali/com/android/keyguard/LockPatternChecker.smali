.class public final Lcom/android/keyguard/LockPatternChecker;
.super Ljava/lang/Object;
.source "LockPatternChecker.java"


# static fields
.field private static final CURRENT_DEVICE:Ljava/lang/String;

.field private static final IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/LockPatternChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z
    .locals 1
    .param p0, "mLockPatternUtilsWrapper"    # Lcom/android/keyguard/LockPatternUtilsWrapper;
    .param p1, "userId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/keyguard/LockPatternChecker;->isPasswordEnable(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z
    .locals 1
    .param p0, "mLockPatternUtilsWrapper"    # Lcom/android/keyguard/LockPatternUtilsWrapper;
    .param p1, "userId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/keyguard/LockPatternChecker;->isPatternPasswordEnable(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(ILcom/android/internal/widget/LockPatternUtils;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    invoke-static {p0, p1}, Lcom/android/keyguard/LockPatternChecker;->shouldCheck(ILcom/android/internal/widget/LockPatternUtils;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/LockPatternChecker;->computeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "sucess"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/LockPatternChecker;->computeAttemptTimes(Landroid/content/Context;IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "miui_keyguard_password"

    sput-object v0, Lcom/android/keyguard/LockPatternChecker;->TAG:Ljava/lang/String;

    .line 28
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "libra"

    sget-object v1, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "aqua"

    sget-object v1, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string/jumbo v0, "kenzo"

    sget-object v1, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    const-string/jumbo v0, "kate"

    sget-object v1, Lcom/android/keyguard/LockPatternChecker;->CURRENT_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 29
    :goto_0
    sput-boolean v0, Lcom/android/keyguard/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    .line 25
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasswordForUsers(Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Landroid/content/Context;Lcom/android/keyguard/OnCheckForUsersCallback;)Landroid/os/AsyncTask;
    .locals 6
    .param p0, "lockPatternUtilsWrapper"    # Lcom/android/keyguard/LockPatternUtilsWrapper;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/android/keyguard/OnCheckForUsersCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/LockPatternUtilsWrapper;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/OnCheckForUsersCallback;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/android/keyguard/LockPatternChecker$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/LockPatternChecker$2;-><init>(Lcom/android/keyguard/LockPatternUtilsWrapper;Ljava/lang/String;Lcom/android/keyguard/OnCheckForUsersCallback;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 171
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    return-object v0
.end method

.method public static checkPatternForUsers(Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Landroid/content/Context;Lcom/android/keyguard/OnCheckForUsersCallback;)Landroid/os/AsyncTask;
    .locals 6
    .param p0, "lockPatternUtilsWrapper"    # Lcom/android/keyguard/LockPatternUtilsWrapper;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/android/keyguard/OnCheckForUsersCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/LockPatternUtilsWrapper;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/OnCheckForUsersCallback;",
            ")",
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    new-instance v0, Lcom/android/keyguard/LockPatternChecker$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/LockPatternChecker$1;-><init>(Ljava/util/List;Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/keyguard/OnCheckForUsersCallback;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 104
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-object v0
.end method

.method private static computeAttemptTimes(Landroid/content/Context;IZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "sucess"    # Z

    .prologue
    .line 215
    sget-boolean v1, Lcom/android/keyguard/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    if-nez v1, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 221
    .local v0, "times":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 222
    sget-object v2, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    .line 221
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 214
    return-void

    .line 218
    .end local v0    # "times":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 219
    sget-object v2, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    const/4 v3, 0x0

    .line 218
    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .restart local v0    # "times":I
    goto :goto_0
.end method

.method private static computeRetryTimeout(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    .prologue
    const/16 v6, 0x8c

    const/16 v5, 0x1e

    const/4 v4, 0x0

    .line 245
    sget-boolean v2, Lcom/android/keyguard/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    if-nez v2, :cond_0

    .line 246
    return v4

    .line 248
    :cond_0
    const/4 v1, 0x0

    .line 249
    .local v1, "timeout":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 250
    sget-object v3, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    .line 249
    invoke-static {v2, v3, v4, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 252
    .local v0, "failedAttempts":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 253
    const/16 v1, 0x7530

    .line 262
    :cond_1
    :goto_0
    if-lez v1, :cond_2

    .line 265
    const/16 v2, 0x8

    .line 264
    invoke-static {p1, v2, p2}, Lcom/android/internal/widget/LockPatternUtilsCompat;->requireStrongAuth(Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 268
    :cond_2
    return v1

    .line 254
    :cond_3
    const/16 v2, 0xa

    if-lt v0, v2, :cond_4

    if-ge v0, v5, :cond_4

    .line 255
    const/16 v1, 0x7530

    .line 254
    goto :goto_0

    .line 256
    :cond_4
    if-lt v0, v5, :cond_5

    if-ge v0, v6, :cond_5

    .line 257
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v4, v0, -0x1e

    int-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x40dd4c0000000000L    # 30000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 256
    goto :goto_0

    .line 258
    :cond_5
    if-lt v0, v6, :cond_1

    .line 259
    const v1, 0x5265c00

    goto :goto_0
.end method

.method private static isPasswordEnable(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z
    .locals 5
    .param p0, "mLockPatternUtilsWrapper"    # Lcom/android/keyguard/LockPatternUtilsWrapper;
    .param p1, "userId"    # I

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality(I)I

    move-result v1

    .line 183
    .local v1, "passwordQuality":I
    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_0

    .line 184
    const/high16 v2, 0x50000

    if-ne v1, v2, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x1

    .line 188
    .local v0, "isEnable":Z
    :goto_0
    sget-object v3, Lcom/android/keyguard/LockPatternChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "check password enable for userId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_3

    const-string/jumbo v2, "   enable"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v0

    .line 185
    .end local v0    # "isEnable":Z
    :cond_1
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_0

    .line 186
    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_0

    .line 187
    const/high16 v2, 0x30000

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "isEnable":Z
    goto :goto_0

    .end local v0    # "isEnable":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isEnable":Z
    goto :goto_0

    .line 188
    :cond_3
    const-string/jumbo v2, "   disable"

    goto :goto_1
.end method

.method private static isPatternPasswordEnable(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z
    .locals 4
    .param p0, "mLockPatternUtilsWrapper"    # Lcom/android/keyguard/LockPatternUtilsWrapper;
    .param p1, "userId"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 177
    .local v0, "isEnable":Z
    :goto_0
    sget-object v2, Lcom/android/keyguard/LockPatternChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check pattern password enable for userId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string/jumbo v1, "   enable"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v0

    .line 176
    .end local v0    # "isEnable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isEnable":Z
    goto :goto_0

    .line 177
    :cond_1
    const-string/jumbo v1, "   disable"

    goto :goto_1
.end method

.method private static shouldCheck(ILcom/android/internal/widget/LockPatternUtils;)Z
    .locals 6
    .param p0, "userId"    # I
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v0, 0x1

    .line 201
    sget-boolean v1, Lcom/android/keyguard/LockPatternChecker;->IS_NEED_COMPUTE_ATTEMPT_TIMES_DEVICE:Z

    if-nez v1, :cond_0

    .line 202
    return v0

    .line 204
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
