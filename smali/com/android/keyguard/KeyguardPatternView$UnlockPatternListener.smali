.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/MiuiLockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;IZIZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I
    .param p4, "isValidPattern"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternChecked(IZIZ)V

    return-void
.end method

.method private constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method

.method private onPatternChecked(IZIZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I
    .param p4, "isValidPattern"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 306
    if-eqz p2, :cond_2

    .line 307
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardPatternView;->allowUnlock(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardPatternView;->switchUser(I)V

    .line 311
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->-get3(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardCompatibilityHelperForP;->sanitizePassword(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 312
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->-get0(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, p1, v5, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 313
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/MiuiLockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->Correct:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/MiuiLockPatternView;->setDisplayMode(Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;)V

    .line 314
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->-get0(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, v5, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 315
    const-string/jumbo v2, "pw"

    invoke-static {v2}, Lcom/android/keyguard/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    .line 305
    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/MiuiLockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;->Wrong:Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/MiuiLockPatternView;->setDisplayMode(Lcom/android/keyguard/MiuiLockPatternView$DisplayMode;)V

    .line 318
    if-eqz p4, :cond_3

    .line 319
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->-get0(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, p1, v4, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 320
    if-lez p3, :cond_3

    .line 321
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->-get3(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 323
    .local v0, "deadline":J
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->-wrap1(Lcom/android/keyguard/KeyguardPatternView;J)V

    .line 326
    .end local v0    # "deadline":J
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardPatternView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 327
    if-nez p3, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/MiuiLockPatternView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardPatternView;->-get1(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/keyguard/MiuiLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get0(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 237
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 243
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/MiuiLockPatternView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->disableInput()V

    .line 244
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get5(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get5(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 248
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 249
    .local v0, "userId":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/MiuiLockPatternView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->enableInput()V

    .line 251
    invoke-direct {p0, v0, v2, v2, v2}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternChecked(IZIZ)V

    .line 252
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    .line 257
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    .line 260
    new-instance v2, Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardPatternView;->-get3(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 261
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardPatternView;->-get3(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 263
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardPatternView;->-get2(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v4

    .line 264
    new-instance v5, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;

    invoke-direct {v5, p0, v0}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;I)V

    .line 259
    invoke-static {v2, v3, p1, v4, v5}, Lcom/android/keyguard/LockPatternChecker;->checkPatternForUsers(Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Landroid/content/Context;Lcom/android/keyguard/OnCheckForUsersCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->-set0(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 299
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 300
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get0(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 242
    :cond_3
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->-get4(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/MiuiLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->-get1(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method
