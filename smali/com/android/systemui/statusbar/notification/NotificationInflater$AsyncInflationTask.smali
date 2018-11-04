.class public Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;
.super Landroid/os/AsyncTask;
.source "NotificationInflater.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
.implements Lcom/android/systemui/statusbar/InflationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncInflationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
        ">;",
        "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
        "Lcom/android/systemui/statusbar/InflationTask;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mContext:Landroid/content/Context;

.field private mError:Ljava/lang/Exception;

.field private mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

.field private final mIsChildInGroup:Z

.field private final mIsLowPriority:Z

.field private mReInflateFlags:I

.field private final mRedactAmbient:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

.field private final mUsesIncreasedHeadsUpHeight:Z

.field private final mUsesIncreasedHeight:Z


# direct methods
.method private constructor <init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 2
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "reInflateFlags"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "isLowPriority"    # Z
    .param p5, "isChildInGroup"    # Z
    .param p6, "usesIncreasedHeight"    # Z
    .param p7, "usesIncreasedHeadsUpHeight"    # Z
    .param p8, "redactAmbient"    # Z
    .param p9, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p10, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p11, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .prologue
    .line 604
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 611
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 612
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 613
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    .line 614
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    .line 615
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsLowPriority:Z

    .line 616
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsChildInGroup:Z

    .line 617
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    .line 618
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    .line 619
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRedactAmbient:Z

    .line 620
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 621
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .line 622
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .line 623
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 624
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V

    .line 610
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;)V
    .locals 0
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "reInflateFlags"    # I
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "isLowPriority"    # Z
    .param p5, "isChildInGroup"    # Z
    .param p6, "usesIncreasedHeight"    # Z
    .param p7, "usesIncreasedHeadsUpHeight"    # Z
    .param p8, "redactAmbient"    # Z
    .param p9, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
    .param p10, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p11, "inCallCallback"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    .prologue
    invoke-direct/range {p0 .. p11}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;-><init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 693
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onInflationTaskFinished()V

    .line 694
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    .line 695
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 696
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "ident":Ljava/lang/String;
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "couldn\'t inflate view for notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .line 699
    new-instance v3, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t inflate contentViews"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    .line 692
    return-void
.end method

.method private initAppInfo()V
    .locals 6

    .prologue
    .line 656
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    .line 657
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 656
    invoke-static {v3, v4}, Lcom/android/systemui/Util;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 659
    .local v2, "pmUser":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 660
    const v4, 0xc2200

    .line 659
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 664
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 665
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setAppUid(I)V

    .line 666
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setTargetSdk(I)V

    .line 667
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setAppName(Ljava/lang/String;)V

    .line 668
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 669
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v4, v5}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getRowIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setRowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 671
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 672
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 678
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setRowIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->cancel(Z)Z

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 703
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->initAppInfo()V

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 638
    .local v1, "recoveredBuilder":Landroid/app/Notification$Builder;
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getPackageContext(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Landroid/content/Context;

    move-result-object v7

    .line 639
    .local v7, "packageContext":Landroid/content/Context;
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 640
    .local v11, "notification":Landroid/app/Notification;
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    const v2, 0x90c0078

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 642
    .local v9, "backgroundColor":I
    invoke-static {v1, v9}, Landroid/app/NotificationCompat;->setBackgroundColorHint(Landroid/app/Notification$Builder;I)V

    .line 644
    .end local v9    # "backgroundColor":I
    :cond_0
    invoke-static {v11}, Landroid/app/NotificationCompat;->isMediaNotification(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    invoke-static {v11, v1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V

    .line 647
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsLowPriority:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsChildInGroup:Z

    .line 648
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRedactAmbient:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 647
    invoke-static/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->-wrap0(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 649
    .end local v1    # "recoveredBuilder":Landroid/app/Notification$Builder;
    .end local v7    # "packageContext":Landroid/content/Context;
    .end local v11    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v10

    .line 650
    .local v10, "e":Ljava/lang/Exception;
    iput-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    .line 651
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 633
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    return-object v0
.end method

.method public getReInflateFlags()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    return v0
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 720
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    .line 719
    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onInflationTaskFinished()V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated()V

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 724
    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V
    .locals 7
    .param p1, "result"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 685
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRedactAmbient:Z

    .line 686
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    move-object v0, p1

    move-object v5, p0

    .line 685
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 683
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 683
    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    return-void
.end method

.method public supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/statusbar/InflationTask;

    .prologue
    .line 712
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    if-eqz v0, :cond_0

    .line 714
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    .end local p1    # "task":Lcom/android/systemui/statusbar/InflationTask;
    iget v1, p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    .line 711
    :cond_0
    return-void
.end method
