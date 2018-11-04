.class Lcom/android/systemui/recents/RecentsActivity$16$1;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity$16;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/RecentsActivity$16;

.field final synthetic val$ensureFlushTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity$16;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/RecentsActivity$16;
    .param p2, "val$ensureFlushTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$16$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$16;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsActivity$16$1;->val$ensureFlushTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$16$1;->val$ensureFlushTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    .line 1519
    return-void
.end method
