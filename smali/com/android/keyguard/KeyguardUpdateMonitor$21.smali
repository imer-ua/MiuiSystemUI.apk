.class Lcom/android/keyguard/KeyguardUpdateMonitor$21;
.super Landroid/os/AsyncTask;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;->updateWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field final synthetic val$succeed:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p2, "val$succeed"    # Z

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->val$succeed:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1604
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->val$succeed:Z

    if-eqz v0, :cond_0

    .line 1606
    invoke-static {}, Lmiui/content/res/ThemeResources;->clearLockWallpaperCache()V

    .line 1607
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap27(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 1608
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->queryWallpaperInfo()V

    .line 1610
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 1614
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1615
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get17(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    .line 1616
    .local v0, "callback":Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->val$succeed:Z

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;->onWallpaperChange(Z)V

    goto :goto_0

    .line 1618
    .end local v0    # "callback":Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get10(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1619
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$21;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyWallpaperInfoChanged()V

    .line 1614
    :cond_1
    return-void
.end method
