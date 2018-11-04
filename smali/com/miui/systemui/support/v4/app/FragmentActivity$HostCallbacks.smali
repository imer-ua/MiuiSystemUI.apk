.class Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;
.super Lcom/miui/systemui/support/v4/app/FragmentHostCallback;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemui/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemui/support/v4/app/FragmentHostCallback",
        "<",
        "Lcom/miui/systemui/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/systemui/support/v4/app/FragmentActivity;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    .line 860
    invoke-direct {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;-><init>(Lcom/miui/systemui/support/v4/app/FragmentActivity;)V

    .line 859
    return-void
.end method


# virtual methods
.method public onAttachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 933
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onAttachFragment(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 932
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 939
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    .prologue
    .line 927
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 928
    .local v0, "w":Landroid/view/Window;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public onHasView()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 944
    iget-object v2, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 945
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShouldSaveFragmentState(Lcom/miui/systemui/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 884
    return-void
.end method
