.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FsGestureBackDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGesture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

.field final synthetic val$back:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;
    .param p2, "val$back"    # Z

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->val$back:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->val$back:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-wrap2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    .line 241
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-wrap3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    .line 251
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0, v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-wrap3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    goto :goto_1
.end method
