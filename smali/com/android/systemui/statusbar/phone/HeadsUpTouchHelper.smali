.class public Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
.super Ljava/lang/Object;
.source "HeadsUpTouchHelper.java"


# instance fields
.field private mCollapseSnoozes:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTouchSlop:F

.field private mTouchingHeadsUpView:Z

.field private mTrackingHeadsUp:Z

.field private mTrackingPointer:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 3
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .param p2, "stackScroller"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p3, "notificationPanelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p4, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 51
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 52
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 54
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    .line 47
    return-void
.end method

.method private endMotion()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    .line 155
    return-void
.end method

.method private setTrackingHeadsUp(Z)V
    .locals 1
    .param p1, "tracking"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setTrackingHeadsUp(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTrackingHeadsUp(Z)V

    .line 127
    return-void
.end method


# virtual methods
.method public isTrackingHeadsUp()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    return v0
.end method

.method public notifyFling(Z)V
    .locals 1
    .param p1, "collapse"    # Z

    .prologue
    .line 134
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snooze()V

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    .line 133
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 63
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-nez v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-eqz v7, :cond_0

    .line 64
    return v8

    .line 66
    :cond_0
    iget v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 67
    .local v3, "pointerIndex":I
    if-gez v3, :cond_1

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    .line 71
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 72
    .local v5, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 73
    .local v6, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 124
    :cond_2
    :goto_0
    :pswitch_0
    return v8

    .line 75
    :pswitch_1
    iput v6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    .line 76
    iput v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 77
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    .line 78
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v5, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 79
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    .line 80
    instance-of v7, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_2

    .line 81
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 82
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v7

    if-nez v7, :cond_3

    .line 83
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v7

    .line 82
    if-eqz v7, :cond_3

    .line 83
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v7

    .line 82
    :goto_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_1

    .line 87
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 88
    .local v4, "upPointer":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    if-ne v7, v4, :cond_2

    .line 90
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-eq v7, v4, :cond_4

    move v2, v8

    .line 91
    .local v2, "newIndex":I
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    .line 92
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 93
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    goto :goto_0

    .line 98
    .end local v2    # "newIndex":I
    .end local v4    # "upPointer":I
    :pswitch_3
    iget v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    sub-float v1, v6, v7

    .line 99
    .local v1, "h":F
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v7, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    .line 100
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    .line 102
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    .line 103
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->showReturnToInCallScreenButtonIfNeed()V

    .line 104
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v7, v9, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 105
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    .line 106
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll()V

    .line 107
    return v2

    .line 113
    .end local v1    # "h":F
    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v7, :cond_5

    .line 115
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 116
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 115
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldSwallowClick(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    .line 118
    return v2

    .line 121
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-nez v0, :cond_0

    .line 143
    return v1

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 148
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    .line 149
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
