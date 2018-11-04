.class public abstract Lcom/android/systemui/plugins/PluginFragment;
.super Landroid/app/Fragment;
.source "PluginFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginFragment;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .param p1, "sysuiContext"    # Landroid/content/Context;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 27
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginFragment;->mPluginContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method
