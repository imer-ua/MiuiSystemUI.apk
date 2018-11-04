.class public Lcom/android/systemui/miui/statusbar/ExpandedNotification;
.super Landroid/service/notification/AbstractStatusBarNotification;
.source "ExpandedNotification.java"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mAppUid:I

.field private mBelowThreshold:Z

.field private mHasShownAfterUnlock:Z

.field private mImportance:I

.field private mIsFold:Z

.field private mLocalScore:D

.field private mNewlyNotification:Z

.field private mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

.field private mPushScore:D

.field private mRowIcon:Landroid/graphics/drawable/Drawable;

.field private mScoreForRank:D

.field private mShowSum:I

.field private mTargetSdk:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/service/notification/AbstractStatusBarNotification;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 60
    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;-><init>(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    .line 61
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->calculateScore()V

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->calculateFold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    .line 64
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setPushScore(D)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setLocalScore(D)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setFold(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method private calculateFold()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/NotificationFilterHelper;->canNotificationSetImportance(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    if-nez v1, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isPkgInFoldWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 177
    return v0

    .line 173
    :cond_0
    return v0

    .line 179
    :cond_1
    iget v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mShowSum:I

    sget v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->UNFLOD_LIMIT:I

    if-gt v1, v2, :cond_4

    .line 180
    return v0

    .line 183
    :cond_2
    iget v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    if-lez v1, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 186
    return v0

    .line 188
    :cond_5
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 189
    return v0

    .line 191
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mBelowThreshold:Z

    return v0
.end method

.method private calculateScore()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->getScoreInfo(Landroid/app/Notification;)Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    move-result-object v0

    .line 152
    .local v0, "scoreInfo":Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getServerScore()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    .line 154
    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getThreshold()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getServerScore()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getThreshold()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 155
    iput-boolean v6, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mBelowThreshold:Z

    .line 168
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->generateScoreForRank()V

    .line 150
    return-void

    .line 158
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isXmsf(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setNoScore()V

    .line 161
    :cond_2
    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->isLocalModelAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getScore(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    .line 163
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getThreshold()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 164
    iput-boolean v6, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mBelowThreshold:Z

    goto :goto_0
.end method

.method private generateScoreForRank()V
    .locals 4

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 219
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mScoreForRank:D

    .line 217
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    invoke-static {v0, v1}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getScoreForRank(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mScoreForRank:D

    goto :goto_0
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isHybrid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getHybridAppName(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "hybridAppName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    return-object v0

    .line 115
    .end local v0    # "hybridAppName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppName:Ljava/lang/String;

    return-object v1
.end method

.method public getAppUid()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppUid:I

    return v0
.end method

.method public getBasePkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/service/notification/AbstractStatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFoldPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isHybrid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    return-object v0

    .line 80
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImportance()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    return v0
.end method

.method public getLocalScore()D
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mLocalScore:D

    return-wide v0
.end method

.method public getNotificationEvent()Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/service/notification/AbstractStatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushScore()D
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mPushScore:D

    return-wide v0
.end method

.method public getRowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mRowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    return v0
.end method

.method public getShowSum()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mShowSum:I

    return v0
.end method

.method public getTargetSdk()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mTargetSdk:I

    return v0
.end method

.method public hasShownAfterUnlock()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mHasShownAfterUnlock:Z

    return v0
.end method

.method public isFold()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    return v0
.end method

.method public isNewlyNotification()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNewlyNotification:Z

    return v0
.end method

.method public isShowMiuiAction()Z
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "miui.showAction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubstituteNotification()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setAppUid(I)V
    .locals 0
    .param p1, "appUid"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mAppUid:I

    .line 134
    return-void
.end method

.method public setHasShownAfterUnlock(Z)V
    .locals 1
    .param p1, "hasShownAfterUnlock"    # Z

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "hasShownAfterUnlock":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mHasShownAfterUnlock:Z

    .line 264
    return-void

    .line 265
    .restart local p1    # "hasShownAfterUnlock":Z
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setImportance(I)V
    .locals 2
    .param p1, "importance"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->calculateFold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    .line 201
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mImportance:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setImportance(I)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setFold(Z)V

    .line 198
    return-void
.end method

.method public setNewlyNotification(Z)V
    .locals 2
    .param p1, "newlyNotification"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNewlyNotification:Z

    .line 250
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNewlyNotification:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setNewly(Z)V

    .line 248
    return-void
.end method

.method public setRowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "rowIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mRowIcon:Landroid/graphics/drawable/Drawable;

    .line 126
    return-void
.end method

.method public setShowSum(I)V
    .locals 2
    .param p1, "showSum"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mShowSum:I

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->calculateFold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    .line 236
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    iget-boolean v1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mIsFold:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->setFold(Z)V

    .line 233
    return-void
.end method

.method public setTargetSdk(I)V
    .locals 0
    .param p1, "targetSdk"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->mTargetSdk:I

    .line 142
    return-void
.end method
