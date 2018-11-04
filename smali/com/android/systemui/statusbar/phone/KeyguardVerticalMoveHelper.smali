.class public Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;
.super Ljava/lang/Object;
.source "KeyguardVerticalMoveHelper.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mContext:Landroid/content/Context;

.field private mInitialDownTime:J

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mKeyguardClockView:Landroid/view/View;

.field private mKeyguardVerticalGestureSlop:I

.field private mNotificationStackScroller:Landroid/view/View;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mTouchSlop:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialTouchY:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "panelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p3, "clock"    # Landroid/view/View;
    .param p4, "noti"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    .line 57
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->initDimens()V

    .line 54
    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "forceCancel"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "vel":F
    const/4 v1, 0x0

    .line 112
    .local v1, "vectorVel":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 114
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 116
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    float-to-double v4, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    float-to-double v6, v6

    .line 115
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 118
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v2, v1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpands(FFFF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    :cond_1
    move v0, v3

    .line 121
    .local v0, "expand":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->handleMoveDownEvent(Landroid/view/MotionEvent;)V

    .line 140
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 142
    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 109
    :cond_2
    return-void

    .end local v0    # "expand":Z
    :cond_3
    move v0, p4

    .line 120
    goto :goto_0

    .line 125
    .restart local v0    # "expand":Z
    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p3, v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 126
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 136
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 137
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1
.end method

.method private handleMoveDownEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 156
    .local v0, "translationYOfConcernedView":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    neg-float v2, v0

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->startViewBounceDownAnimation(Landroid/view/View;I)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    neg-float v2, v0

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->startViewBounceDownAnimation(Landroid/view/View;I)V

    .line 154
    return-void
.end method

.method private initDimens()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 64
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mTouchSlop:I

    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f031a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardVerticalGestureSlop:I

    .line 62
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 183
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 179
    return-void
.end method

.method private startViewBounceDownAnimation(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 161
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    neg-int v3, p2

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 162
    .local v0, "downAnimator":Landroid/animation/Animator;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 163
    new-instance v1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 160
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 70
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 71
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 73
    .local v2, "x":F
    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mTracking:Z

    if-eqz v4, :cond_1

    .line 77
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return v6

    .line 74
    :cond_1
    return v5

    .line 79
    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialTouchX:F

    .line 80
    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialTouchY:F

    .line 81
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mTracking:Z

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialDownTime:J

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->initVelocityTracker()V

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-direct {p0, p1, v2, v3, v6}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    .line 90
    return v5

    .line 92
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialTouchY:F

    sub-float v1, v4, v5

    .line 94
    .local v1, "translation":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    const/4 v1, 0x0

    .line 95
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 96
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 101
    .end local v1    # "translation":F
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 102
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mTracking:Z

    .line 103
    invoke-direct {p0, p1, v2, v3, v5}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 146
    return-void
.end method

.method public updateKeyguardVerticalSwpingSlop(Z)V
    .locals 2
    .param p1, "isInSuspectMode"    # Z

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f031b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardVerticalGestureSlop:I

    .line 194
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f031a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardVerticalGestureSlop:I

    goto :goto_0
.end method
