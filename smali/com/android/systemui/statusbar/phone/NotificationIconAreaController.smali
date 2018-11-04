.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static sFilterColor:I


# instance fields
.field private mClearableNotificationsCount:I

.field private mContext:Landroid/content/Context;

.field private mForceHideMoreIcon:Z

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private mMoreIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private final mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShowNotificationIcons:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->sFilterColor:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 59
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private applyNotificationIconTint(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 4
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "color":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v1

    .line 333
    .local v1, "colorize":Z
    if-eqz v1, :cond_0

    .line 334
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-static {v2, p1, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 336
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 337
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 330
    return-void
.end method

.method private applyNotificationIconsTint()V
    .locals 3

    .prologue
    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 326
    .local v1, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconTint(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    return-void
.end method

.method private generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 112
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 114
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f0093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 112
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x90f0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 120
    const v1, 0x90f00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 117
    return-void
.end method

.method private setIconsVisibility()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMoreIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMoreIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 209
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mForceHideMoreIcon:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowNotificationIcons:Z

    if-eqz v2, :cond_2

    .line 210
    :cond_0
    const/16 v0, 0x8

    .line 208
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 206
    :cond_1
    return-void

    .line 209
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mClearableNotificationsCount:I

    if-lez v2, :cond_0

    goto :goto_0
.end method

.method private updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Z)V
    .locals 27
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p3, "hostLayout"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .param p4, "showAmbient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/NotificationData;",
            "Lcom/android/systemui/util/function/Function",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "function":Lcom/android/systemui/util/function/Function;, "Lcom/android/systemui/util/function/Function<Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    new-instance v22, Ljava/util/ArrayList;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v25

    .line 226
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    .local v22, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 232
    .local v24, "view":Landroid/view/View;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 233
    check-cast v24, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v24    # "view":Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    .line 234
    .local v8, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;Z)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 235
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/android/systemui/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v8    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 244
    :cond_1
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    .line 245
    .local v18, "replacingIcons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v20, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_9

    .line 247
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 248
    .local v5, "child":Landroid/view/View;
    instance-of v0, v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 246
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 251
    :cond_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 252
    const/4 v11, 0x0

    .local v11, "iconWasReplaced":Z
    move-object/from16 v17, v5

    .line 253
    check-cast v17, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 254
    .local v17, "removedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v16

    .line 255
    .local v16, "removedGroupKey":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_6

    .line 256
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 257
    .local v4, "candidate":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/graphics/drawable/IconCompat;->sameAs(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 258
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 257
    if-eqz v25, :cond_4

    .line 259
    if-nez v11, :cond_5

    .line 260
    const/4 v11, 0x1

    .line 255
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 262
    :cond_5
    const/4 v11, 0x0

    .line 267
    .end local v4    # "candidate":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_6
    if-eqz v11, :cond_8

    .line 268
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 269
    .local v19, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    if-nez v19, :cond_7

    .line 270
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .restart local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 279
    .end local v5    # "child":Landroid/view/View;
    .end local v11    # "iconWasReplaced":Z
    .end local v12    # "j":I
    .end local v16    # "removedGroupKey":Ljava/lang/String;
    .end local v17    # "removedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v7, "duplicates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "key$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 281
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 282
    .restart local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 283
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 286
    .end local v13    # "key":Ljava/lang/String;
    .end local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 287
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/util/ArrayMap;)V

    .line 289
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 290
    .local v21, "toRemoveCount":I
    const/4 v10, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v10, v0, :cond_c

    .line 291
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 290
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 294
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    .line 295
    .local v15, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, 0x0

    :goto_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_e

    .line 296
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 298
    .local v23, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    .line 299
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_d

    .line 300
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10, v15}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 304
    .end local v23    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_e
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v6

    .line 307
    .local v6, "childCount":I
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v6, :cond_10

    .line 308
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 309
    .local v3, "actual":Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 310
    .local v9, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v3, v9, :cond_f

    .line 307
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 313
    :cond_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 314
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;I)V

    goto :goto_8

    .line 316
    .end local v3    # "actual":Landroid/view/View;
    .end local v9    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_10
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 317
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/util/ArrayMap;)V

    .line 225
    return-void
.end method


# virtual methods
.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object v0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 66
    const v0, 0x9040091

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 76
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 78
    const v2, 0x912020f

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 72
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 5
    .param p1, "tintArea"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "iconTint"    # I

    .prologue
    const/4 v4, 0x0

    .line 138
    if-nez p1, :cond_2

    .line 139
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 143
    :goto_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 145
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMoreIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMoreIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {p1, v3, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v1

    .line 147
    .local v1, "isDarkMode":Z
    const v3, 0x9020348

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    .line 148
    .local v2, "resId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMoreIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 149
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMoreIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 151
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    sget v3, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->sFilterColor:I

    if-nez v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90c009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->sFilterColor:I

    .line 155
    :cond_0
    sget v3, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->sFilterColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 137
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isDarkMode":Z
    .end local v2    # "resId":I
    :cond_1
    :goto_1
    return-void

    .line 141
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 157
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "isDarkMode":Z
    .restart local v2    # "resId":I
    :cond_3
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 100
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setForceHideMoreIcon(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mForceHideMoreIcon:Z

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setIconsVisibility()V

    .line 92
    return-void
.end method

.method public setMoreIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0
    .param p1, "moreIcon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mMoreIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 88
    return-void
.end method

.method setShowNotificationIcon(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowNotificationIcons:Z

    .line 344
    return-void
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 1
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    .line 83
    return-void
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;Z)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p3, "showAmbient"    # Z

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    return v2

    .line 170
    :cond_1
    return v2

    .line 175
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 176
    return v2

    .line 179
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 4
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    const/4 v0, 0x0

    .line 186
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 186
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Z)V

    .line 192
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v3, 0x1

    .line 192
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Z)V

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowNotificationIcons:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVisibility(I)V

    .line 202
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData;->getClearableNotificationsCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mClearableNotificationsCount:I

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setIconsVisibility()V

    .line 185
    return-void

    .line 201
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
