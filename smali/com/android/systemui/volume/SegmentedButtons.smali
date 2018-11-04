.class public Lcom/android/systemui/volume/SegmentedButtons;
.super Landroid/widget/LinearLayout;
.source "SegmentedButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SegmentedButtons$1;,
        Lcom/android/systemui/volume/SegmentedButtons$Callback;
    }
.end annotation


# static fields
.field private static final MEDIUM:Landroid/graphics/Typeface;

.field private static final REGULAR:Landroid/graphics/Typeface;


# instance fields
.field private mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mClick:Landroid/view/View$OnClickListener;

.field private final mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mSelectedValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->REGULAR:Landroid/graphics/Typeface;

    .line 35
    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->MEDIUM:Landroid/graphics/Typeface;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    new-instance v0, Lcom/android/systemui/volume/SegmentedButtons$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SegmentedButtons$1;-><init>(Lcom/android/systemui/volume/SegmentedButtons;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mClick:Landroid/view/View$OnClickListener;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SegmentedButtons;->setOrientation(I)V

    .line 49
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 44
    return-void
.end method

.method private fireOnSelected(Z)V
    .locals 2
    .param p1, "fromClick"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/volume/SegmentedButtons$Callback;->onSelected(Ljava/lang/Object;Z)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method protected setSelectedStyle(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "selected"    # Z

    .prologue
    .line 74
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SegmentedButtons;->MEDIUM:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    return-void

    .line 74
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/SegmentedButtons;->REGULAR:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public setSelectedValue(Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "fromClick"    # Z

    .prologue
    .line 61
    iget-object v4, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .local v0, "c":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 66
    .local v3, "tag":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 67
    .local v2, "selected":Z
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 68
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedStyle(Landroid/widget/TextView;Z)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "c":Landroid/widget/TextView;
    .end local v2    # "selected":Z
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/SegmentedButtons;->fireOnSelected(Z)V

    .line 60
    return-void
.end method
