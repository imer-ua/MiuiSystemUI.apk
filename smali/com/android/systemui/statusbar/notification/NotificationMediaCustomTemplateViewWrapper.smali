.class public Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;
.source "NotificationMediaCustomTemplateViewWrapper.java"


# instance fields
.field private mMediaCustomNotificationContentTopMargin:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected handleLargeIcon()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->handleLargeIcon()V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :cond_0
    return-void
.end method

.method protected handleMainContainerMargin()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->handleMainContainerMargin()V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;->mMediaCustomNotificationContentTopMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    .line 36
    :cond_0
    return-void
.end method

.method protected initResources()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->initResources()V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 23
    const v1, 0x90f0459

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaCustomTemplateViewWrapper;->mMediaCustomNotificationContentTopMargin:I

    .line 20
    return-void
.end method
