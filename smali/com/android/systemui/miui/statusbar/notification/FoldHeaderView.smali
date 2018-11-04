.class public Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "FoldHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;
    }
.end annotation


# static fields
.field private static ALPHA_PRESSED:F


# instance fields
.field private mClickListener:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;

.field private mDividerView:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mClickListener:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setDividerWidth()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->ALPHA_PRESSED:F

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setInShelf(Z)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setClipChildren(Z)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setClipToPadding(Z)V

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->update()V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mOrientation:I

    .line 28
    return-void
.end method

.method private setDividerWidth()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 123
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f0465

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method

.method private update()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$2;-><init>(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public isInShelf()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    iget v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->update()V

    .line 107
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mOrientation:I

    .line 103
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    .line 89
    const v1, 0x91200dd

    invoke-virtual {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mDividerView:Landroid/view/View;

    .line 90
    const v1, 0x91200de

    invoke-virtual {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "tipsView":Landroid/view/View;
    sget-boolean v1, Lcom/android/systemui/Constants;->ENABLE_USER_FOLD:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    new-instance v1, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$1;-><init>(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void

    .line 91
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 75
    .local v2, "upOrCancel":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    .local v0, "alpha":F
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x91200dd

    if-eq v4, v5, :cond_1

    .line 79
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 76
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 74
    .end local v0    # "alpha":F
    .end local v1    # "i":I
    .end local v2    # "upOrCancel":Z
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 75
    .restart local v2    # "upOrCancel":Z
    :cond_3
    sget v0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->ALPHA_PRESSED:F

    .restart local v0    # "alpha":F
    goto :goto_1

    .line 83
    .restart local v1    # "i":I
    :cond_4
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method public performAddAnimation(JJLandroid/animation/AnimatorListenerAdapter;)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "globalListener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 58
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 59
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 60
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 61
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 57
    return-void
.end method

.method public performRemoveAnimation(JFLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "globalListener"    # Landroid/animation/AnimatorListenerAdapter;
    .param p5, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    return-void
.end method

.method public setClickListener(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mClickListener:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;

    .line 37
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setFocusable(Z)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setClickable(Z)V

    .line 65
    return-void
.end method
