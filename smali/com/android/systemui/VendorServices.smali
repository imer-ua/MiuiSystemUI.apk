.class public Lcom/android/systemui/VendorServices;
.super Lcom/android/systemui/SystemUI;
.source "VendorServices.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 5

    .prologue
    .line 34
    new-instance v3, Lcom/android/systemui/vendor/HeadsetPolicy;

    iget-object v4, p0, Lcom/android/systemui/VendorServices;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/vendor/HeadsetPolicy;-><init>(Landroid/content/Context;)V

    .line 37
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 39
    .local v2, "iWindowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x0

    .line 41
    .local v0, "bHasNavigationBar":Z
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 46
    .end local v0    # "bHasNavigationBar":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 47
    new-instance v3, Lcom/android/systemui/vendor/OrientationPolicy;

    iget-object v4, p0, Lcom/android/systemui/VendorServices;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/vendor/OrientationPolicy;-><init>(Landroid/content/Context;)V

    .line 33
    :cond_0
    return-void

    .line 42
    .restart local v0    # "bHasNavigationBar":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
