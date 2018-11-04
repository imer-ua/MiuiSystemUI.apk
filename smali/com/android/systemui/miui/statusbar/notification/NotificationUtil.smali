.class public Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static sFold:Z

.field private static sFoldAnimating:Z

.field private static sIsLastQsCovered:Z

.field private static sUserFold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFold:Z

    .line 76
    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    .line 77
    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sIsLastQsCovered:Z

    .line 78
    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFoldAnimating:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAppIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "rowIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 258
    if-eqz p2, :cond_2

    .line 259
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isHybrid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->hasLargeIcon(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 263
    :cond_0
    if-nez v0, :cond_1

    .line 264
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 266
    :cond_1
    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    .end local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public static applyLegacyRowIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "expandedView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getRowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 241
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->isNotificationHeader(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 243
    .local v0, "icon":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 244
    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 249
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, 0x9120047

    invoke-virtual {v0, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static applyRightIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "rightIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 274
    if-eqz p2, :cond_1

    .line 275
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->hasLargeIcon(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    .end local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 278
    .restart local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 281
    .end local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getRowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 282
    .restart local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_4

    .line 283
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 285
    :cond_4
    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static canSendNotificationForTargetPkg(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 191
    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    if-nez v0, :cond_0

    .line 193
    const-string/jumbo v0, "com.android.keyguard"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    if-nez v0, :cond_0

    .line 194
    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    if-nez v0, :cond_0

    .line 196
    const-string/jumbo v0, "com.miui.systemAdSolution"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    if-nez v0, :cond_0

    .line 197
    const-string/jumbo v0, "com.miui.msa.global"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    if-nez v0, :cond_0

    .line 198
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 402
    const/4 v0, 0x0

    .line 404
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 405
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 406
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 407
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 411
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz v3, :cond_2

    .line 412
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 418
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 420
    return-object v0

    .line 414
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static fold(Z)V
    .locals 0
    .param p0, "fold"    # Z

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFold:Z

    .line 88
    return-void
.end method

.method public static getCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;
    .locals 2
    .param p0, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "miui.category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    return-object v1
.end method

.method public static getFoldTranslationDirection(ZF)F
    .locals 2
    .param p0, "add"    # Z
    .param p1, "origin"    # F

    .prologue
    .line 119
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFold()Z

    move-result v0

    xor-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    .line 120
    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return p1
.end method

.method public static getHiddenText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 457
    const v0, 0x91004fb

    .line 456
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    const v0, 0x9100330

    goto :goto_0
.end method

.method public static getHybridAppName(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;
    .locals 2
    .param p0, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "miui.substName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    return-object v1
.end method

.method public static getLargeIconDrawable(Landroid/content/Context;Landroid/app/Notification;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 234
    :cond_1
    return-object v1
.end method

.method public static getMessageClassName(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v1}, Landroid/app/MiuiNotification;->getMessageClassName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 355
    .local v0, "className":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "className":Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method public static getMessageId(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;
    .locals 6
    .param p0, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "message_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "messageId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "adid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 160
    .local v0, "ad_id":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 161
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 164
    .end local v0    # "ad_id":J
    :cond_0
    return-object v2

    .line 166
    .end local v2    # "messageId":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static getPackageContext(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 433
    invoke-virtual {p1, p0}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 434
    .local v0, "packageContext":Landroid/content/Context;
    sget v1, Lmiui/R$style;->Theme_Light_RemoteViews:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 435
    return-object v0
.end method

.method public static getPkgImportance(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getImportance(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRowIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "en"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 296
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isPhoneNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    const-string/jumbo v5, "com.android.contacts.activities.TwelveKeyDialer.png"

    .line 297
    invoke-static {p0, v5}, Lmiui/content/res/IconCustomizer;->getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    return-object v5

    .line 299
    :cond_0
    const-class v5, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-virtual {v5, p1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->isUsbNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x90202b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 302
    invoke-static {v0, v8}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    return-object v5

    .line 304
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isImeNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x90202a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 306
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 307
    invoke-static {v0, v8}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    return-object v5

    .line 309
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isSubstituteNotification()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 311
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 312
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 313
    .local v4, "userId":I
    if-gez v4, :cond_3

    .line 314
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v4

    .line 316
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 317
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_4

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 320
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "userId":I
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "StatusBar"

    const-string/jumbo v6, "Failed looking up ApplicationInfo "

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    return-object v7
.end method

.method public static getSmallIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 392
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isXmsf(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-static {p0, p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getRowIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 394
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 395
    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 398
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method

.method public static getUid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)I
    .locals 6
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 443
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->canSendNotificationForTargetPkg(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 446
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 447
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 448
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NotificationUtil"

    const-string/jumbo v4, "error getting uid"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUid()I

    move-result v3

    return v3
.end method

.method public static getUserFoldLinesCount()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method private static hasLargeIcon(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasProgressbar(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 5
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v4, 0x0

    .line 381
    if-nez p0, :cond_0

    .line 382
    return v4

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 385
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "android.progressMax"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 386
    .local v2, "max":I
    const-string/jumbo v3, "android.progressIndeterminate"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 387
    .local v1, "ind":Z
    if-nez v2, :cond_1

    .end local v1    # "ind":Z
    :goto_0
    return v1

    .restart local v1    # "ind":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hasSmallIcon(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCts(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2
    .param p0, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 140
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.android.cts.verifier"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomViewNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 428
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 429
    goto :goto_0

    :cond_2
    move v0, v1

    .line 428
    goto :goto_0
.end method

.method public static isExpandingEnabled(Z)Z
    .locals 2
    .param p0, "onKeyguard"    # Z

    .prologue
    const/4 v0, 0x0

    .line 439
    sget-boolean v1, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFold()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFold:Z

    return v0
.end method

.method public static isFoldAnimating()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFoldAnimating:Z

    return v0
.end method

.method public static isHybrid(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2
    .param p0, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 136
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.miui.hybrid"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isImeNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 5
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getId()I

    move-result v0

    .line 340
    .local v0, "id":I
    const-string/jumbo v3, "android"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    const v3, 0x1040445

    if-eq v0, v3, :cond_0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 341
    goto :goto_0

    :cond_2
    move v1, v2

    .line 340
    goto :goto_0
.end method

.method public static isLastQsCovered()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sIsLastQsCovered:Z

    return v0
.end method

.method public static isMediaNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 1
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 424
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/app/NotificationCompat;->isMediaNotification(Landroid/app/Notification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMissedCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v1, 0x0

    .line 345
    if-nez p0, :cond_0

    return v1

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "basePkg":Ljava/lang/String;
    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    const-string/jumbo v2, "com.android.server.telecom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 347
    if-nez v2, :cond_1

    .line 349
    const-string/jumbo v2, "com.miui.voip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 347
    if-eqz v2, :cond_2

    .line 350
    :cond_1
    const-string/jumbo v1, "missed_call"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 347
    :cond_2
    return v1
.end method

.method private static isPhoneNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "pkg":Ljava/lang/String;
    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const-string/jumbo v1, "com.android.server.telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 334
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPkgInFoldWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string/jumbo v0, "com.miui.securitycenter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const-string/jumbo v0, "com.lbe.security.miui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPkgInPriorityWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string/jumbo v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const-string/jumbo v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 209
    if-nez v0, :cond_0

    .line 211
    const-string/jumbo v0, "com.android.mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPkgWontAutoBundle(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const-string/jumbo v0, "com.miui.hybrid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 202
    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "com.miui.systemAdSolution"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 202
    if-nez v0, :cond_0

    .line 205
    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "pkg":Ljava/lang/String;
    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isUserFold()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    return v0
.end method

.method public static isXmsf(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2
    .param p0, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 132
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXmsfCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p0, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v0, 0x0

    .line 144
    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getCategory(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static lastQsCovered(Z)V
    .locals 0
    .param p0, "qsCovered"    # Z

    .prologue
    .line 115
    sput-boolean p0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sIsLastQsCovered:Z

    .line 114
    return-void
.end method

.method public static needRestatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 5
    .param p0, "newNotification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p1, "oldNotification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v2, 0x1

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v3}, Landroid/app/MiuiNotification;->getMessageCount()I

    move-result v0

    .line 372
    .local v0, "newCount":I
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v3}, Landroid/app/MiuiNotification;->getMessageCount()I

    move-result v1

    .line 373
    .local v1, "oldCount":I
    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->needStatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v3

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->needStatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needStatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 3
    .param p0, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    const/4 v0, 0x0

    .line 363
    if-eqz p0, :cond_0

    .line 364
    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->hasProgressbar(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isClearable()Z

    move-result v1

    .line 363
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static needStatBadgeNum(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 359
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->needStatBadgeNum(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resolveSubText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 478
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.subText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 479
    .local v0, "subText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .end local v0    # "subText":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "subText":Ljava/lang/CharSequence;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 470
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 471
    .local v0, "content":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 472
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.bigText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 474
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "content":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "content":Ljava/lang/CharSequence;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 462
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 463
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 464
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 466
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static setFoldAnimating(Z)V
    .locals 0
    .param p0, "foldAnimating"    # Z

    .prologue
    .line 103
    sput-boolean p0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sFoldAnimating:Z

    .line 102
    return-void
.end method

.method public static setPkgImportance(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "importance"    # I

    .prologue
    .line 177
    invoke-static {p0, p1, p2}, Lmiui/util/NotificationFilterHelper;->setImportance(Landroid/content/Context;Ljava/lang/String;I)V

    .line 176
    return-void
.end method

.method public static userFold(I)V
    .locals 1
    .param p0, "userFold"    # I

    .prologue
    const/4 v0, 0x0

    .line 93
    if-lez p0, :cond_0

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    .line 92
    :goto_0
    return-void

    .line 95
    :cond_0
    if-gez p0, :cond_1

    .line 96
    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->allowFold()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->sUserFold:Z

    goto :goto_0
.end method
