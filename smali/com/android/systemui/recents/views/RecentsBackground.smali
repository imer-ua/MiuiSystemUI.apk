.class public Lcom/android/systemui/recents/views/RecentsBackground;
.super Lcom/android/systemui/statusbar/AlphaOptimizedView;
.source "RecentsBackground.java"


# instance fields
.field private mDisplay:Landroid/view/Display;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentsBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mDisplay:Landroid/view/Display;

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsBackground;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    .line 42
    iget v2, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mRight:I

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mBottom:I

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 36
    return-void

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 45
    .local v1, "rotation":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 46
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 50
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mRight:I

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mBottom:I

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mTop:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mRight:I

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mBottom:I

    iget v5, p0, Lcom/android/systemui/recents/views/RecentsBackground;->mTop:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 47
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 48
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1
.end method
