.class Lcom/android/systemui/statusbar/phone/StatusBar$20;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 4931
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4933
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 4934
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v18, "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4936
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v18

    if-nez v18, :cond_3

    .line 4937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get24(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v18

    if-nez v18, :cond_3

    .line 4939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set2(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)Ljava/lang/String;

    .line 4940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideReturnToInCallScreenButton()V

    .line 4950
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallScreenShowing(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isCallScreenShowing(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 4951
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get23(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->makeReturnToInCallScreenButtonGone()V

    .line 4932
    :cond_2
    :goto_1
    return-void

    .line 4943
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    const-string/jumbo v19, "call_state"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set2(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)Ljava/lang/String;

    .line 4944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    const-string/jumbo v19, "base_time"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set1(Lcom/android/systemui/statusbar/phone/StatusBar;J)J

    .line 4945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotificationHeadsUp(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 4946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get4(Lcom/android/systemui/statusbar/phone/StatusBar;)J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBar;->showReturnToInCallScreenButton(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 4954
    :cond_4
    const-string/jumbo v18, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 4955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideReturnToInCallScreenButton()V

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set2(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)Ljava/lang/String;

    .line 4958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/miui/statusbar/InCallUtils;->needShowReturnToInVoipCallScreenButton(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 4959
    const-string/jumbo v18, "StatusBar"

    const-string/jumbo v19, "needShowReturnToInVoipCallScreenButton"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get24(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getExtraCallState()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set2(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)Ljava/lang/String;

    .line 4961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get24(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallBaseTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set1(Lcom/android/systemui/statusbar/phone/StatusBar;J)J

    .line 4962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get5(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get4(Lcom/android/systemui/statusbar/phone/StatusBar;)J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBar;->showReturnToInCallScreenButton(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 4964
    :cond_5
    const-string/jumbo v18, "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 4965
    const-string/jumbo v18, "EXTRA_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4966
    .local v16, "state":Ljava/lang/String;
    if-nez v16, :cond_6

    .line 4967
    const-string/jumbo v16, "drivemode_standby"

    .line 4970
    :cond_6
    const-string/jumbo v18, "drivemode_standby"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 4971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set10(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4975
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set9(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get23(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get17(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToDriveModeView(ZZ)V

    .line 4977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap32(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto/16 :goto_1

    .line 4972
    :cond_8
    const-string/jumbo v18, "drivemode_idle"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 4973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set10(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    goto :goto_2

    .line 4978
    .end local v16    # "state":Ljava/lang/String;
    :cond_9
    const-string/jumbo v18, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 4979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set9(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get23(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->showReturnToDriveModeView(ZZ)V

    .line 4981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap32(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto/16 :goto_1

    .line 4982
    :cond_a
    const-string/jumbo v18, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 4983
    const-string/jumbo v18, "app_packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4984
    .local v15, "pkg":Ljava/lang/String;
    const-string/jumbo v18, "messageId"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4985
    .local v12, "messageId":Ljava/lang/String;
    const-string/jumbo v18, "change_importance"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4986
    .local v7, "changeImportancePkg":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 4987
    const-string/jumbo v18, "new_value"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 4988
    .local v14, "newValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v14}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap7(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 4989
    .end local v14    # "newValue":I
    :cond_b
    const-string/jumbo v18, "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 4997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap12(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)V

    .line 4999
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 5000
    const-class v18, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v12}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onBlock(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5002
    :cond_c
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get1()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 5003
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get0()Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 5004
    .local v17, "uid":I
    const-string/jumbo v18, "StatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "update high priority: pkg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    if-gez v17, :cond_d

    .line 5006
    return-void

    .line 5008
    :cond_d
    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->updateHighPriorityMap(Ljava/lang/String;I)V

    .line 5009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/systemui/statusbar/phone/StatusBar$20$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$20$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$20;)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 5016
    .end local v17    # "uid":I
    :cond_e
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 5017
    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5018
    .local v6, "appMsg":Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;
    iput-object v15, v6, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;->pkgName:Ljava/lang/String;

    .line 5019
    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;->className:Ljava/lang/CharSequence;

    .line 5020
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;->userId:I

    .line 5021
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;->num:I

    .line 5022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get3(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x7d2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 5025
    .end local v6    # "appMsg":Lcom/android/systemui/statusbar/phone/StatusBar$AppMessage;
    .end local v7    # "changeImportancePkg":Ljava/lang/String;
    .end local v12    # "messageId":Ljava/lang/String;
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_f
    const-string/jumbo v18, "com.miui.app.ExtraStatusBarManager.action_remove_keyguard_notification"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 5026
    const-string/jumbo v18, "com.miui.app.ExtraStatusBarManager.extra_notification_key"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 5027
    .local v11, "keyCode":I
    const-string/jumbo v18, "com.miui.app.ExtraStatusBarManager.extra_notification_click"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 5030
    .local v8, "click":I
    if-nez v11, :cond_10

    .line 5031
    const-string/jumbo v18, "StatusBar"

    const-string/jumbo v19, "keyCode == 0 CLEAR_KEYGUARD_NOTIFICATION"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get19(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->clear()V

    .line 5033
    return-void

    .line 5035
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get19(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->remove(ILjava/lang/String;)V

    .line 5036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v5

    .line 5037
    .local v5, "activeNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 5038
    .local v9, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v18

    move/from16 v0, v18

    if-ne v11, v0, :cond_11

    .line 5041
    iget-object v13, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 5042
    .local v13, "n":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    const-string/jumbo v18, "StatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "keycode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ";click="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ";pkg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ";id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5043
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_12

    .line 5044
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->callOnClick()Z

    goto :goto_3

    .line 5046
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->onNotificationClear(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    goto :goto_3
.end method
