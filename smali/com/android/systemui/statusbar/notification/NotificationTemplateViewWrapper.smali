.class public Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private mActionList:Landroid/view/ViewGroup;

.field private mActionsContainer:Landroid/view/View;

.field private mChronometerStub:Landroid/view/ViewStub;

.field private mContentHeight:I

.field private mLine1Container:Landroid/widget/LinearLayout;

.field protected mMainColumn:Landroid/view/View;

.field private mMinHeightHint:I

.field private mMiuiAction:Landroid/widget/TextView;

.field protected mNotificationMainContainer:Landroid/view/View;

.field protected mPicture:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarPaddingLine1:I

.field private mProgressBarPaddingLine2:I

.field private mText:Landroid/widget/TextView;

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field protected mTime:Landroid/widget/DateTimeView;

.field private mTitle:Landroid/widget/TextView;

.field private mUpArrow:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/ProgressBar;F)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "intensity"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 93
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    .line 155
    const/4 v2, 0x2

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 90
    return-void
.end method

.method private fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$4;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/ProgressBar;)V

    .line 630
    const/4 v6, 0x0

    move v3, p2

    move-wide v4, p3

    .line 624
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 623
    return-void
.end method

.method private handleActions()V
    .locals 7

    .prologue
    .line 244
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 245
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 246
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x10203aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "action":Landroid/view/View;
    sget-boolean v4, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v4, :cond_0

    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 249
    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    const v6, 0x90c00a6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 251
    :cond_0
    invoke-static {v0}, Lcom/android/internal/widget/NotificationActionCompat;->setEmphasizedNotificationButtonBgIfNeed(Landroid/view/View;)V

    .line 252
    invoke-static {v0}, Lcom/android/internal/widget/NotificationActionCompat;->removeCompoundDrawableIfNeed(Landroid/view/View;)V

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "action":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 258
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 259
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 260
    .local v2, "child":Landroid/view/View;
    move v1, v3

    .line 261
    .local v1, "actionIndex":I
    new-instance v4, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;I)V

    invoke-static {v2, v4}, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper;->hookView(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 243
    .end local v1    # "actionIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private handleChronometerAndTime(Landroid/service/notification/StatusBarNotification;)V
    .locals 8
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 413
    sget-boolean v2, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    :cond_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 417
    .local v1, "n":Landroid/app/Notification;
    invoke-static {v1}, Landroid/app/NotificationCompat;->showsChronometer(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mChronometerStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mChronometerStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    const v3, 0x10203ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    .line 420
    .local v0, "chronometer":Landroid/widget/Chronometer;
    iget-wide v2, v1, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 421
    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 422
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.chronometerCountDown"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Landroid/widget/ChronometerCompat;->setCountDown(Landroid/widget/Chronometer;Z)V

    .line 412
    .end local v0    # "chronometer":Landroid/widget/Chronometer;
    :cond_2
    :goto_0
    return-void

    .line 423
    :cond_3
    invoke-static {v1}, Landroid/app/NotificationCompat;->showsTime(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    invoke-virtual {v2, v3}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 425
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    iget-wide v4, v1, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v4, v5}, Landroid/widget/DateTimeView;->setTime(J)V

    goto :goto_0
.end method

.method private handleLine1()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 222
    :cond_0
    return-void
.end method

.method private handleMiuiAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v1, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 274
    .local v1, "actions":[Landroid/app/Notification$Action;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 275
    aget-object v0, v1, v3

    .line 276
    .local v0, "action":Landroid/app/Notification$Action;
    iget-object v2, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    invoke-static {v2, v3}, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper;->hookView(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 271
    .end local v0    # "action":Landroid/app/Notification$Action;
    .end local v1    # "actions":[Landroid/app/Notification$Action;
    :cond_0
    return-void
.end method

.method private handleOneLineStyle()V
    .locals 3

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isOneLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    .line 480
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private handleProgressBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 291
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 292
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "android.subText"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "subText":Ljava/lang/String;
    sget-boolean v5, Lcom/android/systemui/Constants;->FORCE_SHOW_PROGRESS_BAR_WITH_SUBTEXT:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v5, :cond_7

    .line 290
    :cond_1
    :goto_1
    return-void

    .line 293
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 295
    const-string/jumbo v5, "android.progressMax"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 296
    .local v2, "max":I
    const-string/jumbo v5, "android.progress"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 297
    .local v3, "progress":I
    const-string/jumbo v5, "android.progressIndeterminate"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 298
    .local v1, "indeterminate":Z
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    .line 299
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->inflateProgressView()V

    .line 300
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v5, :cond_4

    .line 301
    return-void

    .line 303
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    :cond_5
    if-eqz v1, :cond_6

    .line 306
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 307
    :cond_6
    if-eqz v2, :cond_0

    .line 308
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 309
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 315
    .end local v1    # "indeterminate":Z
    .end local v2    # "max":I
    .end local v3    # "progress":I
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 316
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method private handleText()V
    .locals 3

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 232
    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.subText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "subText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleTextSenderStyle()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->makeSenderSpanBold(Landroid/widget/TextView;)V

    .line 471
    :cond_0
    return-void
.end method

.method private handleTextWithProgressBar()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isProgressBarVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "contentText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.subText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "subText":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 338
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 343
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 346
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBarPaddingLine2:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    goto :goto_0

    .line 351
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 352
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBarPaddingLine1:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private handleWorkProfileImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 493
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 495
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 494
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 496
    .local v0, "profileDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 497
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    .end local v0    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 500
    .restart local v0    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 502
    .end local v0    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-boolean v1, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->removeView(Landroid/view/View;)V

    .line 509
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private inflateProgressView()V
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "progressView":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 326
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "progressView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 320
    :cond_1
    return-void
.end method

.method private static interpolateColor(IIF)I
    .locals 13
    .param p0, "source"    # I
    .param p1, "target"    # I
    .param p2, "t"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 650
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 651
    .local v0, "aSource":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 652
    .local v6, "rSource":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 653
    .local v4, "gSource":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 654
    .local v2, "bSource":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 655
    .local v1, "aTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 656
    .local v7, "rTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 657
    .local v5, "gTarget":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 659
    .local v3, "bTarget":I
    int-to-float v8, v0

    sub-float v9, v12, p2

    mul-float/2addr v8, v9

    int-to-float v9, v1

    mul-float/2addr v9, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 660
    int-to-float v9, v6

    sub-float v10, v12, p2

    mul-float/2addr v9, v10

    int-to-float v10, v7

    mul-float/2addr v10, p2

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 661
    int-to-float v10, v4

    sub-float v11, v12, p2

    mul-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v11, p2

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 662
    int-to-float v11, v2

    sub-float/2addr v12, p2

    mul-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v12, p2

    add-float/2addr v11, v12

    float-to-int v11, v11

    .line 658
    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    return v8
.end method

.method private isBigNormalNotification()Z
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10203b6

    if-ne v0, v1, :cond_0

    .line 693
    const-string/jumbo v0, "big"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 692
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNormalNotification()Z
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10203b6

    if-ne v0, v1, :cond_0

    .line 688
    const-string/jumbo v0, "base"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProgressBarVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 520
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setPictureDark(ZZJ)V
    .locals 7
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    .line 643
    :cond_0
    return-void
.end method

.method private setProgressBarDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 615
    if-eqz p2, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->fadeProgressDark(Landroid/widget/ProgressBar;ZJ)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;Z)V

    goto :goto_0
.end method

.method private updateActionOffset()V
    .locals 4

    .prologue
    .line 678
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 679
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 680
    .local v0, "constrainedContentHeight":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    .line 681
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPaddingTop()I

    move-result v3

    .line 680
    sub-int/2addr v2, v3

    .line 681
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPaddingBottom()I

    move-result v3

    .line 680
    sub-int v1, v2, v3

    .line 682
    .local v1, "translationY":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 676
    .end local v0    # "constrainedContentHeight":I
    .end local v1    # "translationY":I
    :cond_0
    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;F)V
    .locals 3
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "intensity"    # F

    .prologue
    .line 634
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mColor:I

    const/4 v2, -0x1

    invoke-static {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->interpolateColor(IIF)I

    move-result v0

    .line 633
    .local v0, "color":I
    return-void
.end method

.method private updateProgressDark(Landroid/widget/ProgressBar;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ProgressBar;
    .param p2, "dark"    # Z

    .prologue
    .line 640
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateProgressDark(Landroid/widget/ProgressBar;F)V

    .line 639
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUpArrowVisibility()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    if-nez v0, :cond_0

    .line 596
    return-void

    .line 599
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mExpandable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mIsHeadsUpViewWrapper:Z

    if-eqz v0, :cond_2

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :goto_0
    return-void

    .line 599
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected handleHeaderStyle()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 431
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleHeaderStyle()V

    .line 432
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 433
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 434
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 435
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const v5, 0x800035

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v4, v1

    .line 436
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 437
    const v6, 0x90f046e

    .line 436
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object v4, v1

    .line 438
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 439
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 442
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 443
    const v5, 0x90f046f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 442
    invoke-static {v4, v5}, Lcom/android/systemui/Util;->setViewRoundCorner(Landroid/view/View;F)V

    .line 446
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateUpArrowVisibility()V

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "contentLayout":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isNormalNotification()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 450
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 451
    .local v3, "viewParent":Landroid/view/ViewParent;
    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 452
    check-cast v0, Landroid/view/ViewGroup;

    .line 455
    .end local v0    # "contentLayout":Landroid/view/View;
    .end local v3    # "viewParent":Landroid/view/ViewParent;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isBigNormalNotification()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    .line 458
    :cond_3
    if-eqz v0, :cond_4

    .line 459
    iget v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginTopInternational:I

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    .line 460
    iget v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginStartInternational:I

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setStartMargin(Landroid/view/View;I)V

    .line 463
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 464
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginStartInternational:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 430
    :cond_5
    return-void
.end method

.method protected handleLargeIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 369
    .local v0, "sbn":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    .end local v0    # "sbn":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v1, :cond_4

    .line 380
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    .line 383
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4

    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    .line 366
    :cond_4
    return-void

    .line 371
    .restart local v0    # "sbn":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    :cond_5
    sget-boolean v1, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->applyRightIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected handleMainContainerMargin()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "containerMarginBottom":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 398
    const v2, 0x1050047

    .line 397
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setBottomMargin(Landroid/view/View;I)V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setBottomMargin(Landroid/view/View;I)V

    .line 393
    .end local v0    # "containerMarginBottom":I
    :cond_0
    return-void

    .line 399
    .restart local v0    # "containerMarginBottom":I
    :cond_1
    sget-boolean v1, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mIsHeadsUpViewWrapper:Z

    if-eqz v1, :cond_3

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 401
    const v2, 0x1050049

    .line 400
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 403
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 404
    const v2, 0x1050198

    .line 403
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method protected isOneLine()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 514
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 514
    if-eqz v1, :cond_2

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 514
    :cond_2
    return v0
.end method

.method protected removeTransformedTypes()V
    .locals 2

    .prologue
    .line 567
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->removeTransformedTypes()V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->removeTransformedView(I)V

    .line 566
    :cond_0
    return-void
.end method

.method protected resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020044

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 163
    const v4, 0x9120044

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mLine1Container:Landroid/widget/LinearLayout;

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x1020082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine1:Landroid/widget/TextView;

    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f0208

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBarPaddingLine1:I

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f0209

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBarPaddingLine2:I

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, "progressView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_4

    .line 176
    check-cast v1, Landroid/widget/ProgressBar;

    .end local v1    # "progressView":Landroid/view/View;
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 177
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.progress"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "progress":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 185
    .end local v0    # "progress":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DateTimeView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mChronometerStub:Landroid/view/ViewStub;

    .line 191
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v3, 0x10203aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMiuiAction:Landroid/widget/TextView;

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTextLine2:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleLine1()V

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleText()V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleProgressBar()V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleTextWithProgressBar()V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleLargeIcon()V

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleMainContainerMargin()V

    .line 205
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleChronometerAndTime(Landroid/service/notification/StatusBarNotification;)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleActions()V

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleMiuiAction()V

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleTextSenderStyle()V

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleOneLineStyle()V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleWorkProfileImage()V

    .line 159
    return-void

    .line 183
    .restart local v1    # "progressView":Landroid/view/View;
    :cond_4
    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0
.end method

.method public setContentHeight(II)V
    .locals 1
    .param p1, "contentHeight"    # I
    .param p2, "minHeightHint"    # I

    .prologue
    .line 667
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setContentHeight(II)V

    .line 669
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    .line 670
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    .line 671
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mIsHeadsUpViewWrapper:Z

    if-eqz v0, :cond_0

    .line 672
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateActionOffset()V

    .line 666
    :cond_0
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    .line 578
    return-void

    .line 580
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setDark(ZZJ)V

    .line 581
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setPictureDark(ZZJ)V

    .line 582
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setProgressBarDark(ZZJ)V

    .line 576
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2
    .param p1, "isChildInGroup"    # Z

    .prologue
    .line 525
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setIsChildInGroup(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIsHeadsUpViewWrapper(Z)V
    .locals 0
    .param p1, "isHeadsUpViewWrapper"    # Z

    .prologue
    .line 608
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setIsHeadsUpViewWrapper(Z)V

    .line 609
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateUpArrowVisibility()V

    .line 610
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleMainContainerMargin()V

    .line 607
    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 699
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionList:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 697
    :cond_0
    return-void

    .line 699
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setVisible(Z)V

    .line 216
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleChronometerAndTime(Landroid/service/notification/StatusBarNotification;)V

    .line 214
    :cond_0
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x0

    .line 587
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 589
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateUpArrowVisibility()V

    .line 590
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUpArrow:Landroid/view/View;

    if-eqz p1, :cond_1

    .end local p2    # "onClickListener":Landroid/view/View$OnClickListener;
    :goto_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    :cond_0
    return-void

    .restart local p2    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_1
    move-object p2, v0

    .line 590
    goto :goto_0
.end method

.method protected updateInvertHelper()V
    .locals 2

    .prologue
    .line 537
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    .line 536
    :cond_0
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .prologue
    .line 546
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 549
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 548
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 553
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 552
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 557
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 556
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 561
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 560
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 544
    :cond_3
    return-void
.end method
