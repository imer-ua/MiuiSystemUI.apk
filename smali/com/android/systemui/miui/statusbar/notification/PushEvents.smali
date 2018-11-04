.class public Lcom/android/systemui/miui/statusbar/notification/PushEvents;
.super Ljava/lang/Object;
.source "PushEvents.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getADId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 7
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v6, 0x0

    .line 75
    if-eqz p0, :cond_0

    .line 76
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 77
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 78
    const-string/jumbo v3, "adid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 79
    .local v0, "ad_id":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 84
    .end local v0    # "ad_id":J
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    return-object v6
.end method

.method public static getEventMessageType(Landroid/app/Notification;)Ljava/lang/String;
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v3, 0x0

    .line 62
    if-eqz p0, :cond_0

    .line 63
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 64
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 65
    const-string/jumbo v2, "eventMessageType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "eventMessageType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    return-object v0

    .line 71
    .end local v0    # "eventMessageType":Ljava/lang/String;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-object v3
.end method

.method public static getLocalModelStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "local_model"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string/jumbo v1, "local_model"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 127
    :cond_0
    return-object v2
.end method

.method public static getMessageId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v3, 0x0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 51
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v2, "message_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "messageId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    return-object v1

    .line 58
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "messageId":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public static getScoreInfo(Landroid/app/Notification;)Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v3, 0x0

    .line 88
    if-eqz p0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 90
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v2, "score_info"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "rawText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    return-object v2

    .line 97
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "rawText":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public static persistLocalModel(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scoreInfo"    # Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->toJSONObject()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "localModel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "local_model"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    .end local v0    # "localModel":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static restoreLocalModel(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->getLocalModelStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "localModel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    .line 116
    .local v1, "scoreInfo":Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;
    const-string/jumbo v2, "PushEvents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->toJSONObject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->restoreUpdateTime(Landroid/content/Context;)V

    .line 118
    invoke-static {p0, v1}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->updateLocalModel(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V

    .line 112
    .end local v1    # "scoreInfo":Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;
    :cond_0
    return-void
.end method
