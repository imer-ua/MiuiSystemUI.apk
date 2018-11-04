.class final Lcom/android/systemui/recents/misc/RecentsPushEventHelper$4;
.super Ljava/lang/Object;
.source "RecentsPushEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendEnterRecentsEvent(Lcom/android/systemui/recents/model/TaskStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1, "val$stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$4;->val$stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 185
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v5, "taskLockedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$4;->val$stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 187
    .local v3, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 188
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 189
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    iget-boolean v6, v4, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v6, :cond_0

    .line 190
    iget-object v6, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "taskCount"

    iget-object v7, p0, Lcom/android/systemui/recents/misc/RecentsPushEventHelper$4;->val$stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string/jumbo v6, "taskLockedCount"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v6, "taskLockedList"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_1
    const-string/jumbo v6, "enterRecents"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
