.class public Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationInboxTemplateViewWrapper.java"


# instance fields
.field private mInboxText0:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 38
    return-void
.end method

.method private resolveViews()V
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10203d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "container":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "container":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/util/Utils;->makeSenderSpanBold(Landroid/view/ViewGroup;)V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10203d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    .line 42
    return-void
.end method


# virtual methods
.method protected handleHeaderStyle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleHeaderStyle()V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mContentMarginTopInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mContentMarginStartInternational:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 57
    :cond_1
    return-void
.end method

.method protected isOneLine()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isOneLine()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

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

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->resolveViews()V

    .line 72
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInboxTemplateViewWrapper;->setEndMargin(Landroid/view/View;I)V

    goto :goto_0
.end method
