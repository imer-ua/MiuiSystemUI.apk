.class public Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;
.super Lcom/android/keyguard/wallpaper/WallPaperDesView;
.source "WallPaperDesGlobalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$1;,
        Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;
    }
.end annotation


# static fields
.field private static final EXPECT_BROWSER_PACKAGE_NAME:[Ljava/lang/String;

.field private static IS_LOG_DEBUG:Z

.field private static sTypefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mBottomNotifyArea:Landroid/view/View;

.field private mContentTextView:Landroid/widget/TextView;

.field private mDropDownMarkView:Landroid/widget/ImageView;

.field private mDropDownNotifyTextView:Landroid/widget/TextView;

.field private mDropDownValueAnimator:Landroid/animation/ValueAnimator;

.field private mFromContainerView:Landroid/view/View;

.field private mFromLogoImageView:Landroid/widget/ImageView;

.field private mFromTextView:Landroid/widget/TextView;

.field private mHasLinkInfo:Z

.field private mLightMode:Z

.field mReMeasureAndSetTitleTask:Ljava/lang/Runnable;

.field private mShowLogoStateController:Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;

.field private mSpringBackAnimator:Landroid/animation/ValueAnimator;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get3(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;Landroid/widget/TextView;ILjava/lang/String;III)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textWidth"    # I
    .param p3, "string"    # Ljava/lang/String;
    .param p4, "maxCharSequenceCount"    # I
    .param p5, "minTextSize"    # I
    .param p6, "maxTextSize"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->measureAndSetTitle(Landroid/widget/TextView;ILjava/lang/String;III)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "com.mi.globalbrowser"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "com.android.browser"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "com.android.chrome"

    aput-object v1, v0, v3

    .line 50
    sput-object v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->EXPECT_BROWSER_PACKAGE_NAME:[Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "WallPaperDesGlobalView"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->IS_LOG_DEBUG:Z

    .line 543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->sTypefaces:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/WallPaperDesView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;-><init>(I)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;

    .line 298
    new-instance v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$1;-><init>(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mReMeasureAndSetTitleTask:Ljava/lang/Runnable;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/wallpaper/WallPaperDesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;-><init>(I)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;

    .line 298
    new-instance v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$1;-><init>(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mReMeasureAndSetTitleTask:Ljava/lang/Runnable;

    .line 115
    return-void
.end method

.method private static cancelAnim(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 538
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 537
    :cond_0
    return-void
.end method

.method private cancelAnimator()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->cancelSpringBackAnimator()V

    .line 133
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->cancelDropDownAnimator()V

    .line 131
    return-void
.end method

.method private cancelDropDownAnimator()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mDropDownValueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->cancelAnim(Landroid/animation/Animator;)V

    .line 140
    return-void
.end method

.method private cancelSpringBackAnimator()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mSpringBackAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->cancelAnim(Landroid/animation/Animator;)V

    .line 136
    return-void
.end method

.method public static getMiuiPreviewNormalTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 550
    const-string/jumbo v0, "fonts/Roboto-Light.ttf"

    invoke-static {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiPreviewTitleTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 546
    const-string/jumbo v0, "fonts/Roboto-Medium.ttf"

    invoke-static {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private getRemoteLogoDrawable(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaperInfo"    # Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .param p3, "lightMode"    # Z

    .prologue
    const/4 v6, 0x0

    .line 216
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 217
    :cond_0
    return-object v6

    .line 216
    :cond_1
    iget-object v4, p2, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->cp:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.mfashiongallery.emag"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 221
    .local v1, "packageResources":Landroid/content/res/Resources;
    if-nez v1, :cond_2

    .line 222
    return-object v6

    .line 224
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_3

    const-string/jumbo v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->cp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_logo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "resName":Ljava/lang/String;
    const-string/jumbo v4, "drawable"

    const-string/jumbo v5, "com.mfashiongallery.emag"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, "resId":I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4

    .line 224
    .end local v2    # "resId":I
    .end local v3    # "resName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "dark_"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v1    # "packageResources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    return-object v6
.end method

.method private static declared-synchronized getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;

    monitor-enter v1

    .line 554
    :try_start_0
    sget-object v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    sget-object v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_0
    sget-object v0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getMiuiPreviewTitleTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContentTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getMiuiPreviewNormalTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getMiuiPreviewNormalTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mDropDownNotifyTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getMiuiPreviewNormalTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    return-void
.end method

.method private measureAndSetTitle(Landroid/widget/TextView;ILjava/lang/String;III)V
    .locals 7
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textWidth"    # I
    .param p3, "string"    # Ljava/lang/String;
    .param p4, "maxCharSequenceCount"    # I
    .param p5, "minTextSize"    # I
    .param p6, "maxTextSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 314
    if-nez p3, :cond_0

    .line 315
    const-string/jumbo p3, ""

    .line 317
    :cond_0
    move-object v1, p3

    .line 318
    .local v1, "measureString":Ljava/lang/String;
    if-lez p4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, p4, :cond_1

    .line 319
    invoke-virtual {v1, v6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 321
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 322
    .local v2, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 323
    .local v0, "measureLength":F
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 324
    .local v3, "textSize":F
    int-to-float v5, p2

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_4

    .line 325
    int-to-float v5, p6

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_3

    .line 345
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 346
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 347
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void

    .line 328
    :cond_3
    int-to-float v5, p2

    div-float v4, v5, v0

    .line 329
    .local v4, "textSizeScale":F
    mul-float/2addr v3, v4

    .line 330
    int-to-float v5, p6

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 331
    int-to-float v3, p6

    goto :goto_0

    .line 335
    .end local v4    # "textSizeScale":F
    :cond_4
    int-to-float v5, p5

    cmpg-float v5, v3, v5

    if-lez v5, :cond_2

    .line 338
    int-to-float v5, p2

    div-float v4, v5, v0

    .line 339
    .restart local v4    # "textSizeScale":F
    mul-float/2addr v3, v4

    .line 340
    int-to-float v5, p5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 341
    int-to-float v3, p5

    goto :goto_0
.end method

.method private reportEvent(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallpaperInfo"    # Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .param p3, "eventCode"    # I

    .prologue
    .line 459
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 460
    :cond_0
    return-void

    .line 459
    :cond_1
    iget-object v1, p2, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->authority:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 463
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v1, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;-><init>(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;ILandroid/content/Context;)V

    .line 479
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 463
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 458
    return-void
.end method

.method private updateFromViewState()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 278
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;->-wrap0(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;->-wrap2(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;)V

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-boolean v3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mLightMode:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getRemoteLogoDrawable(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    .local v0, "remoteLogoDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromContainerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .end local v0    # "remoteLogoDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 286
    .restart local v0    # "remoteLogoDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mAuthor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromContainerView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromContainerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->onAttachedToWindow()V

    .line 120
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->onDetachedFromWindow()V

    .line 127
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->cancelAnimator()V

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mReMeasureAndSetTitleTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 146
    const v0, 0x91201a2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    .line 147
    const v0, 0x91201a3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContentTextView:Landroid/widget/TextView;

    .line 148
    const v0, 0x91201a4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromContainerView:Landroid/view/View;

    .line 149
    const v0, 0x91201a5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromTextView:Landroid/widget/TextView;

    .line 150
    const v0, 0x91201a6

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromLogoImageView:Landroid/widget/ImageView;

    .line 151
    const v0, 0x91201a8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mDropDownMarkView:Landroid/widget/ImageView;

    .line 152
    const v0, 0x91201a9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mDropDownNotifyTextView:Landroid/widget/TextView;

    .line 153
    const v0, 0x91201a7

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mBottomNotifyArea:Landroid/view/View;

    .line 155
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->initLayout()V

    .line 145
    return-void
.end method

.method public refreshWallpaperInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;->-wrap1(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;I)V

    .line 175
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v1, v3, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->ex:Ljava/lang/String;

    .line 177
    .local v1, "ex":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "exJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "author"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mAuthor:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v2    # "exJsonObject":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->updateWallpaperInfo()V

    .line 172
    .end local v1    # "ex":Ljava/lang/String;
    :cond_0
    return-void

    .line 181
    .restart local v1    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 183
    iput-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mAuthor:Ljava/lang/String;

    goto :goto_0

    .line 186
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    iput-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mAuthor:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 307
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    const/16 v2, 0xf

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->reportEvent(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;I)V

    .line 310
    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setVisibility(I)V

    .line 306
    return-void
.end method

.method public updateColorByWallpaper(Z)V
    .locals 5
    .param p1, "lightMode"    # Z

    .prologue
    const v4, 0x90c0112

    const v3, 0x90c0111

    const v2, 0x90c0114

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mShowLogoStateController:Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;->-wrap1(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$StateController;I)V

    .line 198
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mLightMode:Z

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mDropDownNotifyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mDropDownMarkView:Landroid/widget/ImageView;

    const v1, 0x902009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->updateFromViewState()V

    .line 196
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mDropDownNotifyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mDropDownMarkView:Landroid/widget/ImageView;

    const v1, 0x902008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateWallpaperInfo()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->title:Ljava/lang/String;

    .line 236
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v8, v0, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->content:Ljava/lang/String;

    .line 250
    .local v8, "content":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mAuthor:Ljava/lang/String;

    .line 258
    .local v7, "author":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->updateFromViewState()V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->landingPageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    iput-boolean v9, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mHasLinkInfo:Z

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mBottomNotifyArea:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_3
    return-void

    .line 239
    .end local v7    # "author":Ljava/lang/String;
    .end local v8    # "content":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    .line 240
    .local v2, "titleTextWidth":I
    if-nez v2, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mReMeasureAndSetTitleTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->post(Ljava/lang/Runnable;)Z

    .line 246
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mTitleTextView:Landroid/widget/TextView;

    const/16 v4, 0x32

    const/16 v5, 0x30

    const/16 v6, 0x48

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->measureAndSetTitle(Landroid/widget/TextView;ILjava/lang/String;III)V

    goto :goto_4

    .line 253
    .end local v2    # "titleTextWidth":I
    .restart local v8    # "content":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 261
    .restart local v7    # "author":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u00a9"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mFromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 271
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mHasLinkInfo:Z

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mDropDownMarkView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->mBottomNotifyArea:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
