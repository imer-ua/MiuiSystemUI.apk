.class public Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# instance fields
.field private final mBackgroundColor:I

.field private final mCornerRadius:I

.field private final mCustomViewMarginEnd:I

.field private final mCustomViewMarginStart:I

.field private final mGreyPaint:Landroid/graphics/Paint;

.field private final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mIsLegacy:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v1, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v1, p2, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x90f0218

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCustomViewMarginStart:I

    .line 57
    const v1, 0x90f0219

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCustomViewMarginEnd:I

    .line 58
    const v1, 0x90f021a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCornerRadius:I

    .line 59
    const v1, 0x90c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->handleViewMargin()V

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->updateRoundCorner()V

    .line 52
    return-void
.end method

.method private handleViewMargin()V
    .locals 4

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 142
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 143
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    .local v0, "frameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCustomViewMarginStart:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 145
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCustomViewMarginEnd:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .end local v0    # "frameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string/jumbo v2, "NotiCustomViewWrapper"

    const-string/jumbo v3, "handleViewMargin(): view not attached to a FrameLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRoundCorner()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/Util;->setViewRoundCorner(Landroid/view/View;F)V

    .line 152
    return-void
.end method


# virtual methods
.method protected fadeGrayscale(ZJ)V
    .locals 8
    .param p1, "dark"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v1

    .line 93
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;)V

    .line 100
    new-instance v6, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;Z)V

    move v3, p1

    move-wide v4, p2

    .line 92
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 91
    return-void
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    return v0
.end method

.method public onReinflated()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    .line 65
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mIsLegacy:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    if-eqz v0, :cond_2

    .line 76
    if-eqz p2, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    .line 70
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 83
    if-eqz p2, :cond_4

    .line 84
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V

    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->updateGrayscale(Z)V

    goto :goto_0
.end method

.method public setLegacy(Z)V
    .locals 0
    .param p1, "legacy"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mIsLegacy:Z

    .line 135
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 120
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldClearBackgroundOnReapply()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method protected updateGrayscale(Z)V
    .locals 3
    .param p1, "dark"    # Z

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscaleMatrix(F)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->getGrayscaleColorMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 110
    :cond_0
    return-void
.end method
