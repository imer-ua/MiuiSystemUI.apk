.class public abstract Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "NotificationViewWrapper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;


# instance fields
.field private mBackgroundColor:I

.field protected mContext:Landroid/content/Context;

.field protected mDark:Z

.field protected mDarkInitialized:Z

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field protected mIsHeadsUpViewWrapper:Z

.field protected final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field protected mShouldInvertDark:Z

.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDarkInitialized:Z

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 80
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->createDozer(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V

    .line 77
    return-void
.end method

.method private isColorLight(I)Z
    .locals 6
    .param p1, "backgroundColor"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10203b6

    if-ne v0, v1, :cond_7

    .line 50
    const-string/jumbo v0, "bigPicture"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 52
    :cond_0
    const-string/jumbo v0, "bigText"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 54
    :cond_1
    const-string/jumbo v0, "media"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "bigMediaNarrow"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 58
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 60
    :cond_4
    const-string/jumbo v0, "messaging"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 62
    :cond_5
    const-string/jumbo v0, "inbox"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 65
    :cond_6
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 66
    :cond_7
    instance-of v0, p1, Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_8

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 68
    :cond_8
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;

    if-eqz v0, :cond_9

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationOptimizedHeadsUpViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationOptimizedHeadsUpViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 70
    :cond_9
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    if-eqz v0, :cond_a

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInCallViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInCallViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0

    .line 73
    :cond_a
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v0
.end method


# virtual methods
.method protected createDozer(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    return-object v0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 1
    .param p1, "fadingView"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    goto :goto_0
.end method

.method protected getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    return-object v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDimmable()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDarkInitialized:Z

    .line 113
    return-void
.end method

.method public onReinflated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->shouldClearBackgroundOnReapply()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iput v2, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 123
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mBackgroundColor:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->isColorLight(I)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mShouldInvertDark:Z

    .line 117
    return-void

    .line 126
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setContentHeight(II)V
    .locals 0
    .param p1, "contentHeight"    # I
    .param p2, "minHeightHint"    # I

    .prologue
    .line 194
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDark:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mDarkInitialized:Z

    .line 104
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 0
    .param p1, "isChildInGroup"    # Z

    .prologue
    .line 200
    return-void
.end method

.method public setIsHeadsUpViewWrapper(Z)V
    .locals 0
    .param p1, "isHeadsUpViewWrapper"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mIsHeadsUpViewWrapper:Z

    .line 93
    return-void
.end method

.method public setLegacy(Z)V
    .locals 0
    .param p1, "legacy"    # Z

    .prologue
    .line 191
    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected shouldClearBackgroundOnReapply()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 176
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 165
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 144
    return-void
.end method
