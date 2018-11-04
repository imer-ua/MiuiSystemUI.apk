.class Lcom/android/keyguard/settings/MiuiFaceDataInput$5;
.super Ljava/lang/Object;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput;->openCameraSucced(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/settings/MiuiFaceDataInput;
    .param p2, "val$result"    # Z

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    iput-boolean p2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 253
    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->val$result:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get11(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/settings/CameraView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/settings/CameraView;->refreshCameraView(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get11(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/settings/CameraView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-virtual {v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/settings/CameraView;->setBackgroundColor(I)V

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get12(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/settings/MiuiFaceDataInput$5$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$5$1;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput$5;)V

    .line 262
    const-wide/16 v2, 0xc8

    .line 256
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get1(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get4(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-set3(Lcom/android/keyguard/settings/MiuiFaceDataInput;J)J

    .line 252
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get4(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x9100409

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
