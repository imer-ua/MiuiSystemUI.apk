.class public Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "LocationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;
    }
.end annotation


# static fields
.field private static final mHighPowerRequestAppOpArray:[I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAreActiveLocationRequests:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSettingsChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 72
    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    .line 93
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "android.location.MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 101
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 102
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v2, 0x3d8d7

    invoke-virtual {v0, v4, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    .line 89
    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 319
    if-nez p0, :cond_0

    return-object v5

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 322
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 324
    .local v3, "h":I
    if-lez v4, :cond_1

    if-gtz v3, :cond_2

    .line 325
    :cond_1
    return-object v5

    .line 329
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 332
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 335
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 337
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 338
    return-object v0

    .line 330
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private updateActiveLocationRequests()V
    .locals 3

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 209
    .local v0, "hadActiveLocationRequests":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveHighPowerLocationRequests()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    .line 210
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    if-eq v1, v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->sendEmptyMessage(I)Z

    .line 207
    :cond_0
    return-void
.end method

.method private updateGpsNotification(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v2, "enabled"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 240
    .local v13, "enabled":Z
    const/16 v17, 0x0

    .line 243
    .local v17, "onGoing":Z
    const-string/jumbo v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v13, :cond_0

    .line 245
    const v15, 0x1102010e

    .line 246
    .local v15, "iconId":I
    const v22, 0x910012a

    .line 247
    .local v22, "textResId":I
    const/16 v23, 0x1

    .line 260
    .local v23, "visible":Z
    :goto_0
    if-eqz v23, :cond_9

    .line 261
    const/16 v21, 0x0

    .line 262
    .local v21, "text":Ljava/lang/CharSequence;
    const-string/jumbo v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 265
    .local v18, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 266
    .local v14, "icon":Landroid/graphics/drawable/Icon;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .end local v14    # "icon":Landroid/graphics/drawable/Icon;
    .end local v21    # "text":Ljava/lang/CharSequence;
    .local v4, "gpsIntent":Landroid/content/Intent;
    :goto_1
    const/high16 v2, 0x10000000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 283
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v19

    .line 286
    .local v19, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->LOCATION:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/app/NotificationCompat;->newBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 291
    .local v11, "builder":Landroid/app/Notification$Builder;
    if-nez v14, :cond_6

    .line 292
    invoke-virtual {v11, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 297
    :goto_2
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v16

    .line 298
    .local v16, "n":Landroid/app/Notification;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 299
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/MiuiNotification;->setTargetPkg(Ljava/lang/CharSequence;)V

    .line 305
    :goto_3
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/MiuiNotification;->setEnableKeyguard(Z)Landroid/app/MiuiNotification;

    .line 306
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/MiuiNotification;->setEnableFloat(Z)Landroid/app/MiuiNotification;

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 310
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const v6, 0x3d8d7

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v6, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 236
    .end local v4    # "gpsIntent":Landroid/content/Intent;
    .end local v11    # "builder":Landroid/app/Notification$Builder;
    .end local v16    # "n":Landroid/app/Notification;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_4
    return-void

    .line 248
    .end local v15    # "iconId":I
    .end local v22    # "textResId":I
    .end local v23    # "visible":Z
    :cond_0
    const-string/jumbo v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v13, :cond_2

    .line 254
    :cond_1
    sget-boolean v2, Lcom/android/systemui/Constants;->SUPPORT_DUAL_GPS:Z

    if-eqz v2, :cond_3

    const v15, 0x902039f

    .line 255
    .restart local v15    # "iconId":I
    :goto_5
    const v22, 0x9100129

    .line 256
    .restart local v22    # "textResId":I
    const/16 v23, 0x1

    .line 257
    .restart local v23    # "visible":Z
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 250
    .end local v15    # "iconId":I
    .end local v22    # "textResId":I
    .end local v23    # "visible":Z
    :cond_2
    const/16 v23, 0x0

    .line 251
    .restart local v23    # "visible":Z
    const/16 v22, 0x0

    .restart local v22    # "textResId":I
    const/4 v15, 0x0

    .line 248
    .restart local v15    # "iconId":I
    goto/16 :goto_0

    .line 254
    .end local v15    # "iconId":I
    .end local v22    # "textResId":I
    .end local v23    # "visible":Z
    :cond_3
    const v15, 0x90203a7

    .restart local v15    # "iconId":I
    goto :goto_5

    .line 269
    .restart local v14    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v21    # "text":Ljava/lang/CharSequence;
    .restart local v22    # "textResId":I
    .restart local v23    # "visible":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 271
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 272
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 273
    .local v21, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v9, v0}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 274
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_5

    .line 275
    invoke-static {v10}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 279
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "icon":Landroid/graphics/drawable/Icon;
    .end local v21    # "text":Ljava/lang/CharSequence;
    :cond_5
    :goto_6
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 280
    const-string/jumbo v3, "package"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 279
    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4    # "gpsIntent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 294
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "builder":Landroid/app/Notification$Builder;
    .restart local v19    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_6
    invoke-virtual {v11, v14}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 301
    .restart local v16    # "n":Landroid/app/Notification;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 302
    sget-boolean v2, Lcom/android/systemui/Constants;->SUPPORT_DUAL_GPS:Z

    if-eqz v2, :cond_8

    const v2, 0x902029c

    .line 301
    :goto_7
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 303
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/MiuiNotification;->setCustomizedIcon(Z)Landroid/app/MiuiNotification;

    goto/16 :goto_3

    .line 302
    :cond_8
    const v2, 0x902029e

    goto :goto_7

    .line 314
    .end local v4    # "gpsIntent":Landroid/content/Intent;
    .end local v11    # "builder":Landroid/app/Notification$Builder;
    .end local v16    # "n":Landroid/app/Notification;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const v6, 0x3d8d7

    invoke-virtual {v2, v5, v6, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_4

    .line 277
    .restart local v14    # "icon":Landroid/graphics/drawable/Icon;
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_6
.end method

.method private updateLocationStatus(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 218
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cb"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .end local p1    # "cb":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method

.method protected areActiveHighPowerLocationRequests()Z
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 180
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v9, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHighPowerRequestAppOpArray:[I

    invoke-virtual {v8, v9}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 182
    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_2

    .line 183
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 184
    .local v1, "numPackages":I
    const/4 v5, 0x0

    .local v5, "packageInd":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 185
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 186
    .local v6, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 187
    .local v2, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v2, :cond_1

    .line 188
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 189
    .local v0, "numOps":I
    const/4 v4, 0x0

    .local v4, "opInd":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 190
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 193
    .local v3, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_0

    .line 194
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 195
    const/4 v8, 0x1

    return v8

    .line 189
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 184
    .end local v0    # "numOps":I
    .end local v3    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "opInd":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "numPackages":I
    .end local v2    # "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v5    # "packageInd":I
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :cond_2
    const/4 v8, 0x0

    return v8
.end method

.method public isLocationActive()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    return v0
.end method

.method public isLocationEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 155
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "location_mode"

    .line 156
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 155
    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 157
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateActiveLocationRequests()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string/jumbo v1, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 229
    :cond_2
    const-string/jumbo v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    const-string/jumbo v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 229
    if-eqz v1, :cond_0

    .line 231
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateLocationStatus(Landroid/content/Intent;)V

    .line 232
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->updateGpsNotification(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mSettingsChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cb"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .end local p1    # "cb":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method
