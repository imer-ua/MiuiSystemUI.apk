.class Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v0, v1, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mOpts:Landroid/app/ActivityOptions;

    .line 217
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-nez v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 219
    const v2, 0x90500b9

    const v3, 0x90500ba

    .line 218
    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity;->startHomeAnim()V

    .line 215
    return-void
.end method
