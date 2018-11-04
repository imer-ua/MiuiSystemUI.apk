.class public Lcom/android/systemui/statusbar/NotificationContentView;
.super Landroid/widget/AbstractFrameLayout;
.source "NotificationContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationContentView$1;
    }
.end annotation


# instance fields
.field private mAmbientChild:Landroid/view/View;

.field private mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

.field private mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mAnimate:Z

.field private mAnimationStartVisibleType:I

.field private mBeforeN:Z

.field private mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mClipBottomAmount:I

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipToActualHeight:Z

.field private mClipTopAmount:I

.field private mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mContentHeight:I

.field private mContentHeightAtAnimationStart:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mDark:Z

.field private final mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedChild:Landroid/view/View;

.field private mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mExpandedVisibleListener:Ljava/lang/Runnable;

.field private mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mFocusOnVisibilityChange:Z

.field private mForceSelectNextLayout:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpChild:Landroid/view/View;

.field private mHeadsUpHeight:I

.field private mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field private mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mIconsVisible:Z

.field private mIsChildInGroup:Z

.field private mIsContentExpandable:Z

.field private mIsHeadsUp:Z

.field private mIsLowPriority:Z

.field private mLegacy:Z

.field private mLowPriorityNotificationHeight:I

.field private mMinContractedHeight:I

.field private mNotificationAmbientHeight:I

.field private mNotificationContentMarginEnd:I

.field private mNotificationMaxHeight:I

.field private mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

.field private mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

.field private mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

.field private mSingleLineWidthIndention:I

.field private mSmallHeight:I

.field private mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

.field private mTransformationStartVisibleType:I

.field private mUserExpanding:Z

.field private mVisibleType:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationContentView;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NotificationContentView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationContentView;I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1
    .param p1, "visibleType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/widget/AbstractFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    .line 101
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 126
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 129
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 135
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->initDimens()V

    .line 144
    return-void
.end method

.method private animateToVisibleType(I)V
    .locals 4
    .param p1, "visibleType"    # I

    .prologue
    .line 904
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 905
    .local v1, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 906
    .local v0, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    .line 907
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 908
    return-void

    .line 910
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 911
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 912
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 913
    new-instance v2, Lcom/android/systemui/statusbar/NotificationContentView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 903
    return-void
.end method

