.class public Lcom/android/systemui/fsgesture/GestureStubView;
.super Landroid/widget/FrameLayout;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/GestureStubView$1;,
        Lcom/android/systemui/fsgesture/GestureStubView$2;,
        Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;,
        Lcom/android/systemui/fsgesture/GestureStubView$H;,
        Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-fsgesture-GestureStubView$EventPositionSwitchesValues:[I

.field private static isUserSetUp:Z


# instance fields
.field private mAnimating:Z

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAssistX1:F

.field private mAssistX2:F

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrAction:I

.field private mCurrX:F

.field private mCurrY:F

.field private mDensity:F

.field private mDisableQuickSwitch:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDownX:F

.field private mDownY:F

.field private mEarWidth:I

.field private mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field private mGestureStubDefaultSize:I

.field private mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

.field private mGestureStubPos:I

.field private mGestureStubSize:I

.field private mGesturesBackCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

.field private mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

.field private mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

.field private mIsGestureAnimationEnabled:Z

.field private mIsGestureStarted:Z

.field private mKeepHidden:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLocation:[I

.field private mNeedAjustArrowPosition:Z

.field private mNeedRender:Z

.field private mNotchHeight:I

.field private mNotchWidth:I

.field private mPendingResetStatus:Z

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSwipeInRightDirection:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/fsgesture/GestureStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GesturesBackController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/fsgesture/GestureStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/fsgesture/GestureStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/fsgesture/GestureStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAjustArrowPosition:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/fsgesture/GestureStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/fsgesture/GestureStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrAction:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/fsgesture/GestureStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/fsgesture/GestureStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/fsgesture/GestureStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisableQuickSwitch:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/fsgesture/GestureStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownX:F

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    return-object v0
.end method

.method private static synthetic -getcom-android-systemui-fsgesture-GestureStubView$EventPositionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/fsgesture/GestureStubView;->-com-android-systemui-fsgesture-GestureStubView$EventPositionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/fsgesture/GestureStubView;->-com-android-systemui-fsgesture-GestureStubView$EventPositionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->values()[Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/systemui/fsgesture/GestureStubView;->-com-android-systemui-fsgesture-GestureStubView$EventPositionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/fsgesture/GestureStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mPendingResetStatus:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/fsgesture/GestureStubView;I)Z
    .locals 1
    .param p1, "expectValue"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->isInSpeedLimit(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/fsgesture/GestureStubView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->isSwipeRightInDirection()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->updateAssistXPosition()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/fsgesture/GestureStubView;F)[I
    .locals 1
    .param p1, "currY"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->getParams(F)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->adaptRotation()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->clearMessages()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->hideGestureStub()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/fsgesture/GestureStubView;I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->injectKeyEvent(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/fsgesture/GestureStubView;I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->injectMotionEvent(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->renderView()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/fsgesture/GestureStubView;Ljava/lang/String;)V
    .locals 0
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/GestureStubView;-><init>(Landroid/content/Context;I)V

    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureStubSize"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 335
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLocation:[I

    .line 105
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrAction:I

    .line 106
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 107
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    .line 108
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 109
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 110
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 112
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 113
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    .line 114
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    .line 118
    iput v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    .line 119
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 120
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAjustArrowPosition:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisableQuickSwitch:Z

    .line 136
    new-instance v0, Lcom/android/systemui/fsgesture/GestureStubView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/GestureStubView$1;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 162
    new-instance v0, Lcom/android/systemui/fsgesture/GestureStubView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/GestureStubView$2;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 161
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

    .line 438
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 337
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    .line 339
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 340
    iput v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 342
    new-instance v0, Lcom/android/systemui/fsgesture/GestureStubView$H;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/fsgesture/GestureStubView$H;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;Lcom/android/systemui/fsgesture/GestureStubView$H;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 343
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 345
    invoke-direct {p0, p2}, Lcom/android/systemui/fsgesture/GestureStubView;->initGestureStubSize(I)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    new-instance v0, Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayListener:Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

    .line 348
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 350
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 352
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 354
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    .line 355
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/GestureStubView;->setVisibility(I)V

    .line 334
    return-void
.end method

.method private adaptNotch()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 511
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    if-lez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 532
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 533
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAjustArrowPosition:Z

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 514
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_1

    .line 515
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 516
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAjustArrowPosition:Z

    goto :goto_0

    .line 517
    :cond_1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    if-ne v0, v2, :cond_0

    .line 518
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 519
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAjustArrowPosition:Z

    goto :goto_0

    .line 523
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    if-ne v0, v2, :cond_2

    .line 524
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 525
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAjustArrowPosition:Z

    goto :goto_0

    .line 526
    :cond_2
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_0

    .line 527
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 528
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAjustArrowPosition:Z

    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private adaptRotation()V
    .locals 4

    .prologue
    .line 974
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 975
    .local v0, "currentRotation":I
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    if-eq v0, v2, :cond_0

    .line 976
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    .line 977
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    .line 978
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    if-eqz v2, :cond_0

    .line 979
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 980
    .local v1, "realSize":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 981
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 982
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setDisplayWidth(I)V

    .line 973
    .end local v1    # "realSize":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView$H;->removeMessages(I)V

    .line 796
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView$H;->removeMessages(I)V

    .line 794
    return-void
.end method

.method private getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 654
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 657
    const/16 v3, 0x7eb

    .line 658
    const/16 v4, 0x128

    move v2, v1

    .line 654
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 662
    .local v0, "gestureStubParams":Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0, v5}, Landroid/view/WindowManagerCompat;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    .line 664
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 665
    return-object v0
.end method

.method private getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 10

    .prologue
    const v3, 0x3f19999a    # 0.6f

    const/4 v5, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 608
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    if-ne v0, v9, :cond_0

    .line 609
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 610
    .local v2, "h":I
    const/4 v1, -0x1

    .line 619
    .local v1, "w":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_3

    .line 620
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 623
    const/16 v3, 0x7eb

    .line 624
    const/16 v4, 0x128

    .line 620
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 628
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v5}, Landroid/view/WindowManagerCompat;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    .line 630
    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/GestureStubView;->setBackgroundColor(I)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 637
    :goto_1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    if-ne v0, v9, :cond_4

    .line 638
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x50

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 639
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "GestureStubBottom"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    .line 612
    .end local v1    # "w":I
    .end local v2    # "h":I
    :cond_0
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 613
    .restart local v1    # "w":I
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    if-ne v0, v9, :cond_2

    .line 614
    :cond_1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v2, v0

    .line 613
    .restart local v2    # "h":I
    goto :goto_0

    .line 616
    .end local v2    # "h":I
    :cond_2
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v2, v0

    .restart local v2    # "h":I
    goto :goto_0

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 634
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 643
    :cond_4
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_5

    move v8, v5

    .line 644
    .local v8, "isLeft":Z
    :cond_5
    if-eqz v8, :cond_7

    const/4 v6, 0x3

    .line 645
    .local v6, "gravityHorizontal":I
    :goto_2
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    if-ne v0, v9, :cond_8

    .line 646
    :cond_6
    const/16 v7, 0x50

    .line 647
    .local v7, "gravityVertical":I
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    or-int v3, v6, v7

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 648
    iget-object v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_9

    const-string/jumbo v0, "GestureStubLeft"

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    .line 644
    .end local v6    # "gravityHorizontal":I
    .end local v7    # "gravityVertical":I
    :cond_7
    const/4 v6, 0x5

    .restart local v6    # "gravityHorizontal":I
    goto :goto_2

    .line 646
    :cond_8
    const/16 v7, 0x10

    .restart local v7    # "gravityVertical":I
    goto :goto_3

    .line 648
    :cond_9
    const-string/jumbo v0, "GestureStubRight"

    goto :goto_4
.end method

.method public static getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/recents/model/Task;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startActivity"    # Z
    .param p2, "position"    # I

    .prologue
    .line 268
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 269
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 270
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 271
    .local v5, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 272
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    .line 275
    .local v1, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    return-object v12

    .line 278
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    .line 279
    .local v6, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v6, :cond_2

    const/4 v12, 0x0

    return-object v12

    .line 281
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 282
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v11, 0x0

    .line 284
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 285
    .local v9, "taskCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v12, v9, -0x1

    if-ge v2, v12, :cond_3

    .line 286
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 287
    .local v8, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v12, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v12, v13, :cond_8

    .line 288
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 293
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    if-nez v11, :cond_4

    const/4 v12, 0x1

    if-lt v9, v12, :cond_4

    .line 294
    const-string/jumbo v12, "com.miui.home"

    iget-object v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 293
    if-eqz v12, :cond_4

    .line 295
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 298
    :cond_4
    if-eqz v11, :cond_5

    iget-object v12, v11, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_5

    .line 299
    iget-object v12, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v13, v11, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 300
    const/4 v15, 0x1

    .line 299
    invoke-virtual {v4, v12, v13, v14, v15}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v11, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 302
    :cond_5
    if-eqz p1, :cond_7

    if-eqz v11, :cond_7

    .line 303
    const/4 v3, 0x0

    .line 304
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    if-nez p2, :cond_9

    .line 306
    const v12, 0x90500b5

    .line 307
    const v13, 0x90500b6

    .line 305
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 313
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    :cond_6
    :goto_1
    iget-object v12, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v13, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v12, v13, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 315
    :cond_7
    return-object v11

    .line 285
    .restart local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    .restart local v3    # "launchOpts":Landroid/app/ActivityOptions;
    :cond_9
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 310
    const v12, 0x90500b7

    .line 311
    const v13, 0x90500b8

    .line 309
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1
.end method

.method private getParams(F)[I
    .locals 10
    .param p1, "currY"    # F

    .prologue
    const/high16 v9, 0x42100000    # 36.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 367
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 368
    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    .line 374
    .local v1, "position":Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
    :goto_0
    const/4 v2, 0x3

    new-array v0, v2, [I

    .line 375
    .local v0, "params":[I
    invoke-static {}, Lcom/android/systemui/fsgesture/GestureStubView;->-getcom-android-systemui-fsgesture-GestureStubView$EventPositionSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 392
    :goto_1
    return-object v0

    .line 369
    .end local v0    # "params":[I
    .end local v1    # "position":Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
    :cond_0
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 370
    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    .restart local v1    # "position":Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
    goto :goto_0

    .line 372
    .end local v1    # "position":Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
    :cond_1
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    const/high16 v4, 0x43240000    # 164.0f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    .restart local v1    # "position":Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
    goto :goto_0

    .end local v1    # "position":Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
    :cond_2
    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    .restart local v1    # "position":Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
    goto :goto_0

    .line 377
    .restart local v0    # "params":[I
    :pswitch_0
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    aput v2, v0, v5

    .line 378
    aput v5, v0, v7

    .line 379
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    aput v2, v0, v8

    goto :goto_1

    .line 382
    :pswitch_1
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    aput v2, v0, v5

    .line 383
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v7

    .line 384
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    const/high16 v4, 0x42580000    # 54.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    aput v2, v0, v8

    goto :goto_1

    .line 387
    :pswitch_2
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aput v2, v0, v5

    .line 388
    aput v5, v0, v7

    .line 389
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    add-float/2addr v2, v6

    float-to-int v2, v2

    aput v2, v0, v8

    goto :goto_1

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private hideGestureStub()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    .line 427
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 429
    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 431
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/GestureStubView;->setVisibility(I)V

    .line 434
    const-string/jumbo v0, "GestureStubView"

    const-string/jumbo v1, "hideGestureStub"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method private initGestureStubSize(I)V
    .locals 6
    .param p1, "gestureStubSize"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->initScreenSizeAndDensity(I)V

    .line 468
    const-string/jumbo v2, "ro.miui.notch"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 469
    .local v0, "mIsNotch":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 471
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f026d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    .line 472
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    :goto_1
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    .line 474
    :cond_0
    new-instance v1, Lcom/android/systemui/fsgesture/GesturesBackController;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackCallback:Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;

    .line 475
    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    iget v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    iget v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    sub-int/2addr v4, v5

    .line 474
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/fsgesture/GesturesBackController;-><init>(Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;II)V

    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->adaptRotation()V

    .line 466
    return-void

    .end local v0    # "mIsNotch":Z
    :cond_1
    move v0, v1

    .line 468
    goto :goto_0

    .line 472
    .restart local v0    # "mIsNotch":Z
    :cond_2
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    goto :goto_1
.end method

.method private initScreenSizeAndDensity(I)V
    .locals 5
    .param p1, "gestureStubSize"    # I

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0x36

    .line 480
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 481
    .local v0, "realSize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 482
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 484
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_0

    .line 485
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 486
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    .line 492
    :goto_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 493
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    sparse-switch v1, :sswitch_data_0

    .line 501
    iput v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    iput v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 507
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 479
    return-void

    .line 488
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 489
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    goto :goto_0

    .line 495
    :sswitch_0
    iput v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    iput v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 498
    :sswitch_1
    iput v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    iput v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 504
    :cond_1
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 493
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d0 -> :sswitch_1
        0x438 -> :sswitch_0
    .end sparse-switch
.end method

.method private injectKeyEvent(I)V
    .locals 20
    .param p1, "keyCode"    # I

    .prologue
    .line 830
    const-string/jumbo v2, "GestureStubView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "injectKeyEvent keyCode:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 834
    .local v4, "now":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    .line 835
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 836
    const/16 v14, 0x8

    const/16 v15, 0x101

    move-wide v6, v4

    move/from16 v9, p1

    .line 834
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 837
    .local v3, "down":Landroid/view/KeyEvent;
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    .line 838
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    .line 839
    const/16 v18, 0x8

    const/16 v19, 0x101

    move-wide v8, v4

    move-wide v10, v4

    move/from16 v13, p1

    .line 837
    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 840
    .local v7, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 841
    const/4 v6, 0x0

    .line 840
    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 842
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 843
    const/4 v6, 0x0

    .line 842
    invoke-virtual {v2, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 828
    return-void
.end method

.method private injectMotionEvent(I)V
    .locals 20
    .param p1, "action"    # I

    .prologue
    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v18, v0

    .line 801
    .local v18, "downEvent":Landroid/view/MotionEvent;
    if-nez v18, :cond_0

    .line 802
    return-void

    .line 806
    :cond_0
    const-string/jumbo v2, "GestureStubView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "injectMotionEvent action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " downX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 807
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 807
    const-string/jumbo v4, " downY: "

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 807
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 812
    .local v8, "arrayOfPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    aget-object v2, v8, v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 813
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 814
    .local v9, "arrayOfPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 815
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 816
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 817
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 818
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 820
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    .line 821
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    .line 822
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    .line 823
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    .line 818
    const/4 v7, 0x1

    move/from16 v6, p1

    .line 817
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 824
    .local v19, "event":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 825
    const/4 v3, 0x0

    .line 824
    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 799
    return-void
.end method

.method private isInSpeedLimit(I)Z
    .locals 3
    .param p1, "expectValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 243
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX2:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 245
    :cond_1
    return v0
.end method

.method private isSwipeRightInDirection()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 260
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mSwipeInRightDirection:Z

    .line 264
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mSwipeInRightDirection:Z

    return v0

    .line 259
    :cond_1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 262
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mSwipeInRightDirection:Z

    goto :goto_0
.end method

.method private static isUserSetUp(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 323
    sget-boolean v1, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    if-nez v1, :cond_1

    .line 324
    const-string/jumbo v1, "device_provisioned"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 324
    :cond_0
    sput-boolean v0, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 327
    :cond_1
    sget-boolean v0, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    return v0
.end method

.method private renderView()V
    .locals 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    .line 591
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 594
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 593
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    const-string/jumbo v0, "GestureStubView"

    const-string/jumbo v1, "renderView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedRender:Z

    .line 600
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 589
    :cond_1
    return-void
.end method

.method private resetRenderProperty(Ljava/lang/String;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    .line 576
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 579
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 578
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    const-string/jumbo v0, "GestureStubView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetRenderProperty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedRender:Z

    .line 585
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 574
    :cond_1
    return-void
.end method

.method static supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "keyguardManager"    # Landroid/app/KeyguardManager;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAssistXPosition()V
    .locals 3

    .prologue
    .line 249
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    .line 250
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX2:F

    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX2:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX2:F

    .line 248
    return-void
.end method


# virtual methods
.method public clearGestureStub()V
    .locals 2

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->hideGestureStub()V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 462
    const-string/jumbo v0, "GestureStubView"

    const-string/jumbo v1, "clearGestureStub"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method public disableQuickSwitch(Z)V
    .locals 0
    .param p1, "disableQuickSwitch"    # Z

    .prologue
    .line 778
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisableQuickSwitch:Z

    .line 777
    return-void
.end method

.method public enableGestureBackAnimation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 770
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureAnimationEnabled:Z

    .line 771
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->enableGestureBackAnimation(Z)V

    .line 773
    const-string/jumbo v0, "GestureStubView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableGestureBackAnimation enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v8, 0x0

    .line 557
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedRender:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getWidth()I

    move-result v7

    .line 559
    .local v7, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getHeight()I

    move-result v6

    .line 561
    .local v6, "h":I
    const-string/jumbo v0, "GestureStubView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gatherTransparentRegion: need render w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-lez v7, :cond_0

    if-lez v6, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/GestureStubView;->getLocationInWindow([I)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLocation:[I

    aget v1, v0, v8

    .line 566
    .local v1, "l":I
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 567
    .local v2, "t":I
    add-int v3, v1, v7

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 568
    return v8

    .line 571
    .end local v1    # "l":I
    .end local v2    # "t":I
    .end local v6    # "h":I
    .end local v7    # "w":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public hideGestureStubDelay()V
    .locals 4

    .prologue
    const/16 v1, 0x103

    .line 421
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView$H;->removeMessages(I)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendEmptyMessageDelayed(IJ)Z

    .line 420
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayListener:Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 359
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 442
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 444
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 445
    .local v0, "changes":I
    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 446
    .local v2, "screenSizeChange":Z
    :goto_0
    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 447
    .local v3, "smallestScreenSizeChange":Z
    :goto_1
    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    .line 448
    .local v1, "densitySizeChange":Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 449
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/fsgesture/GestureStubView;->initScreenSizeAndDensity(I)V

    .line 450
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    if-eqz v4, :cond_0

    .line 451
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/GestureStubView;->removeView(Landroid/view/View;)V

    .line 453
    :cond_0
    iget v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/GestureStubView;->setGestureStubPosition(I)V

    .line 441
    :cond_1
    return-void

    .line 445
    .end local v1    # "densitySizeChange":Z
    .end local v2    # "screenSizeChange":Z
    .end local v3    # "smallestScreenSizeChange":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "screenSizeChange":Z
    goto :goto_0

    .line 446
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "smallestScreenSizeChange":Z
    goto :goto_1

    .line 447
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "densitySizeChange":Z
    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 397
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayListener:Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 396
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v13, 0xff

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    .line 670
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrAction:I

    .line 672
    iget v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrAction:I

    packed-switch v5, :pswitch_data_0

    .line 760
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 761
    iget-boolean v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mPendingResetStatus:Z

    if-eqz v5, :cond_7

    .line 766
    :cond_1
    return v11

    .line 674
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX2:F

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownX:F

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownY:F

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    .line 676
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_2

    .line 677
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 679
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 682
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    const/16 v6, 0x100

    invoke-virtual {v5, v6}, Lcom/android/systemui/fsgesture/GestureStubView$H;->removeMessages(I)V

    .line 683
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 684
    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    const/16 v7, 0x100

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 685
    const-wide/16 v8, 0x96

    .line 683
    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 688
    const-string/jumbo v5, "GestureStubView"

    const-string/jumbo v6, "onTouch ACTION_DOWN sendMessageDelayed MSG_CHECK_GESTURE_STUB_TOUCHABLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 695
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    .line 697
    iget v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    iget v6, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    iget v7, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 698
    iget-boolean v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    if-nez v5, :cond_0

    .line 700
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    invoke-virtual {v6, v13}, Lcom/android/systemui/fsgesture/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 703
    const-string/jumbo v5, "GestureStubView"

    const-string/jumbo v6, "up-slide detected, sendMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 712
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 713
    .local v4, "downEvent":Landroid/view/MotionEvent;
    if-nez v4, :cond_3

    .line 714
    return v12

    .line 717
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 722
    .local v0, "currTime":J
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/16 v8, 0x96

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    .line 723
    iget-boolean v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    if-eqz v5, :cond_6

    .line 745
    :cond_4
    :goto_1
    const-string/jumbo v5, "GestureStubView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_UP: mIsGestureStarted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 746
    const-string/jumbo v7, " mIsGestureAnimationEnabled: "

    .line 745
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 746
    iget-boolean v7, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureAnimationEnabled:Z

    .line 745
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-boolean v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureAnimationEnabled:Z

    if-eqz v5, :cond_5

    .line 750
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    const/16 v7, 0x102

    invoke-virtual {v6, v7}, Lcom/android/systemui/fsgesture/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 751
    const-wide/16 v8, 0x1f4

    .line 750
    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 754
    :cond_5
    iput-boolean v11, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    goto/16 :goto_0

    .line 724
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->clearMessages()V

    .line 726
    iget v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float v2, v5, v6

    .line 727
    .local v2, "diffX":F
    iget v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float v3, v5, v6

    .line 729
    .local v3, "diffY":F
    iget-boolean v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    if-nez v5, :cond_4

    .line 730
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_4

    .line 731
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_4

    .line 732
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    iget-object v6, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    invoke-virtual {v6, v13}, Lcom/android/systemui/fsgesture/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 736
    const-string/jumbo v5, "GestureStubView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "currTime - mDownTime < MSG_CHECK_GESTURE_STUB_TOUCHABLE_TIMEOUT updateViewLayout UnTouchable, diffX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 739
    const-string/jumbo v7, " diffY:"

    .line 736
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 762
    .end local v0    # "currTime":J
    .end local v2    # "diffX":F
    .end local v3    # "diffY":F
    .end local v4    # "downEvent":Landroid/view/MotionEvent;
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    invoke-virtual {v5, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 763
    return v12

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setGestureStubPosition(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 782
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 783
    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 784
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->addView(Landroid/view/View;)V

    .line 786
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 787
    .local v0, "realSize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 788
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 789
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setDisplayWidth(I)V

    .line 791
    const-string/jumbo v1, "setGestureStubPosition"

    invoke-direct {p0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public setSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 539
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 540
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->adaptNotch()V

    .line 541
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    iput v2, v1, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeLeft:I

    .line 543
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeRight:I

    .line 547
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    const-string/jumbo v1, "setSize"

    invoke-direct {p0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_1
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showGestureStub()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 404
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView$H;->removeMessages(I)V

    .line 408
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    .line 409
    const-string/jumbo v0, "showGestureStub"

    invoke-direct {p0, v0}, Lcom/android/systemui/fsgesture/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->reset()V

    .line 413
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/GestureStubView;->setVisibility(I)V

    .line 416
    const-string/jumbo v0, "GestureStubView"

    const-string/jumbo v1, "showGestureStub"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method
