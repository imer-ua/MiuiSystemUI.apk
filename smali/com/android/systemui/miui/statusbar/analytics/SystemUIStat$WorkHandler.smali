.class final Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;
.super Landroid/os/Handler;
.source "SystemUIStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    .line 81
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;

    .line 92
    .local v2, "event":Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;
    invoke-interface {v2}, Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;->getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    move-result-object v4

    .line 93
    .local v4, "tinyData":Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    invoke-static {}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    const-string/jumbo v5, "SystemUIStat"

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.xiaomi.xmsf.push.XMSF_UPLOAD_ACTIVE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.xiaomi.xmsf"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v5, "pkgname"

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->getPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v5, "category"

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v5, "name"

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v5, "data"

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v5, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v5}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get1(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v7, "com.xiaomi.xmsf.permission.USE_XMSF_UPLOAD"

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v2    # "event":Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "tinyData":Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;

    .line 106
    .local v0, "adBlock":Lcom/android/systemui/miui/statusbar/analytics/ADBlock;
    invoke-static {}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    const-string/jumbo v5, "SystemUIStat"

    iget-object v6, v0, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;->adId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "miui.intent.adblock"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.miui.systemAdSolution"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v5, "adid"

    iget-object v6, v0, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;->adId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v5, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v5}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get1(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "adBlock":Lcom/android/systemui/miui/statusbar/analytics/ADBlock;
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 116
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    invoke-static {v5, v6, v7}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 119
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 120
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    invoke-static {v5, v6, v8, v9, v7}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto/16 :goto_0

    .line 123
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-wrap0(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :pswitch_5
    iget-object v5, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v6}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get1(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "pref_notification_time"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-set0(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;J)J

    goto/16 :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
