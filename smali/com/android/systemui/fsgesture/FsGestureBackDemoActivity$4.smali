.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;
.super Ljava/lang/Object;
.source "FsGestureBackDemoActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGesture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 220
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    .line 221
    .local v4, "fraction":F
    const/16 v10, 0x9

    new-array v9, v10, [F

    .line 222
    .local v9, "tmp":[F
    iget-object v10, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v10}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get4(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 223
    const/4 v10, 0x0

    aget v0, v9, v10

    .line 224
    .local v0, "curScaleX":F
    const/4 v10, 0x4

    aget v1, v9, v10

    .line 225
    .local v1, "curScaleY":F
    const/4 v10, 0x2

    aget v2, v9, v10

    .line 226
    .local v2, "curTranslateX":F
    const/4 v10, 0x5

    aget v3, v9, v10

    .line 228
    .local v3, "curTranslateY":F
    sub-float v10, v11, v0

    mul-float/2addr v10, v4

    add-float v5, v10, v0

    .line 229
    .local v5, "targetScaleX":F
    sub-float v10, v11, v1

    mul-float/2addr v10, v4

    add-float v6, v10, v1

    .line 230
    .local v6, "targetScaleY":F
    sub-float v10, v11, v4

    mul-float v7, v2, v10

    .line 231
    .local v7, "targetTranslateX":F
    sub-float v10, v11, v4

    mul-float v8, v3, v10

    .line 233
    .local v8, "targetTranslateY":F
    iget-object v10, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v10}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get4(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 234
    iget-object v10, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v10}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get4(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 235
    iget-object v10, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v10}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get4(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    iget-object v10, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v10}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/widget/ImageView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v11}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get4(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 219
    return-void
.end method
