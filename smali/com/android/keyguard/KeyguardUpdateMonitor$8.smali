.class Lcom/android/keyguard/KeyguardUpdateMonitor$8;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x147

    const/4 v6, 0x0

    .line 1003
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1005
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    const-string/jumbo v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1007
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    .line 1008
    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->getSendingUserId()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1007
    const/16 v5, 0x13d

    invoke-virtual {v3, v5, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1009
    :cond_2
    const-string/jumbo v2, "com.android.facelock.FACE_UNLOCK_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1010
    const-string/jumbo v2, "KeyguardUpdateMonitor.mBroadcastAllReceiver#onReceive ACTION_FACE_UNLOCK_STARTED"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1011
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    .line 1012
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->getSendingUserId()I

    move-result v4

    .line 1011
    const/4 v5, 0x1

    invoke-virtual {v3, v7, v5, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1013
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1014
    :cond_3
    const-string/jumbo v2, "com.android.facelock.FACE_UNLOCK_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1015
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    .line 1016
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->getSendingUserId()I

    move-result v4

    .line 1015
    invoke-virtual {v3, v7, v6, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1017
    :cond_4
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1019
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x135

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1020
    :cond_5
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1021
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1022
    :cond_6
    const-string/jumbo v2, "face_unlock_release"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1023
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1024
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->deleteFeature()V

    .line 1025
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get5(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->release(Z)V

    goto/16 :goto_0

    .line 1027
    :cond_7
    const-string/jumbo v2, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get19()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get21()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1029
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90b00fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set9(Ljava/util/List;)Ljava/util/List;

    .line 1030
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90b00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set11(Ljava/util/List;)Ljava/util/List;

    .line 1032
    :cond_9
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get20()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get22()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1033
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90b00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set10(Ljava/util/List;)Ljava/util/List;

    .line 1034
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90b00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set12(Ljava/util/List;)Ljava/util/List;

    .line 1036
    :cond_b
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get19()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get21()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1037
    :cond_c
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get20()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get22()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1038
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get8(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_d

    .line 1039
    if-eqz v1, :cond_11

    .line 1045
    :cond_d
    :goto_2
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    .line 1046
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap28(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1049
    :cond_e
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap15(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 1036
    :cond_f
    const/4 v1, 0x1

    .local v1, "supportFaceUnlock":Z
    goto :goto_1

    .line 1037
    .end local v1    # "supportFaceUnlock":Z
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "supportFaceUnlock":Z
    goto :goto_1

    .line 1040
    .end local v1    # "supportFaceUnlock":Z
    :cond_11
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1041
    const-string/jumbo v3, "face_unlock_has_feature"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v4

    .line 1040
    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1042
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->deleteFeature()V

    .line 1043
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->release()V

    goto :goto_2
.end method
