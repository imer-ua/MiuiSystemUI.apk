.class public Lcom/android/systemui/recents/ScreenPinningRequest;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
    }
.end annotation


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private taskId:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    .line 58
    return-void
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 99
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 102
    const/16 v3, 0x7e8

    .line 103
    const v4, 0x1000108

    .line 108
    const/4 v5, -0x3

    move v2, v1

    .line 99
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 109
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 110
    const-string/jumbo v1, "ScreenPinningConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    return-object v0
.end method


# virtual methods
.method public clearPrompt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 69
    iput-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 66
    :cond_0
    return-void
.end method

.method public getRequestLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p1, "isLandscape"    # Z

    .prologue
    const/4 v2, -0x2

    .line 127
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    if-eqz p1, :cond_0

    const/16 v0, 0x15

    .line 127
    :goto_0
    invoke-direct {v1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1

    .line 131
    :cond_0
    const/16 v0, 0x51

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x91202a9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-ne v1, p1, :cond_1

    .line 120
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    invoke-static {v1}, Landroid/app/ActivityManagerCompat;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V

    .line 116
    return-void

    .line 121
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->onConfigurationChanged()V

    .line 92
    :cond_0
    return-void
.end method

.method public showPrompt(IZ)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "allowCancel"    # Z

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    .line 83
    new-instance v2, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 85
    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->setSystemUiVisibility(I)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 89
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void

    .line 76
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
