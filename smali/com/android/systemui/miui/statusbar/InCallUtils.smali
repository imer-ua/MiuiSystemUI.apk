.class public Lcom/android/systemui/miui/statusbar/InCallUtils;
.super Ljava/lang/Object;
.source "InCallUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 146
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v2, 0x0

    return-object v2

    .line 150
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v2
.end method

.method public static goInCallScreen(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->goInCallScreen(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public static goInCallScreen(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    :cond_0
    const/high16 v2, 0x10840000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string/jumbo v2, "com.android.incallui"

    const-string/jumbo v3, "com.android.incallui.InCallActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :goto_0
    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    return-void

    .line 91
    :cond_1
    const-string/jumbo v2, "com.miui.voip"

    const-string/jumbo v3, "com.miui.voiptalk.activity.VoipCallActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_1
.end method

.method public static isCallScreenShowing(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 127
    .local v1, "topActivity":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 128
    :goto_0
    const-string/jumbo v2, "com.miui.voiptalk.activity.VoipCallActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    const-string/jumbo v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 128
    if-eqz v2, :cond_2

    .line 130
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 127
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .local v0, "runningActivity":Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v0    # "runningActivity":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isPhoneInCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isVoipInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isInCallNotificationHeadsUp(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 104
    .local v0, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {p0, v1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    .line 104
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInCallScreenShowing(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 113
    .local v1, "topActivity":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 114
    :goto_0
    const-string/jumbo v4, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "com.android.incallui.InCallActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_1
    return v2

    .line 113
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .local v0, "runningActivity":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "runningActivity":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    const-string/jumbo v4, "com.miui.voiptalk.activity.VoipCallActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    invoke-static {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v4

    if-ne v4, v2, :cond_4

    :goto_2
    return v2

    :cond_4
    move v2, v3

    goto :goto_2

    .line 119
    :cond_5
    return v3
.end method

.method public static isPhoneInCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 4
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-nez p0, :cond_0

    return v1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.incallui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 59
    :cond_1
    const-string/jumbo v2, "incall"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 60
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 57
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0

    :cond_3
    move v0, v1

    .line 57
    goto :goto_0
.end method

.method public static isPhoneInCallNotificationInVideo(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isPhoneInCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "hasVideoCall"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoipInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-nez p1, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.miui.voip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const-string/jumbo v2, "voip_incall"

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 70
    invoke-static {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 68
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0

    :cond_2
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public static needShowReturnToInVoipCallScreenButton(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/voiptalk/service/MiuiVoipManager;->isVoipCallUiOnBack()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isCallScreenShowing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-static {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
