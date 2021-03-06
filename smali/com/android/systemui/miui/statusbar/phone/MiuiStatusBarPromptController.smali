.class public Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;
.super Ljava/lang/Object;
.source "MiuiStatusBarPromptController.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;
    }
.end annotation


# instance fields
.field private mHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

.field private mPromptStateChangedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecorderState:I

.field private mRecordingPausedTime:J

.field private mRecordingStartTime:J

.field private mSilentModeDefault:I

.field private mStatusBarModeState:I

.field private mStatusBarPrompts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;",
            ">;"
        }
    .end annotation
.end field

.field private mTopStatusBarModeState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showPrompt()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    .line 36
    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mTopStatusBarModeState:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mHandler:Ljava/lang/ref/WeakReference;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mPromptStateChangedListeners:Ljava/util/Map;

    .line 20
    return-void
.end method

.method private dispatchShowPrompt()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$1;-><init>(Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showPrompt()V

    goto :goto_0

    .line 355
    :cond_1
    const-string/jumbo v0, "MiuiStatusBarPrompt"

    const-string/jumbo v1, "dispatchShowPrompt abandoned, not in main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTopPriorityState()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    const/16 v0, 0x20

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 379
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    return v0

    .line 378
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_1
    return v2
.end method

.method private setSilenceWhenRecording(Z)V
    .locals 6
    .param p1, "recordingSilent"    # Z

    .prologue
    const/4 v5, -0x1

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 294
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 295
    .local v2, "silentMode":I
    if-eqz p1, :cond_3

    .line 296
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    .line 297
    .local v1, "isSilentDefault":Z
    :goto_0
    iput v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    .line 298
    if-eq p1, v1, :cond_1

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 289
    .end local v1    # "isSilentDefault":Z
    :cond_1
    :goto_1
    return-void

    .line 296
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isSilentDefault":Z
    goto :goto_0

    .line 301
    .end local v1    # "isSilentDefault":Z
    :cond_3
    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    if-eq v3, v5, :cond_1

    .line 303
    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    if-eq v3, v2, :cond_4

    .line 304
    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 306
    :cond_4
    iput v5, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    goto :goto_1
.end method

.method private showPrompt()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getTopPriorityState()I

    move-result v3

    .line 327
    .local v3, "topState":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToRecorderView(Z)V

    .line 328
    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToSafeBar(Z)V

    .line 329
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToDriveMode(Z)V

    .line 330
    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToInCall(Z)V

    .line 331
    if-ne v3, v5, :cond_4

    move v4, v5

    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToMulti(Z)V

    .line 332
    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    move v4, v5

    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToSosBar(Z)V

    .line 334
    if-nez v3, :cond_6

    const/4 v0, 0x1

    .line 335
    .local v0, "isNormalMode":Z
    :goto_6
    iget v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mTopStatusBarModeState:I

    if-nez v4, :cond_7

    :goto_7
    xor-int v4, v0, v5

    if-eqz v4, :cond_8

    .line 337
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mPromptStateChangedListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;

    .line 338
    .local v1, "listener":Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;
    invoke-interface {v1, v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;->onPromptStateChanged(Z)V

    goto :goto_8

    .end local v0    # "isNormalMode":Z
    .end local v1    # "listener":Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    move v4, v6

    .line 327
    goto :goto_0

    :cond_1
    move v4, v6

    .line 328
    goto :goto_1

    :cond_2
    move v4, v6

    .line 329
    goto :goto_2

    :cond_3
    move v4, v6

    .line 330
    goto :goto_3

    :cond_4
    move v4, v6

    .line 331
    goto :goto_4

    :cond_5
    move v4, v6

    .line 332
    goto :goto_5

    .line 334
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "isNormalMode":Z
    goto :goto_6

    :cond_7
    move v5, v6

    .line 335
    goto :goto_7

    .line 341
    :cond_8
    iput v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mTopStatusBarModeState:I

    .line 325
    return-void
.end method


# virtual methods
.method public addPromptStateChangedListener(Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mPromptStateChangedListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public addStatusBarPrompt(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;ILcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "disableFlags"    # I
    .param p5, "listener"    # Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptImpl;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, p1, p5}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->addPromptStateChangedListener(Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V

    .line 53
    return-void
.end method

.method public blockClickAction()Z
    .locals 3

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 197
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->blockClickAction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 199
    const/4 v2, 0x1

    return v2

    .line 202
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public clearState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->dispatchShowPrompt()V

    .line 366
    return-void
.end method

.method public dealWithRecordState()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    if-eqz v3, :cond_0

    .line 312
    const-string/jumbo v2, ""

    .line 313
    .local v2, "title":Ljava/lang/String;
    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    if-ne v3, v9, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x9100516

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingStartTime:J

    sub-long v0, v4, v6

    .line 316
    .local v0, "duration":J
    invoke-virtual {p0, v2, v9, v0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToRecorderView(Ljava/lang/String;ZJ)V

    .line 310
    .end local v0    # "duration":J
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 317
    .restart local v2    # "title":Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x9100517

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    iget-wide v4, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingPausedTime:J

    iget-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingStartTime:J

    sub-long v0, v4, v6

    .line 320
    .restart local v0    # "duration":J
    invoke-virtual {p0, v2, v8, v0, v1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToRecorderView(Ljava/lang/String;ZJ)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 216
    .local v1, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 217
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 218
    return-object v0

    .line 221
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_1
    return-object v4
.end method

.method public handleClickAction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->handleClickAction()V

    .line 209
    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mLastClickablePrompt:Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 206
    :cond_0
    return-void
.end method

.method public hideReturnToInCallScreenButton()V
    .locals 3

    .prologue
    .line 167
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    .line 168
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 169
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->hideReturnToInCallScreenButton()V

    goto :goto_0

    .line 166
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public hideReturnToRecorderView()V
    .locals 3

    .prologue
    .line 71
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    .line 72
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 73
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->hideReturnToRecorderView()V

    goto :goto_0

    .line 70
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public hideSafePayStatusBar()V
    .locals 3

    .prologue
    .line 102
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    .line 103
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 104
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->hideSafePayStatusBar()V

    goto :goto_0

    .line 101
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public hideSosStatusBar()V
    .locals 3

    .prologue
    .line 118
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    .line 119
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 120
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->hideSosStatusBar()V

    goto :goto_0

    .line 117
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public isShowingState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 374
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeReturnToInCallScreenButtonGone()V
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 183
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->makeReturnToInCallScreenButtonGone()V

    goto :goto_0

    .line 181
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public makeReturnToInCallScreenButtonVisible()V
    .locals 3

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 176
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->makeReturnToInCallScreenButtonVisible()V

    goto :goto_0

    .line 174
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mHandler:Ljava/lang/ref/WeakReference;

    .line 48
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->isShowingState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarModeState:I

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->dispatchShowPrompt()V

    .line 359
    return-void
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "what"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "ext"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 225
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.action_status_recorder"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    invoke-direct {p0, v10}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setSilenceWhenRecording(Z)V

    .line 229
    iput v10, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->hideReturnToRecorderView()V

    goto :goto_0

    .line 233
    :pswitch_1
    iput v10, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->hideReturnToRecorderView()V

    goto :goto_0

    .line 237
    :pswitch_2
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_duration"

    const-wide/16 v8, 0x0

    invoke-virtual {p3, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 238
    .local v2, "d":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingPausedTime:J

    .line 239
    iget-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingPausedTime:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecordingStartTime:J

    .line 240
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_title"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "title":Ljava/lang/String;
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_timer_on_off"

    .line 241
    invoke-virtual {p3, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 243
    .local v1, "enable":Z
    if-eqz v1, :cond_1

    const/4 v6, 0x1

    :goto_1
    iput v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mRecorderState:I

    .line 244
    invoke-virtual {p0, v5, v1, v2, v3}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToRecorderView(Ljava/lang/String;ZJ)V

    goto :goto_0

    .line 243
    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    .line 247
    .end local v1    # "enable":Z
    .end local v2    # "d":J
    .end local v5    # "title":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_silent_mode_changed_by_user"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 248
    .local v0, "changedByUser":Z
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_recorder_enter_silent_mode"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 249
    .local v4, "enterSilent":Z
    if-eqz v0, :cond_2

    .line 250
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mSilentModeDefault:I

    goto :goto_0

    .line 252
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setSilenceWhenRecording(Z)V

    goto :goto_0

    .line 258
    .end local v0    # "changedByUser":Z
    .end local v4    # "enterSilent":Z
    :cond_3
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.action_status_safepay"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 259
    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 261
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->hideSafePayStatusBar()V

    goto :goto_0

    .line 266
    :pswitch_6
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showSafePayStatusBar(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 271
    :cond_4
    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.action_status_sos"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 272
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 277
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->hideSosStatusBar()V

    goto :goto_0

    .line 274
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showSosStatusBar()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 259
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 272
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public showReturnToDriveMode(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 134
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToDriveMode(Z)V

    goto :goto_0

    .line 132
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public showReturnToDriveModeView(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "mask_mode"    # Z

    .prologue
    const/4 v2, 0x2

    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 146
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToDriveModeView(ZZ)V

    goto :goto_1

    .line 143
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    .end local v1    # "statusBarPrompt$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->clearState(I)V

    goto :goto_0

    .line 139
    .restart local v1    # "statusBarPrompt$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public showReturnToInCall(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 153
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToInCall(Z)V

    goto :goto_0

    .line 151
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public showReturnToInCallScreenButton(Ljava/lang/String;J)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "baseTime"    # J

    .prologue
    .line 159
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    .line 160
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 161
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToInCallScreenButton(Ljava/lang/String;J)V

    goto :goto_0

    .line 158
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public showReturnToMulti(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 190
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToMulti(Z)V

    goto :goto_0

    .line 188
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public showReturnToRecorderView(Ljava/lang/String;ZJ)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "duration"    # J

    .prologue
    .line 79
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    .line 80
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 81
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToRecorderView(Ljava/lang/String;ZJ)V

    goto :goto_0

    .line 78
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public showReturnToRecorderView(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 64
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 65
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToRecorderView(Z)V

    goto :goto_0

    .line 63
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public showReturnToSafeBar(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 88
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToSafeBar(Z)V

    goto :goto_0

    .line 86
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public showReturnToSosBar(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 127
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showReturnToSosBar(Z)V

    goto :goto_0

    .line 125
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public showSafePayStatusBar(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "ext"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    .line 95
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 96
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showSafePayStatusBar(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 93
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method

.method public showSosStatusBar()V
    .locals 3

    .prologue
    .line 110
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->setState(I)V

    .line 111
    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->mStatusBarPrompts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "statusBarPrompt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;

    .line 112
    .local v0, "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    invoke-interface {v0}, Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;->showSosStatusBar()V

    goto :goto_0

    .line 109
    .end local v0    # "statusBarPrompt":Lcom/android/systemui/miui/statusbar/phone/IMiuiStatusBarPrompt;
    :cond_0
    return-void
.end method
