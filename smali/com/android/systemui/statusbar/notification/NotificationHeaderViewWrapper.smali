.class public Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationHeaderViewWrapper.java"


# static fields
.field private static final LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;


# instance fields
.field protected mAppNameText:Landroid/widget/TextView;

.field protected mColor:I

.field protected mContentMarginEndInternational:I

.field protected mContentMarginStartInternational:I

.field protected mContentMarginTopInternational:I

.field private mExpandButton:Landroid/widget/ImageView;

.field protected mExpandable:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHeaderTextDivider:Landroid/widget/TextView;

.field private mHeaderXSpaceIcon:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field protected final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mIsLowPriority:Z

.field private mIsMiniView:Z

.field protected mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mTransformLowPriorityTitle:Z

.field protected final mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field protected mWorkProfileImage:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 50
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 76
    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 82
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;I)V

    .line 81
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 104
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    .line 74
    return-void
.end method

.method private addRemainingTransformTypes()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addRemainingTransformTypes(Landroid/view/View;)V

    .line 279
    return-void
.end method

.method private handleHeaderVisibility()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsMiniView:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->isShowingPublicHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    :cond_1
    const/16 v0, 0x8

    .line 178
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 176
    :cond_2
    return-void

    .line 181
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMiniView()V
    .locals 3

    .prologue
    .line 256
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsMiniView:Z

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    const v2, 0x1060122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 258
    .local v0, "appNameTextColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTextDivider:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    .end local v0    # "appNameTextColor":I
    :cond_0
    return-void
.end method

.method private handleXSpaceIcon()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isShowingPublicHeader()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingPublic()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateCropToPaddingForImageViews()V
    .locals 5

    .prologue
    .line 289
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 290
    .local v3, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/view/View;>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 292
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 293
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 294
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "child":Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    goto :goto_0

    .line 295
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 296
    check-cast v1, Landroid/view/ViewGroup;

    .line 297
    .local v1, "group":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 298
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected createDozer(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 1
    .param p1, "fadingView"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    return-object v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method protected handleHeaderStyle()V
    .locals 8

    .prologue
    const v7, 0x9120047

    const/4 v6, 0x0

    .line 186
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginStartInternational:I

    .line 188
    iget v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginEndInternational:I

    .line 187
    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/NotificationHeaderView;->setPaddingRelative(IIII)V

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setStartMargin(Landroid/view/View;I)V

    .line 192
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 193
    const v5, 0x90f046a

    .line 192
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setEndMargin(Landroid/view/View;I)V

    .line 196
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "tag":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 199
    const v4, 0x1050176

    .line 198
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 200
    .local v0, "iconSize":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 201
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 202
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 207
    .end local v0    # "iconSize":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 209
    const v5, 0x90f046b

    .line 208
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setStartMargin(Landroid/view/View;I)V

    .line 211
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 213
    const v5, 0x90f046c

    .line 212
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setStartMargin(Landroid/view/View;I)V

    .line 185
    :cond_3
    return-void
.end method

.method protected initResources()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    const v1, 0x90f0467

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginTopInternational:I

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    const v1, 0x90f0468

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginStartInternational:I

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    const v1, 0x90f0469

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContentMarginEndInternational:I

    .line 167
    return-void
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 8
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v5, 0x0

    const v7, 0x9120044

    .line 219
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 220
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    .line 221
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    .line 222
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v2

    .line 225
    .local v2, "previousViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateInvertHelper()V

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->addRemainingTransformTypes()V

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->removeTransformedTypes()V

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateCropToPaddingForImageViews()V

    .line 231
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getSmallIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 232
    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 235
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 236
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 239
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 244
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v0

    .line 245
    .local v0, "currentViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 246
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 247
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 248
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->resetTransformedView(Landroid/view/View;)V

    .line 245
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    .end local v0    # "currentViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    .end local v1    # "i":I
    .end local v2    # "previousViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    .end local v3    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 218
    .restart local v0    # "currentViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    .restart local v1    # "i":I
    .restart local v2    # "previousViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    .restart local v3    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_5
    return-void
.end method

.method public onReinflated()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 119
    return-void
.end method

.method protected removeTransformedTypes()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method protected resolveViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->initResources()V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findAppNameTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findHeaderTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findHeaderTextDividerView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTextDivider:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findExpandButtonView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10203cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderXSpaceIcon:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10203be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findNotificationHeaderView(Landroid/view/View;)Landroid/view/NotificationHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsMiniView:Z

    .line 145
    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getOriginalNotificationColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    .line 154
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setColor(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleHeaderVisibility()V

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleMiniView()V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleXSpaceIcon()V

    .line 158
    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->handleHeaderStyle()V

    .line 125
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 143
    goto :goto_0

    .line 147
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsMiniView:Z

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90c00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    goto :goto_1

    .line 151
    :cond_5
    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    goto :goto_1
.end method

.method protected setBottomMargin(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bottomMargin"    # I

    .prologue
    .line 440
    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 442
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 443
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 444
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 9
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    .line 331
    return-void

    .line 333
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 334
    if-eqz p2, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    :cond_1
    :goto_1
    return-void

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomViewNotification()Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v0

    .line 343
    const/4 v1, -0x1

    .line 342
    if-eq v0, v1, :cond_4

    const/4 v7, 0x1

    .line 345
    .local v7, "hadColorFilter":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    const/4 v6, 0x0

    :goto_3
    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    goto :goto_1

    .line 342
    .end local v7    # "hadColorFilter":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "hadColorFilter":Z
    goto :goto_2

    .line 345
    :cond_5
    const/4 v6, 0x1

    goto :goto_3
.end method

.method protected setEndMargin(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "endMargin"    # I

    .prologue
    .line 420
    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 422
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 423
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 424
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 1
    .param p1, "isChildInGroup"    # Z

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    .line 400
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    .line 398
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setStartMargin(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "startMargin"    # I

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 412
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 413
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method protected setTopMargin(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "topMargin"    # I

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 432
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 433
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 434
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    .line 404
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 388
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 393
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 383
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x0

    .line 351
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandable:Z

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 353
    sget-boolean v1, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v1

    if-nez v1, :cond_3

    .line 354
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_4

    .end local p2    # "onClickListener":Landroid/view/View$OnClickListener;
    :goto_1
    invoke-virtual {v1, p2}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    :cond_2
    return-void

    .line 355
    .restart local p2    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move-object p2, v0

    .line 363
    goto :goto_1
.end method

.method protected updateInvertHelper()V
    .locals 3

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2}, Lcom/android/systemui/ViewInvertHelper;->clearTargets()V

    .line 306
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_1

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v1}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    if-eq v0, v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/ViewInvertHelper;->addTarget(Landroid/view/View;)V

    .line 307
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->reset()V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 319
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    .line 320
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 316
    :cond_0
    return-void
.end method
