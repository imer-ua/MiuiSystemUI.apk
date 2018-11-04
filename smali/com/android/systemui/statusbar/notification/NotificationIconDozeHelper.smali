.class public Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
.super Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
.source "NotificationIconDozeHelper.java"


# instance fields
.field private mColor:I

.field private final mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mImageDarkAlpha:I

.field private final mImageDarkColor:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;Landroid/widget/ImageView;F)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "intensity"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkColor:I

    .line 33
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 34
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    .line 33
    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 36
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    .line 38
    return-void
.end method

.method private fadeImageAlpha(Landroid/widget/ImageView;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 75
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;Landroid/widget/ImageView;)V

    .line 81
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 75
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 74
    return-void
.end method

.method private fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 66
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;Landroid/widget/ImageView;)V

    .line 71
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 66
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 65
    return-void
.end method

.method private updateImageAlpha(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 105
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 104
    return-void

    .line 105
    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;F)V
    .locals 6
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "intensity"    # F

    .prologue
    const/4 v5, 0x0

    .line 89
    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    const/4 v4, -0x1

    invoke-static {v3, v4, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 90
    .local v0, "color":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 91
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    .local v2, "imageDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 100
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 85
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    .line 84
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    .line 42
    return-void
.end method

.method public setImageDark(Landroid/widget/ImageView;ZZJZ)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "fade"    # Z
    .param p4, "delay"    # J
    .param p6, "useGrayscale"    # Z

    .prologue
    .line 48
    if-eqz p3, :cond_1

    .line 49
    if-nez p6, :cond_0

    .line 50
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V

    .line 51
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeImageAlpha(Landroid/widget/ImageView;ZJ)V

    .line 47
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    goto :goto_0

    .line 56
    :cond_1
    if-nez p6, :cond_2

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;Z)V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageAlpha(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method
