.class public Lcom/android/systemui/miui/ViewStateGroup$ViewState;
.super Ljava/lang/Object;
.source "ViewStateGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/ViewStateGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation


# instance fields
.field private mFloatStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mIntStates:Landroid/util/SparseIntArray;

.field private mViewId:I


# direct methods
.method static synthetic -get1(Lcom/android/systemui/miui/ViewStateGroup$ViewState;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mIntStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/ViewStateGroup$ViewState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mViewId:I

    return v0
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mIntStates:Landroid/util/SparseIntArray;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mFloatStates:Landroid/util/SparseArray;

    .line 101
    iput p1, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mViewId:I

    .line 100
    return-void
.end method

.method private static applyFloatProperty(Landroid/view/View;IF)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "property"    # I
    .param p2, "value"    # F

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 182
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 180
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_0
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 185
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private static applyIntProperty(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "property"    # I
    .param p2, "value"    # I

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 118
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local p0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 122
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p0    # "view":Landroid/view/View;
    :pswitch_1
    invoke-static {v0, p2}, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->setLayoutGravity(Landroid/view/ViewGroup$LayoutParams;I)V

    goto :goto_0

    .line 126
    :pswitch_2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 130
    :pswitch_3
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 134
    :pswitch_4
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 140
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_5
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 146
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_6
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 152
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_7
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 158
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_8
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 162
    :pswitch_9
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 166
    :pswitch_a
    instance-of v1, p0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 167
    check-cast p0, Landroid/widget/LinearLayout;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 172
    .restart local p0    # "view":Landroid/view/View;
    :pswitch_b
    instance-of v1, p0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 173
    check-cast p0, Landroid/widget/LinearLayout;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private static setLayoutGravity(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 1
    .param p0, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p1, "gravity"    # I

    .prologue
    .line 194
    instance-of v0, p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 195
    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .end local p0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local p0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 197
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .end local p0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method


# virtual methods
.method apply(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mViewId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mIntStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mIntStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 108
    .local v1, "property":I
    iget-object v2, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mIntStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->applyIntProperty(Landroid/view/View;II)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "property":I
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mFloatStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mFloatStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 113
    .restart local v1    # "property":I
    iget-object v2, p0, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->mFloatStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/systemui/miui/ViewStateGroup$ViewState;->applyFloatProperty(Landroid/view/View;IF)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "i":I
    .end local v1    # "property":I
    :cond_1
    return-void
.end method
