.class Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;
.super Ljava/lang/Object;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PluginFragmentManager"
.end annotation


# instance fields
.field private final mPluginLookup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentHostManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/fragments/FragmentHostManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/fragments/FragmentHostManager;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->mPluginLookup:Landroid/util/ArrayMap;

    .line 260
    return-void
.end method

.method private reloadFragments()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->-wrap0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Parcelable;

    move-result-object v0

    .line 287
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->-wrap2(Lcom/android/systemui/fragments/FragmentHostManager;Landroid/os/Parcelable;)V

    .line 283
    return-void
.end method


# virtual methods
.method instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->mPluginLookup:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 292
    .local v1, "pluginContext":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 293
    invoke-static {v1, p2, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    .line 294
    .local v0, "f":Lcom/miui/systemui/support/v4/app/Fragment;
    instance-of v2, v0, Lcom/android/systemui/plugins/Plugin;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 295
    check-cast v2, Lcom/android/systemui/plugins/Plugin;

    iget-object v3, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v3}, Lcom/android/systemui/fragments/FragmentHostManager;->-get0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/plugins/Plugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    .line 297
    :cond_0
    return-object v0

    .line 299
    .end local v0    # "f":Lcom/miui/systemui/support/v4/app/Fragment;
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/miui/systemui/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v2

    return-object v2
.end method

.method public removePlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "currentClass"    # Ljava/lang/String;
    .param p3, "defaultClass"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    .line 265
    .local v0, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->mPluginLookup:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentManager;->beginTransaction()Lcom/miui/systemui/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 267
    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 268
    iget-object v3, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v3}, Lcom/android/systemui/fragments/FragmentHostManager;->-get0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p3, v4}, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v3

    .line 266
    invoke-virtual {v2, v1, v3, p1}, Lcom/miui/systemui/support/v4/app/FragmentTransaction;->replace(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentTransaction;->commit()I

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->reloadFragments()V

    .line 263
    return-void
.end method

.method public setCurrentPlugin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "currentClass"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/systemui/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    .line 275
    .local v0, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->mPluginLookup:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Lcom/miui/systemui/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentManager;->beginTransaction()Lcom/miui/systemui/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 277
    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 278
    const/4 v3, 0x0

    invoke-virtual {p0, p3, p2, v3}, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v3

    .line 276
    invoke-virtual {v2, v1, v3, p1}, Lcom/miui/systemui/support/v4/app/FragmentTransaction;->replace(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentTransaction;->commit()I

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->reloadFragments()V

    .line 273
    return-void
.end method
