.class Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;
.super Ljava/lang/Object;
.source "QSIconViewImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->startAnimatorIfNeed(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field imageChanged:Z

.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
    .param p2, "val$iv"    # Landroid/widget/ImageView;
    .param p3, "val$drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$iv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->imageChanged:Z

    .line 174
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 179
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 180
    .local v0, "value":F
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$iv:Landroid/widget/ImageView;

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$iv:Landroid/widget/ImageView;

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 178
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->imageChanged:Z

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->imageChanged:Z

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method
