.class public Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
.super Ljava/lang/Object;
.source "NotificationDozeHelper.java"


# instance fields
.field private final mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    .line 30
    return-void
.end method


# virtual methods
.method public fadeGrayscale(Landroid/widget/ImageView;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 34
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;Landroid/widget/ImageView;)V

    .line 39
    new-instance v6, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$2;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;ZLandroid/widget/ImageView;)V

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 34
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 33
    return-void
.end method

.method public getGrayscaleColorMatrix()Landroid/graphics/ColorMatrix;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method public setIntensityDark(Lcom/android/systemui/util/function/Consumer;ZZJ)V
    .locals 8
    .param p2, "dark"    # Z
    .param p3, "animate"    # Z
    .param p4, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/function/Consumer",
            "<",
            "Ljava/lang/Float;",
            ">;ZZJ)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "listener":Lcom/android/systemui/util/function/Consumer;, "Lcom/android/systemui/util/function/Consumer<Ljava/lang/Float;>;"
    if-eqz p3, :cond_0

    .line 81
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;Lcom/android/systemui/util/function/Consumer;)V

    .line 86
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p4

    .line 80
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 78
    :goto_0
    return-void

    .line 88
    :cond_0
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 64
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    .line 65
    .local v2, "startIntensity":F
    :goto_0
    if-eqz p2, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 66
    .local v1, "endIntensity":F
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 67
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 71
    if-eqz p5, :cond_0

    .line 72
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    return-void

    .line 64
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "endIntensity":F
    .end local v2    # "startIntensity":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "startIntensity":F
    goto :goto_0

    .line 65
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "endIntensity":F
    goto :goto_1
.end method

.method public updateGrayscale(Landroid/widget/ImageView;F)V
    .locals 2
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "darkAmount"    # F

    .prologue
    .line 54
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 55
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscaleMatrix(F)V

    .line 56
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 53
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public updateGrayscale(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 50
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    .line 49
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateGrayscaleMatrix(F)V
    .locals 2
    .param p1, "intensity"    # F

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 92
    return-void
.end method
