.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;
.super Ljava/lang/Object;
.source "FsGestureBackDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 69
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 70
    .local v6, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 71
    .local v7, "y":F
    packed-switch v0, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return v12

    .line 73
    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 74
    return v9

    .line 76
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v6}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F

    .line 77
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v7}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F

    .line 78
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v12, :cond_3

    const/high16 v8, 0x428c0000    # 70.0f

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3

    .line 81
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get5(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    div-int/lit8 v8, v8, 0x5

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    .line 82
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v12}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    .line 83
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v9}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get8(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    .line 84
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get9(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 80
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get6(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    add-int/lit8 v8, v8, -0x46

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-gtz v8, :cond_2

    .line 86
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v9}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    iget-object v9, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v12, :cond_6

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float v8, v6, v8

    :goto_1
    invoke-static {v9, v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F

    move-result v4

    .line 95
    .local v4, "rawOffsetX":F
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get8(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 96
    .local v3, "offsetY":F
    const/high16 v8, 0x41a00000    # 20.0f

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_0

    .line 97
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v12, :cond_5

    .line 98
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8, v10}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    .line 100
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionMove(F)V

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v1, v8

    .line 102
    .local v1, "diffTime":I
    int-to-float v8, v1

    div-float v8, v4, v8

    float-to-int v5, v8

    .line 103
    .local v5, "speed":I
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v9

    invoke-static {v4, v5}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 104
    sget-object v8, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 103
    :goto_2
    invoke-virtual {v9, v8}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto/16 :goto_0

    .line 94
    .end local v1    # "diffTime":I
    .end local v3    # "offsetY":F
    .end local v4    # "rawOffsetX":F
    .end local v5    # "speed":I
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float/2addr v8, v6

    goto :goto_1

    .line 104
    .restart local v1    # "diffTime":I
    .restart local v3    # "offsetY":F
    .restart local v4    # "rawOffsetX":F
    .restart local v5    # "speed":I
    :cond_7
    sget-object v8, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    goto :goto_2

    .line 109
    .end local v1    # "diffTime":I
    .end local v3    # "offsetY":F
    .end local v4    # "rawOffsetX":F
    .end local v5    # "speed":I
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-eqz v8, :cond_0

    .line 112
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v8

    if-ne v8, v12, :cond_8

    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float v2, v6, v8

    .line 113
    .local v2, "finalRawOffsetX":F
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v8

    invoke-static {v2}, Lcom/android/systemui/fsgesture/GesturesBackController;->convertOffset(F)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionUp(FLandroid/animation/Animator$AnimatorListener;)V

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v1, v8

    .line 115
    .restart local v1    # "diffTime":I
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get11(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    int-to-float v9, v1

    div-float/2addr v8, v9

    float-to-int v5, v8

    .line 116
    .restart local v5    # "speed":I
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v9}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get11(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v9

    invoke-static {v9, v5}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-wrap0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V

    goto/16 :goto_0

    .line 112
    .end local v1    # "diffTime":I
    .end local v2    # "finalRawOffsetX":F
    .end local v5    # "speed":I
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v8}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->-get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F

    move-result v8

    sub-float v2, v8, v6

    .restart local v2    # "finalRawOffsetX":F
    goto :goto_3

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
