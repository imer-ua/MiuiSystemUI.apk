.class Lcom/miui/systemui/support/v4/app/FragmentActivity$1;
.super Landroid/os/Handler;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemui/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/miui/systemui/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/systemui/support/v4/app/FragmentActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$1;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$1;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$1;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$1;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 90
    iget-object v0, p0, Lcom/miui/systemui/support/v4/app/FragmentActivity$1;->this$0:Lcom/miui/systemui/support/v4/app/FragmentActivity;

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/FragmentActivity;->mFragments:Lcom/miui/systemui/support/v4/app/FragmentController;

    invoke-virtual {v0}, Lcom/miui/systemui/support/v4/app/FragmentController;->execPendingActions()Z

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
