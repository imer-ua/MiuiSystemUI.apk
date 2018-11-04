.class Lcom/android/systemui/RoundedCorners$4;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/RoundedCorners;->initRoundCornerWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/RoundedCorners;


# direct methods
.method constructor <init>(Lcom/android/systemui/RoundedCorners;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/RoundedCorners;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/systemui/RoundedCorners$4;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 267
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 257
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$4;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v2}, Lcom/android/systemui/RoundedCorners;->-get1(Lcom/android/systemui/RoundedCorners;)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 258
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$4;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v2}, Lcom/android/systemui/RoundedCorners;->-get6(Lcom/android/systemui/RoundedCorners;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$4;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v2, v1}, Lcom/android/systemui/RoundedCorners;->-set3(Lcom/android/systemui/RoundedCorners;I)I

    .line 260
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$4;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v2}, Lcom/android/systemui/RoundedCorners;->-get3(Lcom/android/systemui/RoundedCorners;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners$4;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v3, v3, Lcom/android/systemui/RoundedCorners;->mUpdateRoundCornerRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 261
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 262
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$4;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v2}, Lcom/android/systemui/RoundedCorners;->-get3(Lcom/android/systemui/RoundedCorners;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 256
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 252
    return-void
.end method
