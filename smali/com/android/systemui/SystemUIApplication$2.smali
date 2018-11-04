.class Lcom/android/systemui/SystemUIApplication$2;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/OverlayPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/plugins/OverlayPlugin;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/SystemUIApplication$2;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    return-object v0
.end method

.method constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$2;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V
    .locals 4
    .param p1, "plugin"    # Lcom/android/systemui/plugins/OverlayPlugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$2;->this$0:Lcom/android/systemui/SystemUIApplication;

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 226
    .local v0, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    .line 228
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    .line 227
    invoke-interface {p1, v1, v3}, Lcom/android/systemui/plugins/OverlayPlugin;->setup(Landroid/view/View;Landroid/view/View;)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    .line 232
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/OverlayPlugin;->holdStatusBarOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 234
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v3, Lcom/android/systemui/SystemUIApplication$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/SystemUIApplication$2$1;-><init>(Lcom/android/systemui/SystemUIApplication$2;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;)V

    .line 242
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 243
    iget-object v3, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 242
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForcePluginOpen(Z)V

    .line 224
    :cond_3
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0
    .param p1, "plugin"    # Lcom/android/systemui/plugins/Plugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 224
    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    .end local p1    # "plugin":Lcom/android/systemui/plugins/Plugin;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SystemUIApplication$2;->onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/OverlayPlugin;

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 250
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 251
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 250
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForcePluginOpen(Z)V

    .line 248
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0
    .param p1, "plugin"    # Lcom/android/systemui/plugins/Plugin;

    .prologue
    .line 248
    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    .end local p1    # "plugin":Lcom/android/systemui/plugins/Plugin;
    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIApplication$2;->onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method
