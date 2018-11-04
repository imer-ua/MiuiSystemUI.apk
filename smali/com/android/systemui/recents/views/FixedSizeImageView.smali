.class public Lcom/android/systemui/recents/views/FixedSizeImageView;
.super Lcom/android/systemui/statusbar/AlphaOptimizedImageView;
.source "FixedSizeImageView.java"


# instance fields
.field private mAllowInvalidate:Z

.field private mAllowRelayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 48
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->invalidate()V

    .line 60
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->requestLayout()V

    .line 53
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 69
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 70
    .local v0, "isNullBitmapDrawable":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 74
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 76
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 67
    return-void

    .line 69
    .end local v0    # "isNullBitmapDrawable":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isNullBitmapDrawable":Z
    goto :goto_0

    .line 68
    .end local v0    # "isNullBitmapDrawable":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isNullBitmapDrawable":Z
    goto :goto_0
.end method
