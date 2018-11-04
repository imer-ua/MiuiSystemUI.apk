.class public Lcom/android/systemui/statusbar/notification/ImageTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "ImageTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/ImageTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:Landroid/graphics/drawable/Icon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 37
    sput-object v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method private static mapToDuration(F)F
    .locals 2
    .param p0, "scaleAmount"    # F

    .prologue
    .line 104
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p0

    .line 105
    const/high16 v1, 0x43160000    # 150.0f

    .line 104
    sub-float/2addr v0, v1

    .line 106
    const/high16 v1, 0x43520000    # 210.0f

    .line 104
    div-float p0, v0, v1

    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/ImageTransformState;
    .locals 2

    .prologue
    .line 115
    sget-object v1, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    .line 116
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/ImageTransformState;
    if-eqz v0, :cond_0

    .line 117
    return-object v0

    .line 119
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;-><init>()V

    return-object v1
.end method


# virtual methods
.method public appear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 2
    .param p1, "transformationAmount"    # F
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    const/4 v1, 0x0

    .line 66
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_1

    .line 67
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->prepareFadeIn()V

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mapToDuration(F)F

    move-result p1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    .line 74
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 65
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_0
.end method

.method public disappear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 3
    .param p1, "transformationAmount"    # F
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 85
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_1

    .line 86
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 90
    :cond_0
    sub-float v0, v2, p1

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mapToDuration(F)F

    move-result p1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    sub-float v1, v2, p1

    .line 92
    const/4 v2, 0x0

    .line 91
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    .line 93
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 84
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    .line 44
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 45
    const v0, 0x9120044

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    .line 42
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 130
    sget-object v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    .line 134
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 3
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    const/4 v2, 0x0

    .line 51
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_0

    .line 53
    return v2

    .line 55
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    .end local p1    # "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 56
    .local v0, "otherIcon":Landroid/graphics/drawable/Icon;
    if-nez v0, :cond_1

    .line 57
    return v2

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v0}, Landroid/graphics/drawable/IconCompat;->sameAs(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v1

    return v1

    .line 61
    .end local v0    # "otherIcon":Landroid/graphics/drawable/Icon;
    .restart local p1    # "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v1

    return v1
.end method

.method protected transformScale()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method
