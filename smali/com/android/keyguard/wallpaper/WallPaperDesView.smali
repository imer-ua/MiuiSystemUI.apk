.class public Lcom/android/keyguard/wallpaper/WallPaperDesView;
.super Landroid/widget/RelativeLayout;
.source "WallPaperDesView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/WallPaperDesView$1;,
        Lcom/android/keyguard/wallpaper/WallPaperDesView$2;
    }
.end annotation


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field private mContent:Landroid/widget/TextView;

.field private mDensityDpi:I

.field private mFontScale:F

.field private mLocaleList:Ljava/lang/Object;

.field protected mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPreviewButton:Landroid/widget/TextView;

.field private mPreviewButtonClickLayout:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mTitle:Landroid/widget/TextView;

.field protected mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

.field private final mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/WallPaperDesView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance v0, Lcom/android/keyguard/wallpaper/WallPaperDesView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView$1;-><init>(Lcom/android/keyguard/wallpaper/WallPaperDesView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lcom/android/keyguard/wallpaper/WallPaperDesView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView$2;-><init>(Lcom/android/keyguard/wallpaper/WallPaperDesView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    new-instance v0, Lcom/android/keyguard/wallpaper/WallPaperDesView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView$1;-><init>(Lcom/android/keyguard/wallpaper/WallPaperDesView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lcom/android/keyguard/wallpaper/WallPaperDesView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView$2;-><init>(Lcom/android/keyguard/wallpaper/WallPaperDesView;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    .line 52
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    .line 50
    return-void
.end method

.method private updateFontScale()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mTitle:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    const v2, 0x90f0335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 120
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContent:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    const v2, 0x90f0336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 122
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    const v2, 0x90f0337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 124
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    return-void
.end method

.method private updateLanguage()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->getBtnText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method private updateViewText()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v2, v2, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v2, v2, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->getBtnText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "res":I
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget v1, v1, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->linkType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 179
    const v0, 0x90206db

    .line 184
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    .line 185
    const v3, 0x90f0338

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 186
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 173
    return-void

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget v1, v1, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->linkType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 182
    const v0, 0x90206dc

    goto :goto_0
.end method

.method private updateViewsForNotch()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .local v0, "desLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v1, :cond_0

    .line 84
    const v1, 0x90f0305

    .line 83
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void

    .line 85
    :cond_0
    const v1, 0x90f0304

    goto :goto_0
.end method

.method private updateViewsLayoutParams()V
    .locals 7

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    const v5, 0x90f0339

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 133
    .local v1, "layoutMarginStartEnd":I
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v4, :cond_0

    .line 134
    const v4, 0x90f0305

    .line 133
    :goto_0
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 136
    const/4 v5, 0x0

    .line 132
    invoke-virtual {v2, v1, v4, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    .local v3, "previewButtonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    .line 142
    const v5, 0x90f033a

    .line 141
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 143
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    const v6, 0x90206d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperCarousel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    .line 147
    const v6, 0x90c0115

    .line 146
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 147
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 146
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 153
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    .local v0, "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    .line 155
    const v5, 0x90f033b

    .line 154
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 156
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void

    .line 135
    .end local v0    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "previewButtonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const v4, 0x90f0304

    goto :goto_0

    .line 149
    .restart local v3    # "previewButtonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperInfoListener(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;)V

    .line 57
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    invoke-static {p1}, Lcom/android/systemui/SystemUICompat;->getLocales(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "localeList":Ljava/lang/Object;
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 94
    .local v1, "fontScale":F
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 95
    .local v0, "densityDpi":I
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mLocaleList:Ljava/lang/Object;

    if-eq v3, v2, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->updateLanguage()V

    .line 97
    iput-object v2, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mLocaleList:Ljava/lang/Object;

    .line 99
    :cond_0
    iget v3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mFontScale:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->updateFontScale()V

    .line 101
    iput v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mFontScale:F

    .line 103
    :cond_1
    iget v3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mDensityDpi:I

    if-eq v3, v0, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->updateFontScale()V

    .line 105
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->updateViewsLayoutParams()V

    .line 106
    iput v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mDensityDpi:I

    .line 90
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterWallpaperInfoListener(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;)V

    .line 63
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 69
    const v0, 0x912007a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mTitle:Landroid/widget/TextView;

    .line 70
    const v0, 0x91200a9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContent:Landroid/widget/TextView;

    .line 71
    const v0, 0x91201ac

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    .line 73
    const v2, 0x91003e0

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x91201aa

    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButtonClickLayout:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButtonClickLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->updateViewsForNotch()V

    .line 68
    return-void
.end method

.method public openAd()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->opendAd(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshWallpaperInfo()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    if-eqz v0, :cond_1

    .line 162
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->updateViewText()V

    .line 159
    :cond_1
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->content:Ljava/lang/String;

    const-string/jumbo v2, "\\s*"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateColorByWallpaper(Z)V
    .locals 4
    .param p1, "lightMode"    # Z

    .prologue
    const v3, 0x90c0114

    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    .line 194
    const v2, 0x90c0115

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 194
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    const v2, 0x90c0111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    const v2, 0x90c0112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mPreviewButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView;->mResources:Landroid/content/res/Resources;

    const v2, 0x90c0113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
