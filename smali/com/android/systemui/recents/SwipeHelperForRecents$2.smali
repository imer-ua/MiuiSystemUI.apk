.class Lcom/android/systemui/recents/SwipeHelperForRecents$2;
.super Ljava/lang/Object;
.source "SwipeHelperForRecents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/SwipeHelperForRecents;
    .param p2, "val$ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 304
    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get5(Lcom/android/systemui/recents/SwipeHelperForRecents;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2, v5}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-set1(Lcom/android/systemui/recents/SwipeHelperForRecents;Z)Z

    .line 306
    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v2

    .line 307
    const/4 v3, 0x2

    .line 306
    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 308
    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get6(Lcom/android/systemui/recents/SwipeHelperForRecents;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 309
    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get6(Lcom/android/systemui/recents/SwipeHelperForRecents;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 310
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get6(Lcom/android/systemui/recents/SwipeHelperForRecents;)[I

    move-result-object v3

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 311
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get4(Lcom/android/systemui/recents/SwipeHelperForRecents;)Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents$2;->this$0:Lcom/android/systemui/recents/SwipeHelperForRecents;

    invoke-static {v3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->-get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;->onLongPress(Landroid/view/View;II)Z

    goto :goto_0
.end method
