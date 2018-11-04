.class public Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavigationBarViewTaskSwitchHelper.java"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mContext:Landroid/content/Context;

.field private mIsRTL:Z

.field private mIsVertical:Z

.field private final mMinFlingVelocity:I

.field private final mScrollTouchSlop:I

.field private final mTaskSwitcherDetector:Landroid/view/GestureDetector;

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 65
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x90f008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    .line 67
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    .line 68
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    .line 62
    return-void
.end method

.method private sendToHandyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.action.handymode.changemode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 27
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 118
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 119
    .local v5, "absVelX":F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 120
    .local v6, "absVelY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 121
    .local v20, "xDiff":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 122
    .local v21, "yDiff":I
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x19

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplay()Landroid/view/Display;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getRotation()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/4 v12, 0x1

    .line 124
    .local v12, "left":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 125
    cmpl-float v22, v5, v6

    if-lez v22, :cond_4

    const/16 v22, 0x0

    cmpl-float v22, p3, v22

    if-lez v22, :cond_3

    const/16 v22, 0x1

    :goto_1
    xor-int v22, v22, v12

    if-eqz v22, :cond_4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    const/4 v9, 0x1

    .line 127
    .local v9, "hideGesture":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 128
    const-string/jumbo v23, "force_immersive_nav_bar"

    const/16 v24, 0x0

    .line 127
    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 128
    const/16 v23, 0x1

    .line 127
    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    .line 130
    .local v8, "canHide":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v22, v22, v6

    cmpl-float v22, v5, v22

    if-lez v22, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mMinFlingVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v5, v22

    if-lez v22, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    const/16 v22, 0x1

    :goto_4
    move/from16 v11, v22

    .line 132
    .local v11, "isValidFling":Z
    :goto_5
    if-eqz v11, :cond_0

    .line 133
    const/16 v17, 0x0

    .line 134
    .local v17, "newmode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v16

    .line 135
    .local v16, "navigationBarView":Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .line 137
    .local v7, "background":Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getLocationOnScreen()[I

    move-result-object v15

    .line 138
    .local v15, "location":[I
    new-instance v10, Landroid/graphics/Rect;

    const/16 v22, 0x0

    aget v22, v15, v22

    const/16 v23, 0x1

    aget v23, v15, v23

    const/16 v24, 0x0

    aget v24, v15, v24

    .line 139
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v25

    .line 138
    add-int v24, v24, v25

    .line 139
    const/16 v25, 0x1

    aget v25, v15, v25

    .line 140
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v26

    .line 139
    add-int v25, v25, v26

    .line 138
    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    .local v10, "homeRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 144
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v13

    .line 145
    .local v13, "leftButton":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v18

    .line 151
    .local v18, "rightButton":Landroid/view/View;
    :goto_6
    invoke-virtual {v13}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v15

    .line 152
    new-instance v14, Landroid/graphics/Rect;

    const/16 v22, 0x0

    aget v22, v15, v22

    const/16 v23, 0x1

    aget v23, v15, v23

    const/16 v24, 0x0

    aget v24, v15, v24

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v24, v24, v25

    .line 153
    const/16 v25, 0x1

    aget v25, v15, v25

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    .line 152
    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    .local v14, "leftRect":Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v15

    .line 156
    new-instance v19, Landroid/graphics/Rect;

    const/16 v22, 0x0

    aget v22, v15, v22

    const/16 v23, 0x1

    aget v23, v15, v23

    const/16 v24, 0x0

    aget v24, v15, v24

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v24, v24, v25

    .line 157
    const/16 v25, 0x1

    aget v25, v15, v25

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    .line 156
    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    .local v19, "rightRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_b

    .line 160
    const/16 v17, 0x2

    .line 161
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->sendToHandyMode(I)V

    .line 162
    move-object/from16 v0, v19

    invoke-virtual {v7, v10, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->gestureSlideEffect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 170
    .end local v7    # "background":Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
    .end local v10    # "homeRect":Landroid/graphics/Rect;
    .end local v13    # "leftButton":Landroid/view/View;
    .end local v14    # "leftRect":Landroid/graphics/Rect;
    .end local v15    # "location":[I
    .end local v16    # "navigationBarView":Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .end local v17    # "newmode":I
    .end local v18    # "rightButton":Landroid/view/View;
    .end local v19    # "rightRect":Landroid/graphics/Rect;
    :cond_0
    :goto_7
    const/16 v22, 0x1

    return v22

    .line 123
    .end local v8    # "canHide":Z
    .end local v9    # "hideGesture":Z
    .end local v11    # "isValidFling":Z
    .end local v12    # "left":Z
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "left":Z
    goto/16 :goto_0

    .line 122
    .end local v12    # "left":Z
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "left":Z
    goto/16 :goto_0

    .line 125
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "hideGesture":Z
    goto/16 :goto_2

    .line 126
    .end local v9    # "hideGesture":Z
    :cond_5
    cmpl-float v22, v6, v5

    if-lez v22, :cond_6

    const/16 v22, 0x0

    cmpl-float v22, p4, v22

    if-lez v22, :cond_6

    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    const/4 v9, 0x1

    .restart local v9    # "hideGesture":Z
    goto/16 :goto_2

    .end local v9    # "hideGesture":Z
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "hideGesture":Z
    goto/16 :goto_2

    .line 127
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "canHide":Z
    goto/16 :goto_3

    .line 130
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 147
    .restart local v7    # "background":Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
    .restart local v10    # "homeRect":Landroid/graphics/Rect;
    .restart local v11    # "isValidFling":Z
    .restart local v15    # "location":[I
    .restart local v16    # "navigationBarView":Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .restart local v17    # "newmode":I
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v13

    .line 148
    .restart local v13    # "leftButton":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v18

    .restart local v18    # "rightButton":Landroid/view/View;
    goto/16 :goto_6

    .line 163
    .restart local v14    # "leftRect":Landroid/graphics/Rect;
    .restart local v19    # "rightRect":Landroid/graphics/Rect;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_0

    .line 164
    const/16 v17, 0x1

    .line 165
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->sendToHandyMode(I)V

    .line 166
    invoke-virtual {v7, v10, v14}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->gestureSlideEffect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 85
    .local v0, "action":I
    const/4 v2, 0x0

    .line 86
    .local v2, "intercepted":Z
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 88
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v3, v8

    .line 94
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 95
    .local v5, "y":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    sub-int v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 96
    .local v4, "xDiff":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    sub-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 97
    .local v6, "yDiff":I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    if-nez v8, :cond_2

    .line 98
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    if-le v4, v8, :cond_1

    if-le v4, v6, :cond_1

    move v1, v7

    .line 100
    .local v1, "exceededTouchSlop":Z
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 101
    return v7

    .line 99
    .end local v1    # "exceededTouchSlop":Z
    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    if-le v6, v8, :cond_1

    if-le v6, v4, :cond_1

    move v1, v7

    goto :goto_1

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 71
    return-void
.end method

.method public setBarState(ZZ)V
    .locals 0
    .param p1, "isVertical"    # Z
    .param p2, "isRTL"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    .line 77
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsRTL:Z

    .line 75
    return-void
.end method
