.class public Lcom/android/systemui/statusbar/phone/DoubleTapHelper;
.super Ljava/lang/Object;
.source "DoubleTapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$1;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private final mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

.field private mActivationX:F

.field private mActivationY:F

.field private final mDoubleTapListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;

.field private final mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

.field private mDoubleTapSlop:F

.field private mDownX:F

.field private mDownY:F

.field private final mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

.field private mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:F

.field private mTrackTouch:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DoubleTapHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activationListener"    # Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;
    .param p3, "doubleTapListener"    # Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;
    .param p4, "slideBackListener"    # Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;
    .param p5, "doubleTapLogListener"    # Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/DoubleTapHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTouchSlop:F

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f0193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapSlop:F

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

    .line 66
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

    .line 58
    return-void
.end method

.method private isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-nez v2, :cond_0

    .line 153
    return v0

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 156
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 157
    goto :goto_0

    :cond_2
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method private isWithinTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 146
    :cond_0
    return v0
.end method

.method private makeActive()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-nez v0, :cond_0

    .line 133
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;->onActiveChanged(Z)V

    .line 131
    :cond_0
    return-void
.end method

.method private makeInactive()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-eqz v0, :cond_0

    .line 140
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;->onActiveChanged(Z)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "maxTouchableHeight"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 75
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    return v2

    .line 77
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownX:F

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownY:F

    .line 79
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    .line 80
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownY:F

    int-to-float v3, p2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 81
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    .line 87
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;->onSlideBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    return v3

    .line 95
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-nez v2, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeActive()V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationX:F

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationY:F

    goto :goto_0

    .line 101
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 102
    .local v1, "withinDoubleTapSlop":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationX:F

    sub-float/2addr v3, v4

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationY:F

    sub-float/2addr v4, v5

    .line 103
    invoke-interface {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;->onDoubleTapLog(ZFF)V

    .line 107
    :cond_3
    if-eqz v1, :cond_4

    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;->onDoubleTap()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    return v6

    .line 112
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    .line 113
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto/16 :goto_0

    .line 117
    .end local v1    # "withinDoubleTapSlop":Z
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    .line 118
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto/16 :goto_0

    .line 122
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    .line 123
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto/16 :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
