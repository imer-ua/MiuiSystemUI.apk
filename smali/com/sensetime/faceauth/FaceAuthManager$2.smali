.class Lcom/sensetime/faceauth/FaceAuthManager$2;
.super Ljava/lang/Object;
.source "FaceAuthManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensetime/faceauth/FaceAuthManager;->analysis([BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;ZI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensetime/faceauth/FaceAuthManager;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

.field final synthetic val$faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

.field final synthetic val$height:I

.field final synthetic val$imgData:[B

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sensetime/faceauth/FaceAuthManager;[BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensetime/faceauth/FaceAuthManager;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->this$0:Lcom/sensetime/faceauth/FaceAuthManager;

    iput-object p2, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$imgData:[B

    iput p3, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$width:I

    iput p4, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$height:I

    iput-object p5, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    iput-object p6, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

    iput-object p7, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v0, -0x13

    .line 775
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 777
    .local v6, "time":J
    iget-object v8, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->this$0:Lcom/sensetime/faceauth/FaceAuthManager;

    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->this$0:Lcom/sensetime/faceauth/FaceAuthManager;

    iget-object v1, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$imgData:[B

    iget v2, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$width:I

    iget v3, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$height:I

    iget-object v4, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    iget-object v5, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

    invoke-static/range {v0 .. v5}, Lcom/sensetime/faceauth/FaceAuthManager;->access$300(Lcom/sensetime/faceauth/FaceAuthManager;[BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;)Z

    move-result v0

    invoke-static {v8, v0}, Lcom/sensetime/faceauth/FaceAuthManager;->access$202(Lcom/sensetime/faceauth/FaceAuthManager;Z)Z

    const-string/jumbo v0, "FaceAuthManager"

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "end do hacker time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 780
    return-void
.end method
