.class Lcom/android/systemui/qs/QSTileHost$1;
.super Landroid/content/BroadcastReceiver;
.source "QSTileHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->-get2(Lcom/android/systemui/qs/QSTileHost;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "com.xiaomi.drivemode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/qs/QSTileHost;->-set1(Lcom/android/systemui/qs/QSTileHost;Z)Z

    .line 143
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost;->-get2(Lcom/android/systemui/qs/QSTileHost;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1    # "packageName":Ljava/lang/String;
    const-string/jumbo v2, "com.xiaomi.drivemode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/qs/QSTileHost;->-set1(Lcom/android/systemui/qs/QSTileHost;Z)Z

    .line 157
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$1;->this$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DriveModeTile;->leaveDriveMode(Landroid/content/Context;)V

    goto :goto_0
.end method
