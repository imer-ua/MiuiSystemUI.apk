.class public Lcom/android/systemui/statusbar/NotificationInfo;
.super Lcom/android/systemui/statusbar/BaseGutsContentView;
.source "NotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;
    }
.end annotation


# instance fields
.field private mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

.field private mClickListener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsDefaultChannel:Z

.field private mNotificationChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

.field private mSecondaryTextView:Landroid/widget/TextView;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

.field private mStartingUserImportance:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationInfo;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationInfo;)Landroid/app/NotificationChannelCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateSecondaryText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseGutsContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method private getChannelNameText()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 244
    const-string/jumbo v0, ""

    .line 245
    .local v0, "channelNameText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isSubstituteNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    return-object v0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-nez v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x9140002

    .line 250
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 252
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 250
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_1
    :goto_0
    return-object v0

    .line 254
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsDefaultChannel:Z

    if-nez v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    invoke-virtual {v1}, Landroid/app/NotificationChannelCompat;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedImportance()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    return v0
.end method

.method private hasImportanceChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_0

    .line 163
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0
.end method

.method private initSlidingButton()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 204
    const v1, 0x912021a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    .line 205
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    .line 206
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 205
    :goto_0
    invoke-virtual {v3, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 208
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationInfo$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationInfo$3;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    return-void

    .end local v0    # "visible":Z
    :cond_0
    move v1, v2

    .line 206
    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "visible":Z
    goto :goto_1

    .line 208
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private saveImportance()V
    .locals 7

    .prologue
    .line 167
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "appPkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsDefaultChannel:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isSubstituteNotification()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v5}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v5

    invoke-static {v4, v0, v5}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 180
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v4}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v5, "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v4}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    const-string/jumbo v4, "app_packageName"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v4}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getMessageId(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "messageId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    const-string/jumbo v4, "messageId"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    const-class v4, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4, v5}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onBlock(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    .line 166
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "messageId":Ljava/lang/String;
    :cond_2
    return-void

    .line 171
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v4

    if-nez v4, :cond_4

    .line 172
    return-void

    .line 174
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v3

    .line 175
    .local v3, "selectedImportance":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    .line 176
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    sub-int v5, v3, v5

    .line 175
    const/16 v6, 0x123

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 177
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    .line 178
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppUid()I

    move-result v6

    .line 177
    invoke-static {v4, v3, v5, v0, v6}, Landroid/app/NotificationChannelCompat;->saveImportance(Landroid/app/NotificationChannelCompat;ILandroid/app/INotificationManager;Ljava/lang/String;I)V

    goto :goto_0

    .line 183
    .end local v3    # "selectedImportance":I
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private updateSecondaryText()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 234
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-eqz v2, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 236
    .local v1, "disabled":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getChannelNameText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 237
    .local v0, "channelNameText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSecondaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const v2, 0x9100599

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 238
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 237
    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSecondaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    const v2, 0x91101d3

    :goto_2
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 233
    return-void

    .line 235
    .end local v0    # "channelNameText":Ljava/lang/CharSequence;
    .end local v1    # "disabled":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "disabled":Z
    goto :goto_0

    .line 234
    .end local v1    # "disabled":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "disabled":Z
    goto :goto_0

    .line 238
    .restart local v0    # "channelNameText":Ljava/lang/CharSequence;
    :cond_2
    const v2, 0x9100598    # 1.7336E-33f

    goto :goto_1

    .line 240
    :cond_3
    const v2, 0x91101d2

    goto :goto_2
.end method


# virtual methods
.method public bindNotification(Landroid/app/INotificationManager;Ljava/util/List;ILcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;)V
    .locals 14
    .param p1, "iNotificationManager"    # Landroid/app/INotificationManager;
    .param p3, "startingUserImportance"    # I
    .param p4, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p5, "listener"    # Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/INotificationManager;",
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannelCompat;",
            ">;I",
            "Lcom/android/systemui/miui/statusbar/ExpandedNotification;",
            "Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "notificationChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelCompat;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 80
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    .line 81
    move/from16 v0, p3

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    .line 82
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .line 83
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mClickListener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

    .line 85
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "appName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "appPkg":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppUid()I

    move-result v3

    .line 89
    .local v3, "appUid":I
    const v11, 0x9120218

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 90
    .local v7, "iconImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-static {v11, v0, v7}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->applyAppIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V

    .line 92
    const/4 v8, 0x1

    .line 95
    .local v8, "numTotalChannels":I
    const/4 v11, 0x0

    .line 94
    :try_start_0
    invoke-static {p1, v2, v3, v11}, Landroid/app/NotificationChannelCompat;->getNumNotificationChannelsForPackage(Landroid/app/INotificationManager;Ljava/lang/String;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 99
    :goto_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 100
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "bindNotification requires at least one channel"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 96
    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 102
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 103
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannelCompat;

    iput-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    .line 105
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    invoke-virtual {v11}, Landroid/app/NotificationChannelCompat;->getId()Ljava/lang/String;

    move-result-object v11

    .line 106
    const-string/jumbo v12, "miscellaneous"

    .line 105
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsDefaultChannel:Z

    .line 113
    :goto_1
    const/4 v6, 0x0

    .line 114
    .local v6, "groupName":Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-eqz v11, :cond_1

    .line 116
    :try_start_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    invoke-static {v11, p1, v2, v3}, Landroid/app/NotificationChannelCompat;->getGroupName(Landroid/app/NotificationChannelCompat;Landroid/app/INotificationManager;Ljava/lang/String;I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 121
    .end local v6    # "groupName":Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    const v11, 0x912007a

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 122
    .local v10, "titleView":Landroid/widget/TextView;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .end local v1    # "appName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->initSlidingButton()V

    .line 127
    const v11, 0x9120219

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSecondaryTextView:Landroid/widget/TextView;

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateSecondaryText()V

    .line 131
    const v11, 0x912021b

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 132
    .local v9, "settingsButton":Landroid/widget/TextView;
    if-ltz v3, :cond_5

    .line 133
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    const v11, 0x9100267

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 135
    new-instance v11, Lcom/android/systemui/statusbar/NotificationInfo$1;

    move-object/from16 v0, p5

    invoke-direct {v11, p0, v0, v3}, Lcom/android/systemui/statusbar/NotificationInfo$1;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;I)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const/4 v11, 0x1

    if-le v8, v11, :cond_4

    .line 141
    const v11, 0x9100266

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 150
    :goto_4
    const v11, 0x912021c

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 151
    .local v4, "doneButton":Landroid/widget/TextView;
    const v11, 0x9100269

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 152
    new-instance v11, Lcom/android/systemui/statusbar/NotificationInfo$2;

    move-object/from16 v0, p5

    invoke-direct {v11, p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo$2;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 108
    .end local v4    # "doneButton":Landroid/widget/TextView;
    .end local v9    # "settingsButton":Landroid/widget/TextView;
    .end local v10    # "titleView":Landroid/widget/TextView;
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    .line 109
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsDefaultChannel:Z

    goto :goto_1

    .line 123
    .restart local v10    # "titleView":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const v13, 0x9100597

    invoke-virtual {v11, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 143
    .end local v1    # "appName":Ljava/lang/String;
    .restart local v9    # "settingsButton":Landroid/widget/TextView;
    :cond_4
    const v11, 0x9100267

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 146
    :cond_5
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 118
    .end local v9    # "settingsButton":Landroid/widget/TextView;
    .end local v10    # "titleView":Landroid/widget/TextView;
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v6    # "groupName":Ljava/lang/CharSequence;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method public handleCloseControls(ZZ)Z
    .locals 2
    .param p1, "save"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 277
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mClickListener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mClickListener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationInfo$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationInfo$4;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;->onClickCheckSave(Ljava/lang/Runnable;)V

    .line 288
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    goto :goto_0
.end method

.method public isLeavebehind()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseGutsContentView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x9100263

    .line 227
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 229
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 227
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    return-void

    .line 229
    :cond_1
    const v0, 0x9100264

    goto :goto_0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 261
    return-void
.end method

.method public willBeRemoved()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
