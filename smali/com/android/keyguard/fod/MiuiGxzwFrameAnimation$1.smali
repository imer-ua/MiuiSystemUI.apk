.class Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;
.super Ljava/lang/Object;
.source "MiuiGxzwFrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->draw(IZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

.field final synthetic val$newLastDrawAnim:Z

.field final synthetic val$res:I

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;IFZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;
    .param p2, "val$res"    # I
    .param p3, "val$scale"    # F
    .param p4, "val$newLastDrawAnim"    # Z

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iput p2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->val$res:I

    iput p3, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->val$scale:F

    iput-boolean p4, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->val$newLastDrawAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->val$res:I

    invoke-static {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->val$scale:F

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;Landroid/graphics/Bitmap;F)V

    .line 144
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->val$newLastDrawAnim:Z

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-static {v1}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->-get4(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    return-void
.end method
