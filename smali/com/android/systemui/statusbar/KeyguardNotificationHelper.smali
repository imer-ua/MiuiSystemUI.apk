.class public Lcom/android/systemui/statusbar/KeyguardNotificationHelper;
.super Ljava/lang/Object;
.source "KeyguardNotificationHelper.java"


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->handleClearDB()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;ILjava/lang/String;)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->handleDeleteDB(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->handleInsertDB(Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->handleUpdateDB(Landroid/content/ContentValues;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 42
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;-><init>(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method private buildValues(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/content/ContentValues;
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v7, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->getByteIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;)[B

    move-result-object v1

    .line 146
    .local v1, "icon":[B
    if-nez v1, :cond_0

    return-object v7

    .line 148
    :cond_0
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitive:Z

    if-nez v7, :cond_1

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    .line 149
    :goto_0
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 150
    .local v2, "n":Landroid/app/Notification;
    if-eqz v3, :cond_2

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "title":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getHiddenText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "content":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v3, :cond_4

    const-string/jumbo v4, ""

    .line 154
    .local v4, "subtext":Ljava/lang/CharSequence;
    :goto_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "icon"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 156
    const-string/jumbo v8, "title"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, ""

    :goto_4
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v8, "content"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, ""

    :goto_5
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v7, "time"

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->getTimeText(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v7, "info"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v8, "subtext"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, ""

    :goto_6
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v7, "key"

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string/jumbo v7, "pkg"

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v8}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v7, "user_id"

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v8}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    return-object v6

    .line 148
    .end local v0    # "content":Ljava/lang/CharSequence;
    .end local v2    # "n":Landroid/app/Notification;
    .end local v4    # "subtext":Ljava/lang/CharSequence;
    .end local v5    # "title":Ljava/lang/CharSequence;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v3, 0x1

    .local v3, "sensitive":Z
    goto/16 :goto_0

    .line 150
    .end local v3    # "sensitive":Z
    .restart local v2    # "n":Landroid/app/Notification;
    :cond_2
    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 151
    :cond_3
    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 152
    :cond_4
    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveSubText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "subtext":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 156
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_5
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 157
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 160
    :cond_7
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6
.end method

.method private drawableToByte(Landroid/graphics/drawable/Drawable;)[B
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 193
    if-nez p1, :cond_0

    .line 194
    return-object v10

    .line 196
    :cond_0
    instance-of v6, p1, Lmiui/maml/FancyDrawable;

    if-eqz v6, :cond_1

    move-object v6, p1

    .line 197
    check-cast v6, Lmiui/maml/FancyDrawable;

    invoke-virtual {v6}, Lmiui/maml/FancyDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 198
    .local v4, "quiet":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_3

    move-object v6, p1

    .line 199
    check-cast v6, Lmiui/maml/FancyDrawable;

    invoke-virtual {v6}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lmiui/maml/ScreenElementRoot;->tick(J)V

    .line 204
    .end local v4    # "quiet":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 205
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 206
    .local v3, "h":I
    if-lez v5, :cond_2

    if-gtz v3, :cond_4

    .line 207
    :cond_2
    return-object v10

    .line 201
    .end local v3    # "h":I
    .end local v5    # "w":I
    .restart local v4    # "quiet":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object p1, v4

    goto :goto_0

    .line 209
    .end local v4    # "quiet":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "h":I
    .restart local v5    # "w":I
    :cond_4
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 210
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 213
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 215
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private getByteIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;)[B
    .locals 7
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const v6, 0x1020044

    const/4 v1, 0x0

    .line 169
    const/4 v4, 0x0

    .line 170
    .local v4, "rightIconView":Landroid/widget/ImageView;
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    if-eqz v5, :cond_4

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v3

    .line 172
    .local v3, "publicView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 173
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "rightIconView":Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 185
    .end local v3    # "publicView":Landroid/view/View;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 186
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-nez v1, :cond_3

    .line 187
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 189
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->drawableToByte(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v5

    return-object v5

    .line 176
    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "rightIconView":Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPrivateView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 177
    .local v2, "privateView":Lcom/android/systemui/statusbar/NotificationContentView;
    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "contractedChildView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "rightIconView":Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .local v4, "rightIconView":Landroid/widget/ImageView;
    goto :goto_0
.end method

.method private getTimeText(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 219
    new-instance v0, Landroid/widget/DateTimeView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "dateTime":Landroid/widget/DateTimeView;
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-wide v2, v1, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-wide v2, v1, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v2, v3}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 223
    :cond_0
    invoke-virtual {v0}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleClearDB()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    sget-object v1, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 141
    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;->clearAll()V

    .line 137
    return-void
.end method

.method private handleDeleteDB(ILjava/lang/String;)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v2, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "rows":I
    if-lez v1, :cond_0

    .line 130
    sget-object v3, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 131
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    const-class v3, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;->delete(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method private handleInsertDB(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 102
    const-string/jumbo v2, "pkg"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 105
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 106
    sget-object v2, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 107
    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;->add(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private handleUpdateDB(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 111
    const-string/jumbo v4, "key"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    .local v0, "key":I
    const-string/jumbo v4, "pkg"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v3, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 118
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, p1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    sget-object v4, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 120
    const-class v4, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;->update(Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 67
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    return-void

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    .line 73
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 75
    .local v0, "key":I
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->remove(ILjava/lang/String;)V

    .line 80
    .end local v0    # "key":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->buildValues(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/content/ContentValues;

    move-result-object v3

    .line 81
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    .line 82
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    const/16 v5, 0xbb8

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 66
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0xbbb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0xbba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method

.method public update(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->buildValues(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/content/ContentValues;

    move-result-object v0

    .line 88
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    const/16 v2, 0xbb9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 86
    :cond_0
    return-void
.end method
