.class Lcom/android/systemui/SystemUIApplication$2$1;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication$2;->onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/SystemUIApplication$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/SystemUIApplication$2;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$2$1;->this$1:Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setWouldOtherwiseCollapse(Z)V
    .locals 3
    .param p1, "otherwiseCollapse"    # Z

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$2$1;->this$1:Lcom/android/systemui/SystemUIApplication$2;

    invoke-static {v2}, Lcom/android/systemui/SystemUIApplication$2;->-get0(Lcom/android/systemui/SystemUIApplication$2;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "overlayPlugin$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/OverlayPlugin;

    .line 238
    .local v0, "overlayPlugin":Lcom/android/systemui/plugins/OverlayPlugin;
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/OverlayPlugin;->setCollapseDesired(Z)V

    goto :goto_0

    .line 236
    .end local v0    # "overlayPlugin":Lcom/android/systemui/plugins/OverlayPlugin;
    :cond_0
    return-void
.end method
