.class public Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationMessagingTemplateViewWrapper.java"


# instance fields
.field private mContractedMessage:Landroid/view/View;

.field private mHistoricMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInboxText0:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private resolveViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 48
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    .line 50
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findNotificationMessagingView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, "container":Landroid/view/View;
    instance-of v5, v2, Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v5, :cond_5

    move-object v5, v2

    .line 52
    check-cast v5, Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_5

    move-object v4, v2

    .line 53
    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout;

    .line 55
    .local v4, "messagingContainer":Lcom/android/internal/widget/MessagingLinearLayout;
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v1

    .line 56
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 57
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 60
    instance-of v5, v0, Landroid/widget/TextView;

    .line 59
    if-eqz v5, :cond_0

    move-object v5, v0

    .line 61
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v4}, Lcom/android/internal/widget/MessagingLinearLayoutCompat;->getContractedChildId(Lcom/android/internal/widget/MessagingLinearLayout;)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 68
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    .line 56
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 73
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-static {v4}, Lcom/android/systemui/util/Utils;->makeSenderSpanBold(Landroid/view/ViewGroup;)V

    .line 75
    sget-boolean v5, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v5, :cond_5

    .line 77
    invoke-static {v4, v7}, Lcom/android/internal/widget/MessagingLinearLayoutCompat;->setNumIndentLines(Lcom/android/internal/widget/MessagingLinearLayout;I)V

    .line 80
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "messagingContainer":Lcom/android/internal/widget/MessagingLinearLayout;
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findInboxText0View(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    .line 47
    return-void
.end method


# virtual methods
.method protected handleHeaderStyle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleHeaderStyle()V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContentMarginStartInternational:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContentMarginEndInternational:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mNotificationMainContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContentMarginTopInternational:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->setTopMargin(Landroid/view/View;I)V

    .line 89
    :cond_1
    return-void
.end method

.method protected isOneLine()Z
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isOneLine()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;

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
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->resolveViews()V

    .line 104
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 100
    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mHistoricMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    .line 118
    :cond_1
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMessagingTemplateViewWrapper;->mContractedMessage:Landroid/view/View;

    .line 112
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 108
    :cond_0
    return-void
.end method
