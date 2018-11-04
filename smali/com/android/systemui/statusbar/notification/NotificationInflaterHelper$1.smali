.class final Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;
.super Ljava/lang/Object;
.source "NotificationInflaterHelper.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteViewAsync(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

.field final synthetic val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field final synthetic val$existingView:Landroid/view/View;

.field final synthetic val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field final synthetic val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

.field final synthetic val$inflationId:I

.field final synthetic val$isNewView:Z

.field final synthetic val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field final synthetic val$reInflateFlags:I

.field final synthetic val$redactAmbient:Z

.field final synthetic val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$runningInflations:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;)V
    .locals 0
    .param p1, "val$result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .param p2, "val$reInflateFlags"    # I
    .param p3, "val$inflationId"    # I
    .param p4, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p5, "val$redactAmbient"    # Z
    .param p6, "val$isNewView"    # Z
    .param p7, "val$callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p8, "val$existingWrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .param p10, "val$applyCallback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
    .param p11, "val$inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;
    .param p12, "val$remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p13, "val$entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p14, "val$parentLayout"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p15, "val$existingView"    # Landroid/view/View;

    .prologue
    .line 96
    .local p9, "val$runningInflations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/CancellationSignal;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$reInflateFlags:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inflationId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$redactAmbient:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$isNewView:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$runningInflations:Ljava/util/HashMap;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 17
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$reInflateFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inflationId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 112
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$redactAmbient:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$isNewView:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 113
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$runningInflations:Ljava/util/HashMap;

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    move-object/from16 v16, p1

    .line 111
    invoke-static/range {v1 .. v16}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->-wrap0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Ljava/lang/Exception;)V

    .line 108
    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$reInflateFlags:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inflationId:I

    .line 101
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$redactAmbient:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$isNewView:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 102
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$runningInflations:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    move-object v0, p1

    .line 100
    invoke-static/range {v0 .. v11}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->-wrap1(Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$reInflateFlags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$runningInflations:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 104
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$redactAmbient:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .line 103
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Z

    .line 99
    return-void
.end method
