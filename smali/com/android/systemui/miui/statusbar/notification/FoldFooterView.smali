.class public Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "FoldFooterView.java"


# instance fields
.field private mDividerView:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setDividerWidth()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setInShelf(Z)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setClipChildren(Z)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setClipToPadding(Z)V

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->update()V

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mOrientation:I

    .line 18
    return-void
.end method

.method private setDividerWidth()V
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 80
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f0466

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method private update()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView$1;-><init>(Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public isInShelf()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    iget v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->update()V

    .line 64
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mOrientation:I

    .line 60
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    .line 56
    const v0, 0x91200dd

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mDividerView:Landroid/view/View;

    .line 54
    return-void
.end method

.method public performAddAnimation(JJLandroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "globalListener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 43
    return-void
.end method

.method public performRemoveAnimation(JFLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "globalListener"    # Landroid/animation/AnimatorListenerAdapter;
    .param p5, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setFocusable(Z)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setClickable(Z)V

    .line 47
    return-void
.end method
