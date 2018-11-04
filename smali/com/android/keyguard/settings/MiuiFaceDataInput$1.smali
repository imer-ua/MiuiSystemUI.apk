.class Lcom/android/keyguard/settings/MiuiFaceDataInput$1;
.super Ljava/lang/Object;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/settings/MiuiFaceDataInput;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-virtual {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x9100410

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get0(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->closeCamera()V

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get6(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->release()V

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-virtual {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    .line 235
    return-void
.end method
