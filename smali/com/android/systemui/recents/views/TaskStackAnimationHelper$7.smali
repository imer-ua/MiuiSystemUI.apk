.class Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startScrollToFocusedTaskAnimation(Lcom/android/systemui/recents/model/Task;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field final synthetic val$newScroll:F


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
    .param p2, "val$newScroll"    # F

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;->val$newScroll:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;->this$0:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->-get1(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;)Lcom/android/systemui/recents/views/TaskStackView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;->val$newScroll:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 520
    return-void
.end method
