.class public Lcom/android/systemui/statusbar/notification/NotificationInflater;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    }
.end annotation


# static fields
.field static final FLAG_REINFLATE_ALL:I = -0x1

.field static final FLAG_REINFLATE_EXPANDED_VIEW:I = 0x2


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field private mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

.field private mIsChildInGroup:Z

.field private mIsLowPriority:Z

.field private mRedactAmbient:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mUsesIncreasedHeadsUpHeight:Z

.field private mUsesIncreasedHeight:Z


# direct methods
.method static synthetic -wrap0(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 1
    .param p0, "reInflateFlags"    # I
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "isLowPriority"    # Z
    .param p3, "isChildInGroup"    # Z
    .param p4, "usesIncreasedHeight"    # Z
    .param p5, "usesIncreasedHeadsUpHeight"    # Z
    .param p6, "redactAmbient"    # Z
    .param p7, "packageContext"    # Landroid/content/Context;
    .param p8, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    invoke-static/range {p0 .. p8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 90
    return-void
.end method

.method public static apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Landroid/os/CancellationSignal;
    .locals 41
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "redactAmbient"    # Z
    .param p4, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p5, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p6, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .prologue
    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 208
    .local v9, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v10

    .line 209
    .local v10, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v24

    .line 210
    .local v24, "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v13, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    const/4 v3, 0x1

    .line 213
    .local v3, "flag":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 214
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x0

    .line 215
    .local v6, "isNewView":Z
    :goto_0
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 228
    .local v14, "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v11

    .line 229
    const/4 v1, 0x0

    .line 228
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v15, p6

    .line 226
    invoke-static/range {v1 .. v15}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 233
    .end local v6    # "isNewView":Z
    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    :cond_0
    const/4 v3, 0x2

    .line 234
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 235
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 236
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 237
    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 236
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    .line 238
    .restart local v6    # "isNewView":Z
    :goto_1
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 251
    .restart local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v11

    .line 253
    const/4 v1, 0x1

    .line 252
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v15, p6

    .line 249
    invoke-static/range {v1 .. v15}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 258
    .end local v6    # "isNewView":Z
    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    :cond_1
    const/4 v3, 0x4

    .line 259
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 260
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 261
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 262
    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 261
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    .line 263
    .restart local v6    # "isNewView":Z
    :goto_2
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 276
    .restart local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v11

    .line 278
    const/4 v1, 0x2

    .line 277
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v15, p6

    .line 274
    invoke-static/range {v1 .. v15}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 283
    .end local v6    # "isNewView":Z
    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    :cond_2
    const/16 v3, 0x8

    .line 284
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 285
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 286
    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 285
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v6, 0x0

    .line 287
    .restart local v6    # "isNewView":Z
    :goto_3
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 300
    .restart local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v25

    .line 301
    const/4 v1, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v26

    move-object/from16 v15, p0

    move/from16 v16, p1

    move/from16 v17, v3

    move-object/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, v6

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, v9

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v29, p6

    .line 298
    invoke-static/range {v15 .. v29}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 306
    .end local v6    # "isNewView":Z
    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4

    .line 307
    const/16 v3, 0x10

    .line 308
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 309
    if-eqz p3, :cond_9

    move-object/from16 v34, v24

    .line 310
    .local v34, "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_4
    invoke-static/range {p2 .. p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 311
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v6, 0x0

    .line 312
    .restart local v6    # "isNewView":Z
    :goto_5
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    .line 325
    .restart local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v35

    .line 326
    const/4 v1, 0x4

    .line 325
    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v36

    move-object/from16 v25, p0

    move/from16 v26, p1

    move/from16 v27, v3

    move-object/from16 v28, p2

    move/from16 v29, p3

    move/from16 v30, v6

    move-object/from16 v31, p4

    move-object/from16 v32, p5

    move-object/from16 v33, v9

    move-object/from16 v37, v13

    move-object/from16 v38, v14

    move-object/from16 v39, p6

    .line 323
    invoke-static/range {v25 .. v39}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .end local v6    # "isNewView":Z
    .end local v14    # "applyCallback":Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .end local v34    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_4
    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, v13

    move-object/from16 v18, p5

    move-object/from16 v19, p2

    move/from16 v20, p3

    move-object/from16 v21, p6

    .line 332
    invoke-static/range {v15 .. v21}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Z

    .line 334
    new-instance v40, Landroid/os/CancellationSignal;

    invoke-direct/range {v40 .. v40}, Landroid/os/CancellationSignal;-><init>()V

    .line 335
    .local v40, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;

    invoke-direct {v1, v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;-><init>(Ljava/util/HashMap;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 343
    return-object v40

    .line 214
    .end local v40    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_5
    const/4 v6, 0x1

    .restart local v6    # "isNewView":Z
    goto/16 :goto_0

    .line 236
    .end local v6    # "isNewView":Z
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "isNewView":Z
    goto/16 :goto_1

    .line 261
    .end local v6    # "isNewView":Z
    :cond_7
    const/4 v6, 0x1

    .restart local v6    # "isNewView":Z
    goto/16 :goto_2

    .line 285
    .end local v6    # "isNewView":Z
    :cond_8
    const/4 v6, 0x1

    .restart local v6    # "isNewView":Z
    goto/16 :goto_3

    .line 309
    .end local v6    # "isNewView":Z
    :cond_9
    move-object/from16 v34, v10

    .restart local v34    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    goto :goto_4

    .line 310
    :cond_a
    const/4 v6, 0x1

    .restart local v6    # "isNewView":Z
    goto :goto_5

    .line 311
    .end local v6    # "isNewView":Z
    :cond_b
    const/4 v6, 0x1

    .restart local v6    # "isNewView":Z
    goto :goto_5
.end method

.method private static canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 2
    .param p0, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "redactAmbient"    # Z

    .prologue
    .line 581
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 583
    .local v0, "ambientView":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 582
    .end local v0    # "ambientView":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    goto :goto_0

    .line 583
    .restart local v0    # "ambientView":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 4
    .param p0, "a"    # Landroid/widget/RemoteViews;
    .param p1, "b"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 545
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 546
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 547
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 548
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 549
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 546
    if-eqz v2, :cond_2

    .line 550
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 546
    goto :goto_0
.end method

.method private static createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 2
    .param p0, "reInflateFlags"    # I
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "isLowPriority"    # Z
    .param p3, "isChildInGroup"    # Z
    .param p4, "usesIncreasedHeight"    # Z
    .param p5, "usesIncreasedHeadsUpHeight"    # Z
    .param p6, "redactAmbient"    # Z
    .param p7, "packageContext"    # Landroid/content/Context;
    .param p8, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 177
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;-><init>()V

    .line 178
    .local v0, "result":Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_6

    :cond_0
    const/4 p2, 0x0

    .line 179
    .local p2, "isLowPriority":Z
    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 180
    invoke-static {p1, p2, p4, p8}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createContentView(Landroid/app/Notification$Builder;ZZLcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 183
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    .line 184
    invoke-static {p1, p2, p8}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createExpandedView(Landroid/app/Notification$Builder;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 187
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    .line 188
    invoke-static {p1, p5, p8}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createHeadsUpView(Landroid/app/Notification$Builder;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 191
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_4

    .line 192
    invoke-static {p1, p8}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createPublicContentView(Landroid/app/Notification$Builder;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 195
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_5

    .line 196
    invoke-static {p1, p6}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createAmbientView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 198
    :cond_5
    iput-object p7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 199
    return-object v0

    .line 178
    .local p2, "isLowPriority":Z
    :cond_6
    const/4 p2, 0x1

    .local p2, "isLowPriority":Z
    goto :goto_0
.end method

.method public static finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Z
    .locals 14
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p3, "endListener"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p5, "redactAmbient"    # Z
    .param p6, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Z",
            "Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 355
    .local p2, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 356
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    .line 357
    .local v8, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v10, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 358
    .local v10, "notification":Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v12

    .line 359
    .local v12, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v13

    .line 360
    .local v13, "publicLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 362
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 363
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 364
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 366
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 368
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 371
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 372
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 373
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 374
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 378
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 379
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    .line 382
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_5

    .line 383
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 384
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 385
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 389
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 392
    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_7

    .line 393
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 394
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 395
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 397
    :cond_6
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 400
    :cond_7
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_9

    .line 401
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 402
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 403
    if-eqz p5, :cond_e

    .line 404
    move-object v9, v13

    .line 405
    .local v9, "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_3
    if-nez p5, :cond_f

    .line 406
    move-object v11, v13

    .line 407
    .local v11, "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :goto_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    .line 408
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    .line 410
    .end local v9    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v11    # "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_8
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    .line 414
    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->sGameMode:Z

    .line 415
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    const/4 v4, 0x1

    .line 416
    :goto_5
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/StatusBar;->sIsStatusBarHidden:Z

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v6, p6

    .line 414
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->optimizeHeadsUpViewIfNeed(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 418
    if-eqz p3, :cond_a

    .line 419
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 422
    :cond_a
    const/4 v1, 0x1

    return v1

    .line 375
    :cond_b
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-nez v1, :cond_2

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    goto/16 :goto_0

    .line 379
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 386
    :cond_d
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-nez v1, :cond_4

    .line 387
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    goto/16 :goto_2

    .line 404
    :cond_e
    move-object v9, v12

    .restart local v9    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    goto :goto_3

    .line 406
    :cond_f
    move-object v11, v12

    .restart local v11    # "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    goto :goto_4

    .line 415
    .end local v9    # "newParent":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v11    # "otherParent":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_10
    const/4 v4, 0x0

    goto :goto_5

    .line 424
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private static inflateInCallHeadsUpNotification(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Lcom/android/systemui/statusbar/notification/InCallNotificationView;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldHeadsUpView"    # Landroid/view/View;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .prologue
    .line 472
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 473
    const v2, 0x9040049

    const/4 v3, 0x0

    .line 472
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    .line 474
    .local v0, "inCallNotificationView":Lcom/android/systemui/statusbar/notification/InCallNotificationView;
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->updateInfo(Landroid/view/View;Landroid/os/Bundle;)V

    .line 475
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->setInCallCallback(Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 476
    return-object v0
.end method

.method private static inflateOptimizedHeadsUpNotification(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldHeadsUpView"    # Landroid/view/View;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "isGameMode"    # Z

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 482
    const-string/jumbo v10, "NotificationInflater"

    const-string/jumbo v11, "inflateOptimizedHeadsUpNotification() oldHeadsUpView is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v10, 0x0

    return-object v10

    .line 486
    :cond_0
    sget-boolean v10, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v10, :cond_2

    .line 487
    const v10, 0x1020006

    .line 486
    :goto_0
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 488
    .local v2, "icon":Landroid/widget/ImageView;
    const v10, 0x1020016

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 489
    .local v9, "title":Landroid/widget/TextView;
    const v10, 0x1020082

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 490
    .local v7, "text":Landroid/widget/TextView;
    const v10, 0x10203bc

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 492
    .local v8, "textLine1":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    if-nez v9, :cond_3

    if-nez v7, :cond_3

    if-nez v8, :cond_3

    .line 493
    :cond_1
    const-string/jumbo v10, "NotificationInflater"

    const-string/jumbo v11, "inflateOptimizedHeadsUpNotification() invalid content"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v10, 0x0

    return-object v10

    .line 487
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v7    # "text":Landroid/widget/TextView;
    .end local v8    # "textLine1":Landroid/widget/TextView;
    .end local v9    # "title":Landroid/widget/TextView;
    :cond_2
    const v10, 0x1020044

    goto :goto_0

    .line 497
    .restart local v2    # "icon":Landroid/widget/ImageView;
    .restart local v7    # "text":Landroid/widget/TextView;
    .restart local v8    # "textLine1":Landroid/widget/TextView;
    .restart local v9    # "title":Landroid/widget/TextView;
    :cond_3
    const-string/jumbo v10, "layout_inflater"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 499
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x90400a5

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 498
    check-cast v6, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;

    .line 500
    .local v6, "newRowUi":Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->wrapIconView(Landroid/widget/ImageView;)V

    .line 501
    invoke-virtual {v6, v9, p3}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->wrapTitleView(Landroid/widget/TextView;Z)V

    .line 502
    if-eqz v7, :cond_6

    .line 503
    invoke-virtual {v6, v7, p3}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->wrapTextView(Landroid/widget/TextView;Z)V

    .line 508
    :goto_1
    const v10, 0x91200a9

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 509
    .local v1, "content":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 510
    new-instance v10, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;

    invoke-direct {v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    :cond_4
    iget-object v10, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v10}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v11, "miui.showAction"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 519
    .local v4, "isShowMiuiAction":Z
    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 520
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v10

    const v11, 0x10203aa

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 521
    .local v5, "largeAction":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->getActionView()Landroid/widget/TextView;

    move-result-object v0

    .line 522
    .local v0, "action":Landroid/widget/TextView;
    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    .line 523
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    if-eqz p3, :cond_7

    .line 526
    const v10, 0x90c017a

    invoke-virtual {p0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    :goto_2
    new-instance v10, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;

    invoke-direct {v10, v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    .end local v0    # "action":Landroid/widget/TextView;
    .end local v5    # "largeAction":Landroid/widget/TextView;
    :cond_5
    iget-object v10, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->setRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 540
    return-object v6

    .line 505
    .end local v1    # "content":Landroid/view/View;
    .end local v4    # "isShowMiuiAction":Z
    :cond_6
    invoke-virtual {v6, v8, p3}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->wrapTextView(Landroid/widget/TextView;Z)V

    goto :goto_1

    .line 528
    .restart local v0    # "action":Landroid/widget/TextView;
    .restart local v1    # "content":Landroid/view/View;
    .restart local v4    # "isShowMiuiAction":Z
    .restart local v5    # "largeAction":Landroid/widget/TextView;
    :cond_7
    const v10, 0x90c017c

    invoke-virtual {p0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public static isAsyncApplySupported()Z
    .locals 2

    .prologue
    .line 554
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static optimizeHeadsUpViewIfNeed(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 8
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "isGameMode"    # Z
    .param p3, "isFullScreen"    # Z
    .param p4, "isLandscape"    # Z
    .param p5, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 440
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v4

    .line 441
    .local v4, "privateLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 443
    .local v0, "context":Landroid/content/Context;
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/StatusBar;->sGameMode:Z

    if-nez v6, :cond_0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 449
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 450
    const/4 v3, 0x2

    .line 452
    .local v3, "oldHeadsUpViewType":I
    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    .line 454
    .local v2, "oldHeadsUpView":Landroid/view/View;
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v5

    .line 455
    .local v5, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 457
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v6}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 458
    invoke-static {v0, v2, v1, p5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateInCallHeadsUpNotification(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;

    .line 462
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 463
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 438
    :goto_2
    return-void

    .line 444
    .end local v2    # "oldHeadsUpView":Landroid/view/View;
    .end local v3    # "oldHeadsUpViewType":I
    .end local v5    # "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v6}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 445
    return-void

    .line 450
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 451
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 460
    .restart local v2    # "oldHeadsUpView":Landroid/view/View;
    .restart local v3    # "oldHeadsUpViewType":I
    .restart local v5    # "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_4
    invoke-static {v0, v2, v1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateOptimizedHeadsUpNotification(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;

    goto :goto_1

    .line 465
    :cond_5
    const-string/jumbo v6, "NotificationInflater"

    const-string/jumbo v7, "optimizeHeadsUpViewIfNeed() can not inflate optimized heads up child"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "childView"    # Landroid/view/View;

    .prologue
    .line 428
    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->applyLegacyRowIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    .line 429
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10203b6

    if-eq v1, v2, :cond_0

    .line 431
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 432
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 427
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method inflateNotificationViews(ILandroid/app/Notification$Builder;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 10
    .param p1, "reInflateFlags"    # I
    .param p2, "builder"    # Landroid/app/Notification$Builder;
    .param p3, "packageContext"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 166
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    .line 167
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    .line 168
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move v0, p1

    move-object v1, p2

    move-object v7, p3

    .line 166
    invoke-static/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    .line 169
    .local v0, "result":Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move v1, p1

    move-object v5, v9

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Landroid/os/CancellationSignal;

    .line 170
    return-object v0
.end method

.method public inflateNotificationViews()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 139
    return-void
.end method

.method inflateNotificationViews(I)V
    .locals 13
    .param p1, "reInflateFlags"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    .line 159
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    .line 160
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .line 158
    const/4 v12, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;-><init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 571
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 572
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    .line 573
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 574
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 575
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 576
    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews()V

    .line 570
    return-void
.end method

.method public setInCallCallback(Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 0
    .param p1, "callCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .line 561
    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .line 557
    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2
    .param p1, "childInGroup"    # Z

    .prologue
    .line 104
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    if-eq p1, v1, :cond_0

    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    .line 106
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    if-eqz v1, :cond_0

    .line 107
    const/4 v0, 0x3

    .line 108
    .local v0, "flags":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 103
    .end local v0    # "flags":I
    :cond_0
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0
    .param p1, "isLowPriority"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    .line 94
    return-void
.end method

.method public setRedactAmbient(Z)V
    .locals 1
    .param p1, "redactAmbient"    # Z

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    if-eq v0, p1, :cond_1

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    .line 125
    :cond_1
    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 121
    return-void
.end method

.method public setUsesIncreasedHeadsUpHeight(Z)V
    .locals 0
    .param p1, "usesIncreasedHeight"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    .line 117
    return-void
.end method

.method public setUsesIncreasedHeight(Z)V
    .locals 0
    .param p1, "usesIncreasedHeight"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    .line 113
    return-void
.end method
