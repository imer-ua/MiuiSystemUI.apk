.class Lcom/android/systemui/qs/customize/TileAdapter$2;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "current"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 670
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap0(Lcom/android/systemui/qs/customize/TileAdapter;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 671
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v3

    if-ge v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 660
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 661
    if-eqz p2, :cond_0

    .line 662
    check-cast p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .end local p2    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->stopDrag()V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get3(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    .line 659
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 678
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 679
    :cond_0
    invoke-static {v3, v3}, Lcom/android/systemui/qs/customize/TileAdapter$2;->makeMovementFlags(II)I

    move-result v1

    return v1

    .line 681
    :cond_1
    const/16 v0, 0xf

    .line 683
    .local v0, "dragFlags":I
    invoke-static {v0, v3}, Lcom/android/systemui/qs/customize/TileAdapter$2;->makeMovementFlags(II)I

    move-result v1

    return v1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 688
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 689
    .local v0, "from":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 690
    .local v1, "to":I
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v0, v1, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap2(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z

    move-result v2

    return v2
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 638
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 639
    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    .line 640
    const/4 p1, 0x0

    .line 642
    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get1(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 643
    return-void

    .line 645
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get1(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 646
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get1(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getAdapterPosition()I

    move-result v1

    .line 647
    .local v1, "position":I
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get7(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 648
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get1(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    .line 649
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v4

    if-le v1, v4, :cond_2

    iget-boolean v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v4, :cond_5

    .line 648
    :cond_2
    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 650
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2, v5}, Lcom/android/systemui/qs/customize/TileAdapter;->-set0(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 652
    .end local v0    # "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .end local v1    # "position":I
    :cond_3
    if-eqz p1, :cond_4

    .line 653
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-static {v2, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->-set0(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 654
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->-get1(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->startDrag()V

    .line 637
    :cond_4
    return-void

    .line 649
    .restart local v0    # "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .restart local v1    # "position":I
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 694
    return-void
.end method
