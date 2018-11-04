.class public Lcom/android/systemui/stackdivider/DividerWindowManager;
.super Ljava/lang/Object;
.source "DividerWindowManager.java"


# instance fields
.field private mDividerInsets:I

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    const v1, 0x90f0238

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mDividerInsets:I

    .line 52
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 49
    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/stackdivider/DividerView;II)V
    .locals 6
    .param p1, "view"    # Lcom/android/systemui/stackdivider/DividerView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 56
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 57
    const/16 v3, 0x7f2

    .line 58
    const v4, 0x20840028

    .line 60
    const/4 v5, -0x3

    move v1, p2

    move v2, p3

    .line 56
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "DockedStackDivider"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 63
    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Lcom/android/systemui/stackdivider/DividerView;->setSystemUiVisibility(I)V

    .line 66
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 92
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    .line 88
    return-void
.end method

.method public setSlippery(Z)V
    .locals 4
    .param p1, "slippery"    # Z

    .prologue
    const/high16 v3, 0x20000000

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "changed":Z
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 99
    const/4 v0, 0x1

    .line 104
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :cond_1
    return-void

    .line 100
    :cond_2
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 4
    .param p1, "touchable"    # Z

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "changed":Z
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 113
    const/4 v0, 0x1

    .line 118
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    :cond_1
    return-void

    .line 114
    :cond_2
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 73
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mDividerInsets:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 76
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerWindowManager;->mDividerInsets:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method
