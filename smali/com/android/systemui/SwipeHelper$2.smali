.class Lcom/android/systemui/SwipeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->dispatchDismissAllToChild(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$finishAction:Ljava/lang/Runnable;

.field final synthetic val$realHideAnimatedList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SwipeHelper;
    .param p3, "val$finishAction"    # Ljava/lang/Runnable;

    .prologue
    .line 430
    .local p2, "val$realHideAnimatedList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$2;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$2;->val$realHideAnimatedList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/SwipeHelper$2;->val$finishAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$2;->this$0:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SwipeHelper;->-set0(Lcom/android/systemui/SwipeHelper;Z)Z

    .line 435
    const-string/jumbo v0, "com.android.systemui.SwipeHelper"

    const-string/jumbo v1, "dispatchDismissAllToChild onAnimationCancel."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$2;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$2;->val$realHideAnimatedList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper$2;->val$finishAction:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->-wrap0(Lcom/android/systemui/SwipeHelper;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$2;->this$0:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SwipeHelper;->-set0(Lcom/android/systemui/SwipeHelper;Z)Z

    .line 442
    const-string/jumbo v0, "com.android.systemui.SwipeHelper"

    const-string/jumbo v1, "dispatchDismissAllToChild onAnimationEnd."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method
