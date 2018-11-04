.class Lcom/android/systemui/recents/Recents$3;
.super Landroid/content/BroadcastReceiver;
.source "Recents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, -0x2710

    .line 196
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 198
    .local v0, "currentId":I
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 200
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v2}, Lcom/android/systemui/recents/Recents;->-get2(Lcom/android/systemui/recents/Recents;)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v2}, Lcom/android/systemui/recents/Recents;->-get3(Lcom/android/systemui/recents/Recents;)Landroid/content/Intent;

    move-result-object v2

    .line 202
    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v4}, Lcom/android/systemui/recents/Recents;->-get2(Lcom/android/systemui/recents/Recents;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 201
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 203
    iget-object v2, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v2, v5}, Lcom/android/systemui/recents/Recents;->-set0(Lcom/android/systemui/recents/Recents;I)I

    .line 207
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v2}, Lcom/android/systemui/recents/Recents;->-get3(Lcom/android/systemui/recents/Recents;)Landroid/content/Intent;

    move-result-object v2

    .line 209
    new-instance v3, Landroid/os/UserHandle;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 208
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 210
    iget-object v2, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v3}, Lcom/android/systemui/recents/Recents;->-set0(Lcom/android/systemui/recents/Recents;I)I

    .line 191
    .end local v0    # "currentId":I
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method
