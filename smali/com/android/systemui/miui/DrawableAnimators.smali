.class public Lcom/android/systemui/miui/DrawableAnimators;
.super Ljava/lang/Object;
.source "DrawableAnimators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;
    }
.end annotation


# static fields
.field private static DECELERATE:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_QUART:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/miui/DrawableAnimators;->DECELERATE:Landroid/view/animation/Interpolator;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fade(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "in"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 30
    const-string/jumbo v3, "alpha"

    new-array v4, v5, [I

    if-eqz p1, :cond_0

    const/16 v1, 0xff

    :goto_0
    aput v1, v4, v2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 31
    .local v0, "fade":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 32
    sget-object v1, Lcom/android/systemui/miui/DrawableAnimators;->DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 34
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 35
    return-object v0

    .end local v0    # "fade":Landroid/animation/ObjectAnimator;
    :cond_0
    move v1, v2

    .line 30
    goto :goto_0
.end method

.method public static updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "toArrayRes"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v1, v3, [F

    .line 56
    .local v1, "array":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    aput v3, v1, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-static {p1, v1}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/graphics/drawable/Drawable;[F)Landroid/animation/Animator;

    move-result-object v3

    return-object v3
.end method

.method public static updateCornerRadii(Landroid/graphics/drawable/Drawable;[F)Landroid/animation/Animator;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "to"    # [F

    .prologue
    const/4 v5, 0x1

    .line 65
    instance-of v1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_0

    .line 66
    const-string/jumbo v1, "DrawableAnimatorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cornerRadii change cannot be applied to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 70
    :cond_0
    const-string/jumbo v1, "cornerRadii"

    .line 71
    new-instance v2, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;

    invoke-direct {v2, p0}, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 70
    new-array v3, v5, [Ljava/lang/Object;

    .line 71
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 70
    invoke-static {p0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 72
    .local v0, "radii":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    sget-object v1, Lcom/android/systemui/miui/DrawableAnimators;->DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 75
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 76
    return-object v0
.end method
