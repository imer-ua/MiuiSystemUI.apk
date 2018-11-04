.class public Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;
.super Ljava/lang/Object;
.source "NotificationInflaterHelper.java"


# static fields
.field private static final EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "inflationId"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "redactAmbient"    # Z
    .param p5, "isNewView"    # Z
    .param p6, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p7, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p8, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p9, "parentLayout"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p10, "existingView"    # Landroid/view/View;
    .param p11, "existingWrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .param p12, "runningInflations"    # Ljava/util/HashMap;
    .param p13, "applyCallback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .param p14, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;
    .param p15, "formerException"    # Ljava/lang/Exception;

    .prologue
    invoke-static/range {p0 .. p15}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteViewSync(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .param p1, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p2, "reInflateFlags"    # I
    .param p3, "inflationId"    # I
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p5, "redactAmbient"    # Z
    .param p6, "isNewView"    # Z
    .param p7, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p8, "existingWrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .param p9, "runningInflations"    # Ljava/util/HashMap;
    .param p10, "applyCallback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .param p11, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .prologue
    invoke-static/range {p0 .. p11}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->onViewApplied(Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMiuiAction(Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 5
    .param p0, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const v4, 0x10203aa

    const/4 v3, 0x0

    .line 216
    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v1, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 221
    .local v1, "actions":[Landroid/app/Notification$Action;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 222
    aget-object v0, v1, v3

    .line 223
    .local v0, "action":Landroid/app/Notification$Action;
    iget-object v2, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 226
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 215
    .end local v0    # "action":Landroid/app/Notification$Action;
    :cond_1
    return-void

    .line 217
    .end local v1    # "actions":[Landroid/app/Notification$Action;
    :cond_2
    return-void
.end method

.method public static applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 16
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "inflationId"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "redactAmbient"    # Z
    .param p5, "isNewView"    # Z
    .param p6, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p7, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p8, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p9, "parentLayout"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p10, "existingView"    # Landroid/view/View;
    .param p11, "existingWrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .param p13, "applyCallback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .param p14, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "ZZ",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/NotificationContentView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;",
            "Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p12, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->isAsyncApplySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static/range {p0 .. p14}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteViewAsync(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 145
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    .line 151
    invoke-static/range {v0 .. v15}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteViewSync(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static applyRemoteViewAsync(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 20
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "inflationId"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "redactAmbient"    # Z
    .param p5, "isNewView"    # Z
    .param p6, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p7, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p8, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p9, "parentLayout"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p10, "existingView"    # Landroid/view/View;
    .param p11, "existingWrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .param p13, "applyCallback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .param p14, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "ZZ",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/NotificationContentView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;",
            "Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p12, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-virtual/range {p13 .. p13}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v19

    .line 96
    .local v19, "newContentView":Landroid/widget/RemoteViews;
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v2 .. v17}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;)V

    .line 118
    .local v2, "listener":Landroid/widget/RemoteViews$OnViewAppliedListener;
    if-eqz p5, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 122
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v3, v19

    move-object/from16 v5, p9

    move-object v7, v2

    move-object/from16 v8, p6

    .line 119
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v18

    .line 133
    .local v18, "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p12

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void

    .line 127
    .end local v18    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 129
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->EXECUTOR:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;

    move-object/from16 v3, v19

    move-object/from16 v5, p10

    move-object v7, v2

    move-object/from16 v8, p6

    .line 126
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v18

    .restart local v18    # "cancellationSignal":Landroid/os/CancellationSignal;
    goto :goto_0
.end method

.method private static applyRemoteViewSync(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Ljava/lang/Exception;)V
    .locals 16
    .param p0, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p1, "reInflateFlags"    # I
    .param p2, "inflationId"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "redactAmbient"    # Z
    .param p5, "isNewView"    # Z
    .param p6, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p7, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p8, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p9, "parentLayout"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p10, "existingView"    # Landroid/view/View;
    .param p11, "existingWrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .param p13, "applyCallback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .param p14, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;
    .param p15, "formerException"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "ZZ",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/NotificationContentView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;",
            "Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p12, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    :try_start_0
    invoke-virtual/range {p13 .. p13}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v15

    .line 57
    .local v15, "newContentView":Landroid/widget/RemoteViews;
    move-object/from16 v2, p10

    .line 58
    .local v2, "newView":Landroid/view/View;
    if-eqz p5, :cond_1

    .line 60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 59
    move-object/from16 v0, p9

    move-object/from16 v1, p6

    invoke-virtual {v15, v3, v0, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v2

    :goto_0
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    .line 69
    invoke-static/range {v2 .. v13}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->onViewApplied(Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 73
    if-eqz p15, :cond_0

    .line 74
    const-string/jumbo v3, "NotificationInflater"

    const-string/jumbo v4, "Async Inflation failed but normal inflation finished normally."

    move-object/from16 v0, p15

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v2    # "newView":Landroid/view/View;
    .end local v15    # "newContentView":Landroid/widget/RemoteViews;
    :cond_0
    :goto_1
    return-void

    .line 65
    .restart local v2    # "newView":Landroid/view/View;
    .restart local v15    # "newContentView":Landroid/widget/RemoteViews;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    .line 64
    move-object/from16 v0, p10

    move-object/from16 v1, p6

    invoke-virtual {v15, v3, v0, v1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v2    # "newView":Landroid/view/View;
    .end local v15    # "newContentView":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v14

    .line 79
    .local v14, "anotherException":Ljava/lang/Exception;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    move-object/from16 v0, p12

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v0, p12

    move-object/from16 v1, p7

    invoke-static {v0, v14, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    goto :goto_1
.end method

.method public static createAmbientView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "redactAmbient"    # Z

    .prologue
    .line 212
    invoke-static {p0, p1}, Landroid/app/NotificationCompat;->makeAmbientNotification(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static createContentView(Landroid/app/Notification$Builder;ZZLcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "isLowPriority"    # Z
    .param p2, "useLarge"    # Z
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 170
    invoke-static {p0, p1, p2}, Landroid/app/NotificationCompat;->createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 171
    .local v0, "view":Landroid/widget/RemoteViews;
    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyMiuiAction(Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 172
    return-object v0
.end method

.method public static createExpandedView(Landroid/app/Notification$Builder;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;
    .locals 5
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "isLowPriority"    # Z
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 180
    .local v2, "view":Landroid/widget/RemoteViews;
    invoke-static {v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyMiuiAction(Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 181
    return-object v2

    .line 184
    .end local v2    # "view":Landroid/widget/RemoteViews;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 185
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    .line 186
    return-object v0

    .line 188
    :cond_1
    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 190
    .local v1, "contentView":Landroid/widget/RemoteViews;
    invoke-static {v1}, Landroid/app/NotificationCompat;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 191
    return-object v1

    .line 193
    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    :cond_2
    return-object v4
.end method

.method public static createHeadsUpView(Landroid/app/Notification$Builder;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;
    .locals 2
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "usesIncreasedHeadsUpHeight"    # Z
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 198
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isShowMiuiAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 201
    .local v0, "view":Landroid/widget/RemoteViews;
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyMiuiAction(Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 202
    return-object v0

    .line 204
    .end local v0    # "view":Landroid/widget/RemoteViews;
    :cond_0
    invoke-static {p0, p1}, Landroid/app/NotificationCompat;->createHeadsUpContentView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public static createPublicContentView(Landroid/app/Notification$Builder;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makePublicContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Ljava/lang/Exception;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 160
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "signal$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    .line 161
    .local v0, "signal":Landroid/os/CancellationSignal;
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_0

    .line 163
    .end local v0    # "signal":Landroid/os/CancellationSignal;
    :cond_0
    if-eqz p3, :cond_1

    .line 164
    invoke-interface {p3, p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    .line 158
    :cond_1
    return-void
.end method

.method private static onViewApplied(Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p2, "reInflateFlags"    # I
    .param p3, "inflationId"    # I
    .param p4, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p5, "redactAmbient"    # Z
    .param p6, "isNewView"    # Z
    .param p7, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p8, "existingWrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .param p10, "applyCallback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .param p11, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "ZZ",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;",
            "Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p9, "runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    if-eqz p6, :cond_1

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 38
    invoke-virtual {p10, p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    .line 42
    :cond_0
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p9, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void

    .line 39
    :cond_1
    if-eqz p8, :cond_0

    .line 40
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V

    goto :goto_0
.end method
