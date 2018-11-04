.class public Lcom/android/systemui/recents/misc/RecentsPushEventHelper;
.super Ljava/lang/Object;
.source "RecentsPushEventHelper.java"


# static fields
.field private static mLastBottomStackPkg:Ljava/lang/String;

.field private static mLastTopStackPkg:Ljava/lang/String;

.field private static sMultiWindowPushEventId:Ljava/lang/String;

.field private static sRecentsPushEventId:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->mLastBottomStackPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->mLastTopStackPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sMultiWindowPushEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sRecentsPushEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->mLastBottomStackPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->mLastTopStackPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sMultiWindowPushEventId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set3(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sRecentsPushEventId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEnterRecentsEvent(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 2
    .param p0, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 182
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$4;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.xmsf.push.XMSF_UPLOAD_ACTIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v2, "pkgname"

    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v2, "category"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.xiaomi.xmsf.permission.USE_XMSF_UPLOAD"

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendPushEvent(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v1, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {p0, p1, v1}, Lcom/android/systemui/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public static sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public static sendOneKeyCleanEvent(JJJ)V
    .locals 8
    .param p0, "freeAtFirst"    # J
    .param p2, "freeAtLast"    # J
    .param p4, "total"    # J

    .prologue
    .line 218
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$5;-><init>(JJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public static sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public static sendSwitchAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "switchType"    # Ljava/lang/String;
    .param p1, "taskPosition"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 209
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "switchType"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string/jumbo v2, "taskPosition"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    const-string/jumbo v2, "switchApp"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendTaskStackChangedEvent()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$3;

    invoke-direct {v1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
