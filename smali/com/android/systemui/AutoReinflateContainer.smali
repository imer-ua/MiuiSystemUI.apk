.class public Lcom/android/systemui/AutoReinflateContainer;
.super Landroid/widget/FrameLayout;
.source "AutoReinflateContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/AutoReinflateContainer$InflateListener;
    }
.end annotation


# instance fields
.field private mDensity:I

.field private final mInflateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/AutoReinflateContainer$InflateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:I

.field private mLocaleList:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/SystemUICompat;->getLocales(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/android/systemui/R$styleable;->AutoReinflateContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "AutoReinflateContainer must contain a layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 40
    return-void
.end method


# virtual methods
.method protected inflateLayout()V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->removeAllViews()V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayoutImpl()V

    .line 81
    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 82
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/systemui/AutoReinflateContainer;->mInflateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/AutoReinflateContainer$InflateListener;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/AutoReinflateContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/AutoReinflateContainer$InflateListener;->onInflated(Landroid/view/View;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method protected inflateLayoutImpl()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLayout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "shouldInflateLayout":Z
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 59
    .local v0, "density":I
    iget v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    if-eq v0, v3, :cond_0

    .line 60
    iput v0, p0, Lcom/android/systemui/AutoReinflateContainer;->mDensity:I

    .line 61
    const/4 v2, 0x1

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/SystemUICompat;->getLocales(Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "localeList":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Ljava/lang/Object;

    if-eq v1, v3, :cond_1

    .line 65
    iput-object v1, p0, Lcom/android/systemui/AutoReinflateContainer;->mLocaleList:Ljava/lang/Object;

    .line 66
    const/4 v2, 0x1

    .line 69
    :cond_1
    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    .line 55
    :cond_2
    return-void
.end method
