.class final Lcom/android/systemui/recents/RecentsActivity$13;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->updateAppConfigure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bgControl:Ljava/lang/String;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "val$pkgName"    # Ljava/lang/String;
    .param p2, "val$bgControl"    # Ljava/lang/String;
    .param p3, "val$ctx"    # Landroid/content/Context;

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$13;->val$pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsActivity$13;->val$bgControl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/recents/RecentsActivity$13;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1389
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v2

    .line 1390
    .local v2, "userId":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1391
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1392
    const-string/jumbo v3, "pkgName"

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity$13;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string/jumbo v3, "bgControl"

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity$13;->val$bgControl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$13;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "content://com.miui.powerkeeper.configure"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "userTable"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1396
    const-string/jumbo v5, "userTableupdate"

    const/4 v6, 0x0

    .line 1395
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    :goto_0
    return-void

    .line 1397
    :catch_0
    move-exception v1

    .line 1398
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
