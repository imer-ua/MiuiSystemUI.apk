.class public Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationBigTextTemplateViewWrapper.java"


# instance fields
.field private mBigText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected handleHeaderStyle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleHeaderStyle()V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mContentMarginTopInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mContentMarginStartInternational:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 42
    :cond_1
    return-void
.end method

.method protected isOneLine()Z
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isOneLine()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigText:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->setHasImage(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationBigTextTemplateViewWrapper;->mBigText:Landroid/widget/TextView;

    .line 72
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 68
    :cond_0
    return-void
.end method
