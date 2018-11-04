.class public Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationBigPictureTemplateViewWrapper.java"


# instance fields
.field private mBigPictureView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private updateImageTag(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 80
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "android.largeIcon.big"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    .line 81
    .local v1, "overRiddenIcon":Landroid/graphics/drawable/Icon;
    if-eqz v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const v3, 0x9120044

    invoke-virtual {v2, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleHeaderStyle()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleHeaderStyle()V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mContentMarginTopInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mContentMarginStartInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->setStartMargin(Landroid/view/View;I)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mBigPictureView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mBigPictureView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mContentMarginStartInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->setStartMargin(Landroid/view/View;I)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mBigPictureView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    .line 46
    :cond_2
    return-void
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->updateImageTag(Landroid/service/notification/StatusBarNotification;)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mBigPictureView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mBigPictureView:Landroid/widget/ImageView;

    .line 74
    const v2, 0x90f0200

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 73
    invoke-static {v1, v2}, Lcom/android/systemui/Util;->setViewRoundCorner(Landroid/view/View;F)V

    .line 68
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method protected resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigPictureTemplateViewWrapper;->mBigPictureView:Landroid/widget/ImageView;

    .line 62
    return-void
.end method
