.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public autoRedacted:Z

.field public cachedAmbientContentView:Landroid/widget/RemoteViews;

.field public cachedBigContentView:Landroid/widget/RemoteViews;

.field public cachedContentView:Landroid/widget/RemoteViews;

.field public cachedHeadsUpContentView:Landroid/widget/RemoteViews;

.field public cachedPublicContentView:Landroid/widget/RemoteViews;

.field public channel:Landroid/app/NotificationChannelCompat;

.field public expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public firstWhen:J

.field public hideSensitive:Z

.field public hideSensitiveByAppLock:Z

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private interruption:Z

.field public isGroupExpandedWhenExpose:Z

.field public isHeadsUpWhenExpose:Z

.field public isKeyguardWhenExpose:Z

.field public isSeen:Z

.field public key:Ljava/lang/String;

.field private lastFullScreenIntentLaunchTime:J

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

.field public messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;",
            ">;"
        }
    .end annotation
.end field

.field public needUpdateBadgeNum:Z

.field public notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field public seeTime:J

.field public snoozeCriteria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/SnoozeCriterionCompat;",
            ">;"
        }
    .end annotation
.end field

.field public targetSdk:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 3
    .param p1, "n"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v2, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->messageList:Ljava/util/List;

    .line 109
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 117
    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColor:I

    .line 118
    iput v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mCachedContrastColorIsFor:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 122
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 124
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->firstWhen:J

    .line 121
    return-void
.end method


# virtual methods
.method public abortTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/InflationTask;->abort()V

    .line 265
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 262
    :cond_0
    return-void
.end method

.method public createIcons(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 173
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 174
    .local v7, "n":Landroid/app/Notification;
    invoke-static {p1, p2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getSmallIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 175
    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    if-nez v3, :cond_0

    .line 176
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No small icon in notification from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 186
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-direct {v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 190
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 191
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 193
    iget v4, v7, Landroid/app/Notification;->iconLevel:I

    .line 194
    iget v5, v7, Landroid/app/Notification;->number:I

    .line 195
    invoke-static {p1, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 189
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 196
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 203
    new-instance v2, Lcom/android/systemui/statusbar/NotificationData$Entry$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationData$Entry$1;-><init>(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 202
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V

    .line 172
    return-void

    .line 197
    :cond_1
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 198
    iput-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 199
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t create icon: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExpandedContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateView()Landroid/view/View;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    return-object v0
.end method

.method public getPublicContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTask()Lcom/android/systemui/statusbar/InflationTask;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-object v0
.end method

.method public hasInterrupted()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    return v0
.end method

.method public hasJustLaunchedFullScreenIntent()Z
    .locals 6

    .prologue
    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomViewNotification()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isCustomViewNotification()Z

    move-result v0

    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0
.end method

.method public isMediaNotification()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMediaNotification()Z

    move-result v0

    return v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    return v0
.end method

.method public notifyFullScreenIntentLaunched()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 157
    return-void
.end method

.method public onInflationTaskFinished()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 279
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 139
    const-wide/16 v0, -0x7d0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastFullScreenIntentLaunchTime:J

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reset()V

    .line 138
    :cond_0
    return-void
.end method

.method public setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 2
    .param p1, "abortableTask"    # Lcom/android/systemui/statusbar/InflationTask;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 272
    .local v0, "existing":Lcom/android/systemui/statusbar/InflationTask;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    .line 273
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 274
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/InflationTask;->supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setInterruption()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z

    .line 127
    return-void
.end method

.method public updateIcons(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 230
    .local v7, "n":Landroid/app/Notification;
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-static {p1, p2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getSmallIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 234
    iget v4, v7, Landroid/app/Notification;->iconLevel:I

    .line 235
    iget v5, v7, Landroid/app/Notification;->number:I

    .line 236
    invoke-static {p1, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 230
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 237
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    .end local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v7    # "n":Landroid/app/Notification;
    :cond_0
    return-void

    .line 240
    .restart local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v7    # "n":Landroid/app/Notification;
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t update icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