.method private applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "hasRemoteInput"    # Z
    .param p4, "existingPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "cachedView"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .param p6, "wrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1263
    const v6, 0x10203b0

    .line 1262
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1266
    .local v1, "actionContainerCandidate":Landroid/view/View;
    const v6, 0x10203ab

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1267
    .local v3, "actionsView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1268
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1271
    :cond_0
    instance-of v6, v1, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_8

    .line 1273
    sget-object v6, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 1272
    check-cast v4, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1275
    .local v4, "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    if-eqz v4, :cond_1

    .line 1276
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 1279
    :cond_1
    if-nez v4, :cond_2

    if-eqz p3, :cond_2

    move-object v0, v1

    .line 1280
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1281
    .local v0, "actionContainer":Landroid/view/ViewGroup;
    if-nez p5, :cond_6

    .line 1283
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1282
    invoke-static {v6, v0, p2, v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v5

    .line 1285
    .local v5, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    .line 1286
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    move-object v4, v5

    .line 1298
    .end local v0    # "actionContainer":Landroid/view/ViewGroup;
    .end local v5    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_2
    :goto_0
    if-eqz p3, :cond_5

    .line 1308
    invoke-virtual {v4, p6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setWrapper(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V

    .line 1310
    if-nez p4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1313
    :cond_3
    iget-object v6, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v2, v6, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1314
    .local v2, "actions":[Landroid/app/Notification$Action;
    if-eqz p4, :cond_4

    .line 1315
    invoke-virtual {v4, p4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 1317
    :cond_4
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1318
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1319
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    .line 1328
    .end local v2    # "actions":[Landroid/app/Notification$Action;
    :cond_5
    :goto_1
    return-object v4

    .line 1292
    .restart local v0    # "actionContainer":Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1293
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1294
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->requestFocus()Z

    .line 1295
    move-object v4, p5

    goto :goto_0

    .line 1322
    .end local v0    # "actionContainer":Landroid/view/ViewGroup;
    .restart local v2    # "actions":[Landroid/app/Notification$Action;
    :cond_7
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1323
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    goto :goto_1

    .line 1330
    .end local v2    # "actions":[Landroid/app/Notification$Action;
    .end local v4    # "existing":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_8
    return-object v7
.end method

.method private applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 14
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-nez v0, :cond_0

    .line 1210
    return-void

    .line 1213
    :cond_0
    const/4 v3, 0x0

    .line 1215
    .local v3, "hasRemoteInput":Z
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v12, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1216
    .local v12, "actions":[Landroid/app/Notification$Action;
    if-eqz v12, :cond_3

    .line 1217
    const/4 v0, 0x0

    array-length v4, v12

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v11, v12, v2

    .line 1218
    .local v11, "a":Landroid/app/Notification$Action;
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1219
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    const/4 v0, 0x0

    array-length v7, v6

    :goto_1
    if-ge v0, v7, :cond_1

    aget-object v13, v6, v0

    .line 1220
    .local v13, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v13}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1221
    const/4 v3, 0x1

    .line 1217
    .end local v13    # "ri":Landroid/app/RemoteInput;
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1219
    .restart local v13    # "ri":Landroid/app/RemoteInput;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1229
    .end local v11    # "a":Landroid/app/Notification$Action;
    .end local v13    # "ri":Landroid/app/RemoteInput;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 1230
    .local v1, "bigContentView":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 1232
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1233
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object v0, p0

    move-object v2, p1

    .line 1231
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1237
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_4

    .line 1238
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v2, :cond_4

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1242
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1244
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 1245
    .local v5, "headsUpContentView":Landroid/view/View;
    if-eqz v5, :cond_7

    .line 1247
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object v4, p0

    move-object v6, p1

    move v7, v3

    .line 1246
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;ZLandroid/app/PendingIntent;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1251
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_5

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eq v0, v2, :cond_5

    .line 1254
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchFinishTemporaryDetach()V

    .line 1256
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 1208
    return-void

    .line 1235
    .end local v5    # "headsUpContentView":Landroid/view/View;
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_2

    .line 1249
    .restart local v5    # "headsUpContentView":Landroid/view/View;
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    goto :goto_3
.end method

.method private calculateTransformationAmount()F
    .locals 7

    .prologue
    .line 682
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 683
    .local v3, "startHeight":I
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 684
    .local v1, "endHeight":I
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 685
    .local v2, "progress":I
    sub-int v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 686
    .local v4, "totalDistance":I
    int-to-float v5, v2

    int-to-float v6, v4

    div-float v0, v5, v6

    .line 687
    .local v0, "amount":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    return v5
.end method

.method private fireExpandedVisibleListenerIfVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 819
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 822
    .local v0, "listener":Ljava/lang/Runnable;
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 823
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 818
    .end local v0    # "listener":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private focusExpandButtonIfNecessary()V
    .locals 3

    .prologue
    .line 538
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    if-eqz v2, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    .line 540
    .local v1, "header":Landroid/view/NotificationHeaderView;
    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getExpandButton()Landroid/widget/ImageView;

    move-result-object v0

    .line 542
    .local v0, "expandButton":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestAccessibilityFocus()Z

    .line 546
    .end local v0    # "expandButton":Landroid/widget/ImageView;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 537
    .end local v1    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    return-void
.end method

.method private forceUpdateVisibilities()V
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 811
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 810
    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 812
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 815
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 804
    return-void
.end method

.method private forceUpdateVisibility(ILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "wrapper"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    const/4 v1, 0x1

    .line 828
    if-nez p2, :cond_0

    .line 829
    return-void

    .line 831
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v2, p1, :cond_1

    .line 832
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v2, p1, :cond_2

    move v0, v1

    .line 833
    .local v0, "visible":Z
    :goto_0
    if-nez v0, :cond_3

    .line 834
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 827
    :goto_1
    return-void

    .end local v0    # "visible":Z
    :cond_1
    move v0, v1

    .line 831
    goto :goto_0

    .line 832
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 836
    .restart local v0    # "visible":Z
    :cond_3
    invoke-interface {p3, v1}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    goto :goto_1
.end method

.method private getChildWidthSpec(ILandroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 3
    .param p1, "parentWidthSpec"    # I
    .param p2, "childLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 311
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 312
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 313
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    .line 312
    sub-int/2addr v1, v2

    .line 313
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    .line 312
    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 314
    .local v0, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 316
    .end local v0    # "widthSize":I
    :cond_0
    return p1
.end method

.method private getMinContentHeightHint()I
    .locals 8

    .prologue
    const v7, 0x1050047

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 576
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .line 582
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 584
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 585
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isTransitioningFromTo(II)Z

    move-result v2

    .line 586
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 587
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 586
    if-eqz v3, :cond_5

    .line 588
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    .line 589
    .local v1, "pinned":Z
    :goto_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_6

    .line 590
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

    .line 584
    .end local v1    # "pinned":Z
    :cond_3
    const/4 v2, 0x1

    .local v2, "transitioningBetweenHunAndExpanded":Z
    goto :goto_0

    .line 588
    .end local v2    # "transitioningBetweenHunAndExpanded":Z
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "pinned":Z
    goto :goto_1

    .line 586
    .end local v1    # "pinned":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "pinned":Z
    goto :goto_1

    .line 595
    .end local v1    # "pinned":Z
    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v3, v5, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    if-ltz v3, :cond_7

    .line 596
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 597
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

    .line 601
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 602
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 615
    .local v0, "hint":I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 616
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 618
    :cond_8
    return v0

    .line 603
    .end local v0    # "hint":I
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v3, :cond_a

    .line 604
    const/4 v3, 0x5

    .line 603
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 605
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    .restart local v0    # "hint":I
    goto :goto_2

    .line 606
    .end local v0    # "hint":I
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_b

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->isVisibleOrTransitioning(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 607
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .restart local v0    # "hint":I
    goto :goto_2

    .line 608
    .end local v0    # "hint":I
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_c

    .line 609
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .restart local v0    # "hint":I
    goto :goto_2

    .line 611
    .end local v0    # "hint":I
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v0, v3, v4

    .restart local v0    # "hint":I
    goto :goto_2
.end method

.method private getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;
    .locals 1
    .param p1, "visibleType"    # I

    .prologue
    .line 947
    packed-switch p1, :pswitch_data_0

    .line 959
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 949
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 951
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 953
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 955
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 957
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 947
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getVisualTypeForHeight(F)I
    .locals 5
    .param p1, "viewHeight"    # F

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1051
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isForceShowHeadUpChild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1053
    return v4

    .line 1055
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v3, :cond_1

    move v0, v1

    .line 1056
    .local v0, "noExpandedChild":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_2

    .line 1057
    return v1

    .end local v0    # "noExpandedChild":Z
    :cond_1
    move v0, v2

    .line 1055
    goto :goto_0

    .line 1059
    .restart local v0    # "noExpandedChild":Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1063
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1064
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1071
    :cond_5
    if-nez v0, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_6

    .line 1072
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1073
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1076
    :cond_6
    return v1

    .line 1060
    :cond_7
    const/4 v1, 0x3

    return v1

    .line 1065
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_9

    if-eqz v0, :cond_a

    .line 1066
    :cond_9
    return v4

    .line 1068
    :cond_a
    return v1

    .line 1074
    :cond_b
    return v2
.end method

.method private initDimens()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 152
    const v1, 0x90f00ae

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    const v1, 0x1050044

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    const v1, 0x90f00af

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLowPriorityNotificationHeight:I

    .line 150
    return-void
.end method

.method private isForceShowHeadUpChild()Z
    .locals 1

    .prologue
    .line 1000
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->sGameMode:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->sIsStatusBarHidden:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1001
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 1000
    if-eqz v0, :cond_2

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1005
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1003
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isGroupExpanded()Z
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTransitioningFromTo(II)Z
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v0, 0x0

    .line 622
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v1, p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-ne v1, p1, :cond_1

    .line 623
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v1, p2, :cond_1

    const/4 v0, 0x1

    .line 622
    :cond_1
    return v0
.end method

.method private isVisibleOrTransitioning(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 627
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v1, p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 628
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectLayout(ZZ)V
    .locals 7
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 767
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v6, :cond_0

    .line 768
    return-void

    .line 771
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v6, :cond_2

    .line 772
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContentTransformation()V

    .line 766
    :cond_1
    :goto_0
    return-void

    .line 774
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v1

    .line 775
    .local v1, "visibleType":I
    iget v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v1, v6, :cond_8

    move v0, v4

    .line 776
    .local v0, "changedType":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    .line 777
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    .line 778
    .local v2, "visibleView":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 779
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 780
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->transferRemoteInputFocus(I)V

    .line 783
    :cond_4
    if-eqz p1, :cond_c

    if-ne v1, v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 787
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->animateToVisibleType(I)V

    .line 791
    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 792
    if-eqz v0, :cond_6

    .line 793
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->focusExpandButtonIfNecessary()V

    .line 795
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    .line 796
    .local v3, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v3, :cond_7

    .line 797
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 799
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_0

    .end local v0    # "changedType":Z
    .end local v2    # "visibleView":Landroid/view/View;
    .end local v3    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_8
    move v0, v5

    .line 775
    goto :goto_1

    .line 784
    .restart local v0    # "changedType":Z
    .restart local v2    # "visibleView":Landroid/view/View;
    :cond_9
    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v4, :cond_5

    .line 785
    :cond_a
    const/4 v4, 0x3

    if-ne v1, v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v4, :cond_5

    .line 786
    :cond_b
    if-eqz v1, :cond_5

    .line 789
    :cond_c
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    goto :goto_2
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 524
    if-eqz p1, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 523
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    goto :goto_0
.end method

.method private shouldContractedBeFixedSize()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transferRemoteInputFocus(I)V
    .locals 2
    .param p1, "visibleType"    # I

    .prologue
    .line 930
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    .line 930
    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 935
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    .line 935
    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    .line 929
    :cond_1
    return-void
.end method

.method private updateAllSingleLineViews()V
    .locals 0

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateSingleLineView()V

    .line 1186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAmbientSingleLineView()V

    .line 1184
    return-void
.end method

.method private updateAmbientSingleLineView()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 1201
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 1200
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindAmbientFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1204
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    goto :goto_0
.end method

.method private updateBackgroundTransformation(F)V
    .locals 4
    .param p1, "transformationAmount"    # F

    .prologue
    const/4 v3, 0x0

    .line 665
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 666
    .local v0, "endColor":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v1

    .line 667
    .local v1, "startColor":I
    if-eq v0, v1, :cond_2

    .line 668
    if-nez v1, :cond_0

    .line 669
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v1

    .line 671
    :cond_0
    if-nez v0, :cond_1

    .line 672
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v0

    .line 674
    :cond_1
    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 677
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundAlpha(F)V

    .line 678
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 664
    return-void
.end method

.method private updateClipping()V
    .locals 5

    .prologue
    .line 750
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    if-eqz v2, :cond_0

    .line 751
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 752
    .local v1, "top":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 753
    .local v0, "bottom":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 754
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 755
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 749
    .end local v0    # "bottom":I
    .end local v1    # "top":I
    :goto_0
    return-void

    .line 757
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private updateContentTransformation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v3

    .line 633
    .local v3, "visibleType":I
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eq v3, v4, :cond_0

    .line 635
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 636
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 638
    .local v1, "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 637
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 639
    .local v0, "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    invoke-interface {v1, v0, v5}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 640
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 641
    invoke-interface {v0, v1, v5}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 642
    iput v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 643
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 645
    .end local v0    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    if-eqz v4, :cond_1

    .line 646
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceUpdateVisibilities()V

    .line 648
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 649
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-eq v4, v5, :cond_2

    .line 650
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 651
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    .line 653
    .restart local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 652
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getTransformableViewForVisibleType(I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v0

    .line 654
    .restart local v0    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateTransformationAmount()F

    move-result v2

    .line 655
    .local v2, "transformationAmount":F
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 656
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/TransformableView;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 657
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundTransformation(F)V

    .line 631
    .end local v0    # "hiddenView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v1    # "shownView":Lcom/android/systemui/statusbar/TransformableView;
    .end local v2    # "transformationAmount":F
    :goto_0
    return-void

    .line 659
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 660
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_0
.end method

.method private updateContractedHeaderWidth()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 323
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    .line 324
    .local v1, "contractedHeader":Landroid/view/NotificationHeaderView;
    if-eqz v1, :cond_5

    .line 325
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 326
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 327
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/NotificationHeaderView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 328
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    .line 329
    .local v2, "expandedHeader":Landroid/view/NotificationHeaderView;
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    .line 330
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v6

    .line 329
    sub-int v3, v5, v6

    .line 331
    .local v3, "expandedSize":I
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    .line 332
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v6

    .line 331
    sub-int v0, v5, v6

    .line 333
    .local v0, "collapsedSize":I
    if-eq v3, v0, :cond_5

    .line 334
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    sub-int v4, v5, v3

    .line 336
    .local v4, "paddingEnd":I
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    .line 339
    :goto_0
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v6

    .line 340
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v4

    .line 343
    .end local v4    # "paddingEnd":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v7

    .line 335
    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 344
    invoke-virtual {v1, v9}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 345
    return v9

    .line 338
    .restart local v4    # "paddingEnd":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v5

    goto :goto_0

    .line 348
    .end local v0    # "collapsedSize":I
    .end local v2    # "expandedHeader":Landroid/view/NotificationHeaderView;
    .end local v3    # "expandedSize":I
    .end local v4    # "paddingEnd":I
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationContentMarginEnd:I

    .line 349
    .restart local v4    # "paddingEnd":I
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v5

    if-eq v5, v4, :cond_5

    .line 351
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    .line 354
    :goto_1
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v6

    .line 355
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 356
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v4

    .line 358
    .end local v4    # "paddingEnd":I
    :cond_3
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v7

    .line 350
    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/view/NotificationHeaderView;->setPadding(IIII)V

    .line 359
    invoke-virtual {v1, v8}, Landroid/view/NotificationHeaderView;->setShowWorkBadgeAtEnd(Z)V

    .line 360
    return v9

    .line 353
    .restart local v4    # "paddingEnd":I
    :cond_4
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingLeft()I

    move-result v5

    goto :goto_1

    .line 364
    .end local v4    # "paddingEnd":I
    :cond_5
    return v8
.end method

.method private updateIconVisibilities()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1480
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_0

    .line 1481
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1482
    .local v0, "header":Landroid/view/NotificationHeaderView;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroid/view/NotificationHeaderViewCompat;->setIconForceHidden(Landroid/view/NotificationHeaderView;Z)V

    .line 1484
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1486
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Landroid/view/NotificationHeaderViewCompat;->setIconForceHidden(Landroid/view/NotificationHeaderView;Z)V

    .line 1488
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_2

    .line 1489
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1490
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    if-eqz v1, :cond_5

    :goto_2
    invoke-static {v0, v2}, Landroid/view/NotificationHeaderViewCompat;->setIconForceHidden(Landroid/view/NotificationHeaderView;Z)V

    .line 1479
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_2
    return-void

    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_3
    move v1, v3

    .line 1482
    goto :goto_0

    :cond_4
    move v1, v3

    .line 1486
    goto :goto_1

    :cond_5
    move v2, v3

    .line 1490
    goto :goto_2
.end method

.method private updateLegacy()V
    .locals 2

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 1131
    :cond_2
    return-void
.end method

.method private updateSingleLineView()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1189
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 1191
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 1190
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1194
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    goto :goto_0
.end method

.method private updateViewVisibilities(I)V
    .locals 3
    .param p1, "visibleType"    # I

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 870
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 872
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 874
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 877
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 876
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 878
    const/4 v2, 0x4

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 880
    const/4 v2, 0x5

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V

    .line 882
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 885
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    .line 886
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->requestLayout()V

    .line 869
    :cond_0
    return-void
.end method

.method private updateViewVisibility(IILandroid/view/View;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "visibleType"    # I
    .param p2, "type"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "wrapper"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 894
    if-eqz p3, :cond_0

    .line 895
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p4, v0}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 893
    :cond_0
    return-void

    .line 895
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVisibility()V
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisible(Z)V

    .line 513
    return-void
.end method


# virtual methods
.method public calculateVisibleType()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1016
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1017
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v5, :cond_0

    .line 1018
    const/4 v5, 0x5

    return v5

    .line 1019
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 1020
    const/4 v5, 0x4

    return v5

    .line 1022
    :cond_1
    return v6

    .line 1025
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    if-eqz v5, :cond_9

    .line 1026
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1027
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v5

    .line 1026
    if-eqz v5, :cond_6

    .line 1028
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxContentHeight()I

    move-result v2

    .line 1030
    .local v2, "height":I
    :goto_0
    if-nez v2, :cond_4

    .line 1031
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 1033
    :cond_4
    int-to-float v5, v2

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v1

    .line 1034
    .local v1, "expandedVisualType":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1036
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v0

    .line 1037
    .local v0, "collapsedVisualType":I
    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v5, v0, :cond_8

    .end local v1    # "expandedVisualType":I
    :goto_2
    return v1

    .line 1029
    .end local v0    # "collapsedVisualType":I
    .end local v2    # "height":I
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v2

    goto :goto_0

    .line 1035
    .restart local v1    # "expandedVisualType":I
    .restart local v2    # "height":I
    :cond_7
    const/4 v0, 0x3

    .restart local v0    # "collapsedVisualType":I
    goto :goto_1

    :cond_8
    move v1, v0

    .line 1039
    goto :goto_2

    .line 1041
    .end local v0    # "collapsedVisualType":I
    .end local v1    # "expandedVisualType":I
    .end local v2    # "height":I
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExtraPadding()I

    move-result v6

    sub-int v3, v5, v6

    .line 1042
    .local v3, "intrinsicHeight":I
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 1043
    .local v4, "viewHeight":I
    if-eqz v3, :cond_a

    .line 1045
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1047
    :cond_a
    int-to-float v5, v4

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisualTypeForHeight(F)I

    move-result v5

    return v5
.end method

.method public closeRemoteInput()V
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 1333
    :cond_1
    return-void
.end method

.method public getAmbientChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0
.end method

.method public getAmbientSingleLineChild()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getBackgroundColor(I)I
    .locals 2
    .param p1, "visibleType"    # I

    .prologue
    .line 861
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 862
    .local v0, "currentVisibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    const/4 v1, 0x0

    .line 863
    .local v1, "customBackgroundColor":I
    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v1

    .line 866
    :cond_0
    return v1
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 699
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 700
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Z)I
    .locals 1
    .param p1, "likeGroupExpanded"    # Z

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getShowingAmbientView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 712
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .prologue
    .line 1380
    const/4 v0, 0x0

    .line 1381
    .local v0, "header":Landroid/view/NotificationHeaderView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1382
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1384
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1385
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1387
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1388
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1390
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1391
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1393
    :cond_3
    return-object v0
.end method

.method public getShowingAmbientView()Landroid/view/View;
    .locals 2

    .prologue
    .line 720
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 721
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 722
    return-object v0

    .line 720
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    goto :goto_0

    .line 724
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v1
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0
.end method

.method public getViewForVisibleType(I)Landroid/view/View;
    .locals 1
    .param p1, "visibleType"    # I

    .prologue
    .line 968
    packed-switch p1, :pswitch_data_0

    .line 980
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0

    .line 970
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0

    .line 972
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0

    .line 974
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 976
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    return-object v0

    .line 978
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    return-object v0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1397
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    .line 1398
    .local v0, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    goto :goto_0
.end method

.method public getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "visibleType"    # I

    .prologue
    .line 985
    packed-switch p1, :pswitch_data_0

    .line 995
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 987
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 989
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 991
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 993
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1123
    const/4 v0, 0x0

    return v0
.end method

.method isAnimatingVisibleType()Z
    .locals 2

    .prologue
    .line 1462
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentExpandable()Z
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    return v0
.end method

.method public isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    return v0

    .line 1533
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0
.end method

.method public isDimmable()Z
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1517
    const/4 v0, 0x0

    return v0

    .line 1519
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isExpansionChanging()Z
    .locals 2

    .prologue
    .line 900
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimationStartVisibleType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;

    return v0

    .line 1526
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Landroid/widget/AbstractFrameLayout;->onAttachedToWindow()V

    .line 391
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 389
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->initDimens()V

    .line 167
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 519
    invoke-super {p0}, Landroid/widget/AbstractFrameLayout;->onDetachedFromWindow()V

    .line 520
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 518
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "previousHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 377
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AbstractFrameLayout;->onLayout(ZIIII)V

    .line 378
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 379
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 383
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 384
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 385
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 372
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 173
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 174
    .local v6, "heightMode":I
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-ne v6, v0, :cond_11

    const/4 v4, 0x1

    .line 175
    .local v4, "hasFixedHeight":Z
    :goto_0
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v6, v0, :cond_12

    const/4 v8, 0x1

    .line 176
    .local v8, "isHeightLimited":Z
    :goto_1
    const v11, 0x7fffffff

    .line 177
    .local v11, "maxSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 181
    .local v18, "width":I
    if-nez v4, :cond_0

    if-eqz v8, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 184
    :cond_1
    :goto_2
    const/4 v10, 0x0

    .line 185
    .local v10, "maxChildHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 187
    .local v15, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 188
    .local v9, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 189
    .local v17, "useExactly":Z
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    if-ltz v20, :cond_2

    .line 191
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 192
    const/16 v17, 0x1

    .line 194
    :cond_2
    const v20, 0x7fffffff

    move/from16 v0, v20

    if-ne v15, v0, :cond_14

    .line 195
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 199
    .local v16, "spec":I
    :goto_3
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildWidthSpec(ILandroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v19

    .line 200
    .local v19, "widthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 203
    .end local v15    # "size":I
    .end local v16    # "spec":I
    .end local v17    # "useExactly":Z
    .end local v19    # "widthSpec":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 206
    .restart local v15    # "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 207
    .restart local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 208
    .restart local v17    # "useExactly":Z
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    if-ltz v20, :cond_4

    .line 210
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 211
    const/16 v17, 0x1

    .line 213
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 215
    const v20, 0x7fffffff

    const/high16 v21, -0x80000000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 223
    .local v7, "heightSpec":I
    :goto_4
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildWidthSpec(ILandroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v19

    .line 224
    .restart local v19    # "widthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 226
    .local v12, "measuredHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_5

    .line 227
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsLowPriority:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mLowPriorityNotificationHeight:I

    .line 228
    .local v5, "height":I
    :goto_5
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 231
    .end local v5    # "height":I
    :cond_5
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateContractedHeaderWidth()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 235
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    .line 239
    const/high16 v21, 0x40000000    # 2.0f

    .line 238
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 243
    .end local v7    # "heightSpec":I
    .end local v12    # "measuredHeight":I
    .end local v15    # "size":I
    .end local v17    # "useExactly":Z
    .end local v19    # "widthSpec":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 245
    .restart local v15    # "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 246
    .restart local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 247
    .restart local v17    # "useExactly":Z
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    if-ltz v20, :cond_8

    .line 249
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 250
    const/16 v17, 0x1

    .line 252
    :cond_8
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildWidthSpec(ILandroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v19

    .line 253
    .restart local v19    # "widthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    move-object/from16 v21, v0

    .line 254
    if-eqz v17, :cond_1a

    const/high16 v20, 0x40000000    # 2.0f

    :goto_6
    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 253
    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 258
    .end local v15    # "size":I
    .end local v17    # "useExactly":Z
    .end local v19    # "widthSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    .line 259
    move/from16 v14, p1

    .line 260
    .local v14, "singleLineWidthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 261
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    if-eqz v20, :cond_a

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    move/from16 v20, v0

    sub-int v20, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v21

    add-int v20, v20, v21

    .line 264
    const/high16 v21, 0x40000000    # 2.0f

    .line 262
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 266
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v20, v0

    .line 267
    const/high16 v21, -0x80000000

    move/from16 v0, v21

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 266
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 270
    .end local v14    # "singleLineWidthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 272
    .restart local v15    # "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 273
    .restart local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 274
    .restart local v17    # "useExactly":Z
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    if-ltz v20, :cond_c

    .line 276
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 277
    const/16 v17, 0x1

    .line 279
    :cond_c
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildWidthSpec(ILandroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v19

    .line 280
    .restart local v19    # "widthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    move-object/from16 v21, v0

    .line 281
    if-eqz v17, :cond_1b

    const/high16 v20, 0x40000000    # 2.0f

    :goto_7
    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 280
    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 285
    .end local v15    # "size":I
    .end local v17    # "useExactly":Z
    .end local v19    # "widthSpec":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 287
    .restart local v15    # "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 288
    .restart local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 289
    .restart local v17    # "useExactly":Z
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    if-ltz v20, :cond_e

    .line 291
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 292
    const/16 v17, 0x1

    .line 294
    :cond_e
    move/from16 v3, p1

    .line 295
    .local v3, "ambientSingleLineWidthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 296
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    if-eqz v20, :cond_f

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    move/from16 v20, v0

    sub-int v20, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getPaddingEnd()I

    move-result v21

    add-int v20, v20, v21

    .line 299
    const/high16 v21, 0x40000000    # 2.0f

    .line 297
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 301
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v21, v0

    .line 302
    if-eqz v17, :cond_1c

    const/high16 v20, 0x40000000    # 2.0f

    :goto_8
    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 301
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->measure(II)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientSingleLineChild:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 306
    .end local v3    # "ambientSingleLineWidthSpec":I
    .end local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v15    # "size":I
    .end local v17    # "useExactly":Z
    :cond_10
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 307
    .local v13, "ownHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/statusbar/NotificationContentView;->setMeasuredDimension(II)V

    .line 172
    return-void

    .line 174
    .end local v4    # "hasFixedHeight":Z
    .end local v8    # "isHeightLimited":Z
    .end local v10    # "maxChildHeight":I
    .end local v11    # "maxSize":I
    .end local v13    # "ownHeight":I
    .end local v18    # "width":I
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "hasFixedHeight":Z
    goto/16 :goto_0

    .line 175
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "isHeightLimited":Z
    goto/16 :goto_1

    .line 182
    .restart local v11    # "maxSize":I
    .restart local v18    # "width":I
    :cond_13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    goto/16 :goto_2

    .line 196
    .restart local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v10    # "maxChildHeight":I
    .restart local v15    # "size":I
    .restart local v17    # "useExactly":Z
    :cond_14
    if-eqz v17, :cond_15

    .line 197
    const/high16 v20, 0x40000000    # 2.0f

    .line 196
    :goto_9
    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .restart local v16    # "spec":I
    goto/16 :goto_3

    .line 198
    .end local v16    # "spec":I
    :cond_15
    const/high16 v20, -0x80000000

    goto :goto_9

    .line 217
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationContentView;->shouldContractedBeFixedSize()Z

    move-result v20

    if-nez v20, :cond_17

    if-eqz v17, :cond_18

    .line 218
    :cond_17
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "heightSpec":I
    goto/16 :goto_4

    .line 220
    .end local v7    # "heightSpec":I
    :cond_18
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "heightSpec":I
    goto/16 :goto_4

    .line 227
    .end local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v12    # "measuredHeight":I
    .restart local v19    # "widthSpec":I
    :cond_19
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/NotificationContentView;->mMinContractedHeight:I

    goto/16 :goto_5

    .line 255
    .end local v7    # "heightSpec":I
    .end local v12    # "measuredHeight":I
    :cond_1a
    const/high16 v20, -0x80000000

    goto/16 :goto_6

    .line 282
    :cond_1b
    const/high16 v20, -0x80000000

    goto/16 :goto_7

    .line 303
    .end local v19    # "widthSpec":I
    .restart local v3    # "ambientSingleLineWidthSpec":I
    .restart local v9    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    const/high16 v20, -0x80000000

    goto :goto_8
.end method

.method public onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1161
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mStatusBarNotification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 1162
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v3, 0x18

    if-ge v0, v3, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBeforeN:Z

    .line 1163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1170
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1173
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1176
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->applyRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    .line 1178
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mForceSelectNextLayout:Z

    .line 1179
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 1180
    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1181
    iput-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 1160
    return-void

    :cond_4
    move v0, v2

    .line 1162
    goto :goto_0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 1495
    invoke-super {p0, p1}, Landroid/widget/AbstractFrameLayout;->onVisibilityAggregated(Z)V

    .line 1496
    if-eqz p1, :cond_0

    .line 1497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1494
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 509
    invoke-super {p0, p1, p2}, Landroid/widget/AbstractFrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 510
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 508
    return-void
.end method

.method public reInflateViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 1412
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 1413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1409
    :cond_0
    return-void
.end method

.method public requestSelectLayout(Z)V
    .locals 1
    .param p1, "needsAnimation"    # Z

    .prologue
    .line 1406
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1405
    return-void
.end method

.method public setAmbientChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 498
    :cond_0
    if-nez p1, :cond_1

    .line 499
    return-void

    .line 501
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 502
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    .line 503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 503
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 493
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 739
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBottomAmount:I

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 738
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0
    .param p1, "clipToActualHeight"    # Z

    .prologue
    .line 762
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipToActualHeight:Z

    .line 763
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 761
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 733
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    .line 734
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 732
    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "containingNotification"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1401
    return-void
.end method

.method public setContentHeight(I)V
    .locals 4
    .param p1, "contentHeight"    # I

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeight()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 552
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 554
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinContentHeightHint()I

    move-result v0

    .line 556
    .local v0, "minHeightHint":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    .line 557
    .local v1, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v1, :cond_0

    .line 558
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 561
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    .line 562
    if-eqz v1, :cond_1

    .line 563
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setContentHeight(II)V

    .line 566
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 567
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 550
    return-void
.end method

.method public setContentHeightAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .prologue
    .line 1455
    if-nez p1, :cond_0

    .line 1456
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeightAtAnimationStart:I

    .line 1454
    :cond_0
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 419
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 420
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 421
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 414
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    const/4 v0, 0x0

    .line 1086
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1087
    return-void

    .line 1089
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    .line 1090
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 1093
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_5

    .line 1096
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_6

    .line 1099
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    if-eqz p1, :cond_7

    .line 1102
    :cond_3
    :goto_3
    if-nez p1, :cond_8

    .end local p2    # "fade":Z
    :goto_4
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1085
    return-void

    .line 1091
    .restart local p2    # "fade":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    goto :goto_0

    .line 1094
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    goto :goto_1

    .line 1097
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    goto :goto_2

    .line 1100
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->setDark(ZZJ)V

    goto :goto_3

    :cond_8
    move p2, v0

    .line 1102
    goto :goto_4
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "expandClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 1350
    return-void
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 428
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousExpandedRemoteInputIntent:Landroid/app/PendingIntent;

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 440
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 442
    :cond_1
    if-nez p1, :cond_4

    .line 443
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 444
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 445
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, v3, :cond_2

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 448
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v3, :cond_3

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 451
    :cond_3
    return-void

    .line 453
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 454
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 455
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 426
    return-void
.end method

.method public setFocusOnVisibilityChange()V
    .locals 1

    .prologue
    .line 1471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFocusOnVisibilityChange:Z

    .line 1470
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 1342
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2
    .param p1, "headsUp"    # Z

    .prologue
    .line 1106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    if-eqz v0, :cond_0

    .line 1108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->show()V

    .line 1114
    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1105
    return-void

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->hide()V

    goto :goto_0
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 2
    .param p1, "headsUpAnimatingAway"    # Z

    .prologue
    .line 1466
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    .line 1467
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 1465
    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 461
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onNotificationUpdateOrReset()V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mPreviousHeadsUpRemoteInputIntent:Landroid/app/PendingIntent;

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mCachedHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->dispatchStartTemporaryDetach()V

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 473
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 475
    :cond_1
    if-nez p1, :cond_4

    .line 476
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 477
    iput-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 478
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, v3, :cond_2

    .line 479
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 481
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    if-ne v0, v3, :cond_3

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 484
    :cond_3
    return-void

    .line 486
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 487
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 488
    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsHeadsUpViewWrapper(Z)V

    .line 459
    return-void
.end method

.method public setHeights(IIII)V
    .locals 0
    .param p1, "smallHeight"    # I
    .param p2, "headsUpMaxHeight"    # I
    .param p3, "maxHeight"    # I
    .param p4, "ambientHeight"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 162
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 163
    iput p3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationMaxHeight:I

    .line 164
    iput p4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mNotificationAmbientHeight:I

    .line 160
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 0
    .param p1, "iconsVisible"    # Z

    .prologue
    .line 1475
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIconsVisible:Z

    .line 1476
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateIconVisibilities()V

    .line 1474
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2
    .param p1, "isChildInGroup"    # Z

    .prologue
    .line 1144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAmbientWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsChildInGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 1157
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateAllSingleLineViews()V

    .line 1143
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0
    .param p1, "isLowPriority"    # Z

    .prologue
    .line 1512
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsLowPriority:Z

    .line 1511
    return-void
.end method

.method public setLegacy(Z)V
    .locals 0
    .param p1, "legacy"    # Z

    .prologue
    .line 1127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLegacy:Z

    .line 1128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLegacy()V

    .line 1126
    return-void
.end method

.method public setOnExpandedVisibleListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedVisibleListener:Ljava/lang/Runnable;

    .line 1508
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->fireExpandedVisibleListenerIfVisible()V

    .line 1506
    return-void
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0
    .param p1, "r"    # Lcom/android/systemui/statusbar/RemoteInputController;

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 1346
    return-void
.end method

.method public setRemoved()V
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    .line 1450
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoved()V

    .line 1445
    :cond_1
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 1
    .param p1, "singleLineWidthIndention"    # I

    .prologue
    .line 1434
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    if-eq p1, v0, :cond_0

    .line 1435
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSingleLineWidthIndention:I

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->forceLayout()V

    .line 1437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->forceLayout()V

    .line 1433
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .prologue
    .line 745
    invoke-super {p0, p1}, Landroid/widget/AbstractFrameLayout;->setTranslationY(F)V

    .line 746
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 744
    return-void
.end method

.method public setUserExpanding(Z)V
    .locals 1
    .param p1, "userExpanding"    # Z

    .prologue
    .line 1418
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUserExpanding:Z

    .line 1419
    if-eqz p1, :cond_0

    .line 1420
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 1417
    :goto_0
    return-void

    .line 1422
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mTransformationStartVisibleType:I

    .line 1423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 1424
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    .line 1425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    goto :goto_0
.end method

.method public updateBackgroundColor(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 841
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColor(I)I

    move-result v0

    .line 842
    .local v0, "customBackgroundColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    .line 843
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0, p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 840
    return-void
.end method

.method public updateExpandButtons(Z)V
    .locals 2
    .param p1, "expandable"    # Z

    .prologue
    .line 1355
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandable:Z

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1358
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_1

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v0, :cond_6

    .line 1360
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1361
    const/4 p1, 0x0

    .line 1367
    .end local p1    # "expandable":Z
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1370
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1373
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 1376
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsContentExpandable:Z

    .line 1354
    return-void

    .line 1359
    .restart local p1    # "expandable":Z
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    .line 1358
    if-nez v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1364
    const/4 p1, 0x0

    .local p1, "expandable":Z
    goto :goto_0
.end method
