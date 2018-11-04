.class Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;
.super Landroid/os/Handler;
.source "BaseFaceUnlockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    :pswitch_0
    return-void

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceStart()V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceAuthenticated()V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v1, v1, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget v2, v2, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHelpStringResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceHelp(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v1, v1, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9100425

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceHelp(Ljava/lang/String;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v1, v1, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    invoke-interface {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceAuthFailed(Z)V

    goto :goto_0

    .line 116
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceLocked()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
