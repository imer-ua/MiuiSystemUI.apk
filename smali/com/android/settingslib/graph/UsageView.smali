.class public Lcom/android/settingslib/graph/UsageView;
.super Landroid/widget/FrameLayout;
.source "UsageView.java"


# instance fields
.field private final mBottomLabels:[Landroid/widget/TextView;

.field private final mLabels:[Landroid/widget/TextView;

.field private final mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v12, 0x800005

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v9, Lcom/android/settingslib/R$layout;->usage_view:I

    invoke-virtual {v7, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    sget v7, Lcom/android/settingslib/R$id;->usage_graph:I

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/graph/UsageGraph;

    iput-object v7, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    .line 39
    const/4 v7, 0x3

    new-array v9, v7, [Landroid/widget/TextView;

    .line 40
    sget v7, Lcom/android/settingslib/R$id;->label_bottom:I

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v9, v8

    .line 41
    sget v7, Lcom/android/settingslib/R$id;->label_middle:I

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v9, v10

    .line 42
    sget v7, Lcom/android/settingslib/R$id;->label_top:I

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v9, v11

    .line 39
    iput-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    .line 44
    new-array v9, v11, [Landroid/widget/TextView;

    .line 45
    sget v7, Lcom/android/settingslib/R$id;->label_start:I

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v9, v8

    .line 46
    sget v7, Lcom/android/settingslib/R$id;->label_end:I

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v9, v10

    .line 44
    iput-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    .line 48
    sget-object v7, Lcom/android/settingslib/R$styleable;->UsageView:[I

    invoke-virtual {p1, p2, v7, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 50
    sget v7, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    sget v7, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    sget v7, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    sget v7, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 56
    sget v7, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 57
    .local v2, "color":I
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_2

    aget-object v6, v9, v7

    .line 58
    .local v6, "v":Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 60
    .end local v6    # "v":Landroid/widget/TextView;
    :cond_2
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v10, v9

    move v7, v8

    :goto_1
    if-ge v7, v10, :cond_3

    aget-object v6, v9, v7

    .line 61
    .restart local v6    # "v":Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 64
    .end local v2    # "color":I
    .end local v6    # "v":Landroid/widget/TextView;
    :cond_3
    sget v7, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 65
    sget v7, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 66
    .local v3, "gravity":I
    if-ne v3, v12, :cond_5

    .line 67
    sget v7, Lcom/android/settingslib/R$id;->graph_label_group:I

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 68
    .local v5, "layout":Landroid/widget/LinearLayout;
    sget v7, Lcom/android/settingslib/R$id;->label_group:I

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 70
    .local v4, "labels":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 71
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    sget v7, Lcom/android/settingslib/R$id;->bottom_label_group:I

    invoke-virtual {p0, v7}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    .local v1, "bottomLabels":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    .line 77
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v11

    .line 76
    invoke-virtual {v1, v7, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 82
    .end local v1    # "bottomLabels":Landroid/widget/LinearLayout;
    .end local v3    # "gravity":I
    .end local v4    # "labels":Landroid/widget/LinearLayout;
    .end local v5    # "layout":Landroid/widget/LinearLayout;
    :cond_4
    iget-object v7, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    sget v9, Lcom/android/settingslib/R$styleable;->UsageView_android_colorAccent:I

    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    .line 35
    return-void

    .line 78
    .restart local v3    # "gravity":I
    :cond_5
    const v7, 0x800003

    if-eq v3, v7, :cond_4

    .line 79
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported gravity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public setBottomLabels([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 132
    array-length v1, p1

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid number of labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public setSideLabels([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 123
    array-length v1, p1

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid number of labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method