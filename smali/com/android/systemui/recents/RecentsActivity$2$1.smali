.class Lcom/android/systemui/recents/RecentsActivity$2$1;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/RecentsActivity$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/RecentsActivity$2;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$2$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$2$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$2;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeIfVisible(Z)Z

    .line 241
    return-void
.end method
