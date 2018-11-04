.class public Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.source "NotificationMediaTemplateViewWrapper.java"


# instance fields
.field private mActionsView:Landroid/view/ViewGroup;

.field private mAppNameView:Landroid/widget/TextView;

.field private mMediaNotificationActionSize:I

.field private mMediaNotificationLargeIconRadius:I

.field private mNotificationMediaActionColor:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;)V

    .line 62
    const/4 v2, 0x5

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 45
    return-void
.end method

.method private isNormalMediaView()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "media"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateViews()V
    .locals 8

    .prologue
    .line 96
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 97
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 98
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 99
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "action":Landroid/view/View;
    instance-of v6, v0, Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    move-object v6, v0

    .line 102
    check-cast v6, Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 103
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 104
    iget v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mNotificationMediaActionColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 109
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->isNormalMediaView()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 111
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationActionSize:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 112
    iget v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationActionSize:I

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "action":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    if-eqz v6, :cond_3

    .line 118
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 121
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->isNormalMediaView()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x0

    .line 124
    .local v5, "shouldClipPadding":Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    if-eq v5, v6, :cond_4

    .line 125
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 95
    .end local v5    # "shouldClipPadding":Z
    :cond_4
    return-void

    .line 123
    :cond_5
    const/4 v5, 0x1

    .restart local v5    # "shouldClipPadding":Z
    goto :goto_1
.end method


# virtual methods
.method protected handleLargeIcon()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleLargeIcon()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationLargeIconRadius:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/Util;->setViewRoundCorner(Landroid/view/View;F)V

    .line 87
    :cond_0
    return-void
.end method

.method protected initResources()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->initResources()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    const v1, 0x90f0457

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationLargeIconRadius:I

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    const v1, 0x90f0458

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mMediaNotificationActionSize:I

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    const v1, 0x90c0173

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mNotificationMediaActionColor:I

    .line 66
    return-void
.end method

.method public isDimmable()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method protected isOneLine()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mAppNameView:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mAppNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->updateViews()V

    .line 76
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->setVisible(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTime:Landroid/widget/DateTimeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 146
    :cond_0
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;->mActionsView:Landroid/view/ViewGroup;

    .line 140
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 136
    :cond_0
    return-void
.end method
