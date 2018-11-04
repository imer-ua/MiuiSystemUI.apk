.class Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;
.super Lcom/miui/systemui/support/v4/app/FragmentHostCallback;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemui/support/v4/app/FragmentHostCallback",
        "<",
        "Lcom/android/systemui/fragments/FragmentHostManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentHostManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fragments/FragmentHostManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/systemui/fragments/FragmentHostManager;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    .line 210
    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->-get0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->-get1(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 209
    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->-get2(Lcom/android/systemui/fragments/FragmentHostManager;)Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/fragments/FragmentHostManager$PluginFragmentManager;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/systemui/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/systemui/fragments/FragmentHostManager;->-wrap3(Lcom/android/systemui/fragments/FragmentHostManager;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->-wrap1(Lcom/android/systemui/fragments/FragmentHostManager;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->-get0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->-get0(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onShouldSaveFragmentState(Lcom/miui/systemui/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method
