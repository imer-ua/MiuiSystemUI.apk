.class public Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;
.super Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;
.source "MiuiVerticalVolumeTimerSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->setLayoutDirection(I)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->setVertical(Z)V

    .line 19
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 33
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 34
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getWidth()I

    move-result v6

    .line 40
    .local v6, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getHeight()I

    move-result v2

    .line 41
    .local v2, "h":I
    sub-int v7, v2, v6

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingBottom()I

    move-result v8

    add-int v3, v7, v8

    .line 42
    .local v3, "l":I
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingLeft()I

    move-result v8

    add-int v5, v7, v8

    .line 43
    .local v5, "t":I
    add-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingTop()I

    move-result v8

    sub-int v4, v7, v8

    .line 44
    .local v4, "r":I
    add-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 45
    .local v0, "b":I
    invoke-virtual {v1, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 28
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->drawProgress(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 27
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected transformTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->transformTouchEvent(Landroid/view/MotionEvent;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 55
    .local v0, "ey":F
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 56
    .local v1, "h":F
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 57
    .local v2, "w":F
    div-float v3, v0, v1

    mul-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVerticalVolumeTimerSeekBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 51
    return-void
.end method
