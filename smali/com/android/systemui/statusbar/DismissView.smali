.class public Lcom/android/systemui/statusbar/DismissView;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "DismissView.java"


# instance fields
.field private mExtraMarginBottom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private updateLayoutParam()V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f0212

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/DismissView;->mExtraMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90f0213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90e0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DismissView;->mExtraMarginBottom:I

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DismissView;->updateLayoutParam()V

    .line 52
    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    const v0, 0x90202b7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->setImageResource(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x910012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DismissView;->updateLayoutParam()V

    .line 38
    return-void
.end method
