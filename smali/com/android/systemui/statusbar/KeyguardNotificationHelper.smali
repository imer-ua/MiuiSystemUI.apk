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

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;
    .param p3, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;-><init>(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method private buildValues(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/content/ContentValues;
    .locals 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v7, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->getByteIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;)[B

    move-result-object v1

    .line 147
    .local v1, "icon":[B
    if-nez v1, :cond_0

    return-object v7

    .line 149
    :cond_0
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitive:Z

    if-nez v7, :cond_1

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    .line 150
    :goto_0
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 151
    .local v2, "n":Landroid/app/Notification;
    if-eqz v3, :cond_2

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "title":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getHiddenText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "content":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v3, :cond_4

    const-string/jumbo v4, ""

    .line 155
    .local v4, "subtext":Ljava/lang/CharSequence;
    :goto_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "icon"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 157
    const-string/jumbo v8, "title"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, ""

    :goto_4
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v8, "content"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, ""

    :goto_5
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v7, "time"

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->getTimeText(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v7, "info"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v8, "subtext"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, ""

    :goto_6
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v7, "key"

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string/jumbo v7, "pkg"

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v8}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v7, "user_id"

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v8}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    return-object v6

    .line 149
    .end local v0    # "content":Ljava/lang/CharSequence;
    .end local v2    # "n":Landroid/app/Notification;
    .end local v4    # "subtext":Ljava/lang/CharSequence;
    .end local v5    # "title":Ljava/lang/CharSequence;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v3, 0x1

    .local v3, "sensitive":Z
    goto/16 :goto_0

    .line 151
    .end local v3    # "sensitive":Z
    .restart local v2    # "n":Landroid/app/Notification;
    :cond_2
    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 152
    :cond_3
    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 153
    :cond_4
    invoke-static {v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveSubText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "subtext":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 157
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_5
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 158
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 161
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

    .line 194
    if-nez p1, :cond_0

    .line 195
    return-object v10

    .line 197
    :cond_0
    instance-of v6, p1, Lmiui/maml/FancyDrawable;

    if-eqz v6, :cond_1

    move-object v6, p1

    .line 198
    check-cast v6, Lmiui/maml/FancyDrawable;

    invoke-virtual {v6}, Lmiui/maml/FancyDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 199
    .local v4, "quiet":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_3

    move-object v6, p1

    .line 200
    check-cast v6, Lmiui/maml/FancyDrawable;

    invoke-virtual {v6}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lmiui/maml/ScreenElementRoot;->tick(J)V

    .line 205
    .end local v4    # "quiet":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 206
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 207
    .local v3, "h":I
    if-lez v5, :cond_2

    if-gtz v3, :cond_4

    .line 208
    :cond_2
    return-object v10

    .line 202
    .end local v3    # "h":I
    .end local v5    # "w":I
    .restart local v4    # "quiet":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object p1, v4

    goto :goto_0

    .line 210
    .end local v4    # "quiet":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "h":I
    .restart local v5    # "w":I
    :cond_4
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 211
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 216
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

    .line 170
    const/4 v4, 0x0

    .line 171
    .local v4, "rightIconView":Landroid/widget/ImageView;
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    if-eqz v5, :cond_4

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v3

    .line 173
    .local v3, "publicView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "rightIconView":Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 186
    .end local v3    # "publicView":Landroid/view/View;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-nez v1, :cond_3

    .line 188
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->drawableToByte(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v5

    return-object v5

    .line 177
    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "rightIconView":Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPrivateView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 178
    .local v2, "privateView":Lcom/android/systemui/statusbar/NotificationContentView;
    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "contractedChildView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 181
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
    .line 220
    new-instance v0, Landroid/widget/DateTimeView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "dateTime":Landroid/widget/DateTimeView;
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-wide v2, v1, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-wide v2, v1, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v2, v3}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 224
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

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    sget-object v1, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 142
    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;->clearAll()V

    .line 138
    return-void
.end method

.method private handleDeleteDB(ILjava/lang/String;)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v2, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "rows":I
    if-lez v1, :cond_0

    .line 131
    sget-object v3, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    const-class v3, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;->delete(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method private handleInsertDB(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 103
    const-string/jumbo v2, "pkg"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 106
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 107
    sget-object v2, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 108
    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;->add(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private handleUpdateDB(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 112
    const-string/jumbo v4, "key"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 113
    .local v0, "key":I
    const-string/jumbo v4, "pkg"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v3, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 119
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, p1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    sget-object v4, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 121
    const-class v4, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;->update(Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 68
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    .line 74
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 76
    .local v0, "key":I
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->remove(ILjava/lang/String;)V

    .line 81
    .end local v0    # "key":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->buildValues(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/content/ContentValues;

    move-result-object v3

    .line 82
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    .line 83
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    const/16 v5, 0xbb8

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 67
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0xbbb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0xbba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 94
    return-void
.end method

.method public update(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->buildValues(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/content/ContentValues;

    move-result-object v0

    .line 89
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->mBgHandler:Landroid/os/Handler;

    const/16 v2, 0xbb9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 87
    :cond_0
    return-void
.end method
