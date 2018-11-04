.class Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileItemDecoration"
.end annotation


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/ColorDrawable;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 572
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 573
    const v1, 0x90c0049

    .line 572
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->mDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 571
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;)V

    return-void
.end method

.method private drawBackgroundAfter(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "index"    # I
    .param p3, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 611
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 612
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 613
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v0

    .line 614
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 616
    .local v2, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    .line 617
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 616
    add-int v3, v5, v6

    .line 619
    .local v3, "top":I
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->mDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3, v4, v0}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 620
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->mDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, p3}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 610
    return-void
.end method

.method private findEditViewIndex(Landroid/support/v7/widget/RecyclerView;)I
    .locals 7
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 588
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    instance-of v5, v5, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v5, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 591
    .local v2, "firstVisible":I
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v5}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v5

    if-le v2, v5, :cond_0

    .line 592
    const/4 v5, 0x0

    return v5

    .line 597
    .end local v2    # "firstVisible":I
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 598
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 599
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 601
    .local v3, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 602
    return v4

    .line 598
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 607
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    const/4 v5, -0x1

    return v5
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 578
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 580
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->findEditViewIndex(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 581
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 582
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;->drawBackgroundAfter(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Canvas;)V

    .line 577
    :cond_0
    return-void
.end method
