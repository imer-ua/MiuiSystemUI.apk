.class Lcom/android/keyguard/settings/MiuiFaceDataInput$7;
.super Ljava/lang/Object;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput;->onPreviewFrame([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/settings/MiuiFaceDataInput;
    .param p2, "val$bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    iput-object p2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get11(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/settings/CameraView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/settings/CameraView;->refreshCameraView(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get13(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/view/TextureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get11(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/settings/CameraView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->val$bitmap:Landroid/graphics/Bitmap;

    const/16 v3, 0x4b

    invoke-static {v2, v3}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/settings/CameraView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get5(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get5(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x910040c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get4(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "chiron"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x910040e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get1(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x9100411

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 339
    return-void

    .line 345
    :cond_0
    const v0, 0x910040d

    goto :goto_0
.end method
