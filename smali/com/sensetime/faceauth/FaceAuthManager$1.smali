.class Lcom/sensetime/faceauth/FaceAuthManager$1;
.super Ljava/lang/Object;
.source "FaceAuthManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensetime/faceauth/FaceAuthManager;->initAll(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensetime/faceauth/FaceAuthManager;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$verifyModelPath:Ljava/lang/String;

.field final synthetic val$verifyResult:[I


# direct methods
.method constructor <init>(Lcom/sensetime/faceauth/FaceAuthManager;Ljava/lang/String;[ILjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensetime/faceauth/FaceAuthManager;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sensetime/faceauth/FaceAuthManager$1;->this$0:Lcom/sensetime/faceauth/FaceAuthManager;

    iput-object p2, p0, Lcom/sensetime/faceauth/FaceAuthManager$1;->val$verifyModelPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sensetime/faceauth/FaceAuthManager$1;->val$verifyResult:[I

    iput-object p4, p0, Lcom/sensetime/faceauth/FaceAuthManager$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v0, -0x13

    .line 185
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 186
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager$1;->this$0:Lcom/sensetime/faceauth/FaceAuthManager;

    iget-object v1, p0, Lcom/sensetime/faceauth/FaceAuthManager$1;->val$verifyModelPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/FaceAuthManager;->access$000(Lcom/sensetime/faceauth/FaceAuthManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 192
    return-void

    :cond_0
    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "initVerify failed, handle is 0"

    .line 187
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager$1;->val$verifyResult:[I

    const/4 v1, 0x2

    aput v1, v0, v2

    .line 189
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager$1;->this$0:Lcom/sensetime/faceauth/FaceAuthManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/FaceAuthManager;->access$102(Lcom/sensetime/faceauth/FaceAuthManager;Lcom/sensetime/faceapi/FaceVerify;)Lcom/sensetime/faceapi/FaceVerify;

    goto :goto_0
.end method
