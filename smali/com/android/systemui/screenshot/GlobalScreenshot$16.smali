.class Lcom/android/systemui/screenshot/GlobalScreenshot$16;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->quitThumbnailWindow(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$initWindowY:I


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;
    .param p2, "val$initWindowY"    # I

    .prologue
    .line 840
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$16;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$16;->val$initWindowY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 842
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 843
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$16;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$16;->val$initWindowY:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->moveThumbnailWindowY(I)V

    .line 841
    return-void
.end method
