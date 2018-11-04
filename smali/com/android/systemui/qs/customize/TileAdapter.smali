.class public Lcom/android/systemui/qs/customize/TileAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TileAdapter.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileAdapter$1;,
        Lcom/android/systemui/qs/customize/TileAdapter$2;,
        Lcom/android/systemui/qs/customize/TileAdapter$Holder;,
        Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/qs/customize/TileAdapter$Holder;",
        ">;",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;"
    }
.end annotation


# instance fields
.field private mAccessibilityFromIndex:I

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityMoving:Z

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomDividerPadding:I

.field private final mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private mEditIndex:I

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mLiveTiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsFocus:Z

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/support/v7/widget/RecyclerView;

.field private final mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field private mSpanCount:I

.field private mTileDividerIndex:I

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTopDividerPadding:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mLiveTiles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSpanCount:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/TileAdapter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveTiles()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Z
    .locals 1
    .param p0, "tileInfo"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->isCustomTile(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->selectPosition(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->showAccessibilityDialog(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->startAccessibleDrag(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "count"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 560
    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/TileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 624
    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/TileAdapter$2;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 103
    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSpanCount:I

    .line 104
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 105
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 106
    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x90f00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTopDividerPadding:I

    .line 109
    const v1, 0x90f00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mBottomDividerPadding:I

    .line 111
    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mParent:Landroid/support/v7/widget/RecyclerView;

    .line 101
    return-void
.end method

.method private bindOnClickListeners(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V
    .locals 3
    .param p1, "info"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .param p2, "holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$6;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 354
    return-void
.end method

.method private canRemoveTiles()Z
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v1

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleUpdateStateForPosition(ILcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "newState"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 174
    .local v1, "tileInfo":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iput-object p2, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 176
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mParent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 177
    .local v0, "holder":Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    if-eqz v0, :cond_0

    .line 179
    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/qs/QSIconView;->setAnimationEnabled(Z)V

    .line 180
    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 181
    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/qs/QSIconView;->setAnimationEnabled(Z)V

    .line 172
    :cond_0
    return-void
.end method

.method private static isCustomTile(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Z
    .locals 2
    .param p0, "tileInfo"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string/jumbo v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private move(IILjava/util/List;)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 506
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemMoved(II)V

    .line 504
    return-void
.end method

.method private move(IILandroid/view/View;)Z
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 433
    if-ne p2, p1, :cond_0

    .line 434
    return v5

    .line 437
    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p1, v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v2, :cond_1

    .line 438
    return v6

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v1, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 442
    .local v1, "fromLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-direct {p0, p1, p2, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILjava/util/List;)V

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 445
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-lt p2, v2, :cond_2

    .line 446
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 447
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 446
    const/16 v4, 0x168

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x169

    invoke-static {v2, v3, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 450
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/Object;

    .line 451
    aput-object v1, v3, v6

    .line 450
    const v4, 0x91002d4

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "announcement":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    .line 469
    return v5

    .line 452
    .end local v0    # "announcement":Ljava/lang/CharSequence;
    :cond_2
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-lt p1, v2, :cond_3

    .line 453
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 454
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 453
    const/16 v4, 0x16a

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x16b

    invoke-static {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 457
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v7, [Ljava/lang/Object;

    .line 458
    aput-object v1, v3, v6

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 457
    const v4, 0x91002d3

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announcement":Ljava/lang/CharSequence;
    goto :goto_0

    .line 460
    .end local v0    # "announcement":Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 461
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v2

    .line 460
    const/16 v4, 0x16c

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x16d

    invoke-static {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 464
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v7, [Ljava/lang/Object;

    .line 465
    aput-object v1, v3, v6

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 464
    const v4, 0x91002d5

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announcement":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private recalcSpecs()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 187
    :cond_0
    return-void

    .line 189
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 190
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v2

    .line 193
    .local v2, "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-eqz v2, :cond_2

    .line 194
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 199
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 200
    .restart local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget-boolean v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v3, :cond_4

    .line 201
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 198
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 206
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 185
    return-void
.end method

.method private selectPosition(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 385
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemRemoved(I)V

    .line 387
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 389
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 381
    return-void
.end method

.method private showAccessibilityDialog(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 395
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 396
    .local v1, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 397
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    const v5, 0x91002d1

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 398
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    const v5, 0x91002d2

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 400
    .local v2, "options":[Ljava/lang/CharSequence;
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$7;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/systemui/qs/customize/TileAdapter$7;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;ILcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Landroid/view/View;)V

    .line 400
    invoke-virtual {v3, v2, v4}, Lmiui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 412
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 400
    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 414
    .local v0, "dialog":Lmiui/app/AlertDialog;
    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Lmiui/app/AlertDialog;Z)V

    .line 415
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Lmiui/app/AlertDialog;)V

    .line 416
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 394
    return-void
.end method

.method private startAccessibleDrag(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    .line 421
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 422
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 424
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 419
    return-void
.end method

.method private static strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "tileInfo"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 493
    .local v1, "spec":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->isCustomTile(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 495
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 497
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v1
.end method

.method private updateDividerLocations()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 475
    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 476
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 479
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne v1, v2, :cond_1

    .line 480
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 477
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    goto :goto_1

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne v1, v2, :cond_3

    .line 487
    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemChanged(I)V

    .line 472
    :cond_3
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object v0
.end method

.method public getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 224
    const/4 v0, 0x2

    return v0

    .line 226
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne p1, v0, :cond_1

    .line 227
    const/4 v0, 0x4

    return v0

    .line 229
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne p1, v0, :cond_2

    .line 230
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 266
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .param p2, "position"    # I

    .prologue
    const v9, 0x91002d0

    const/4 v7, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 267
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 268
    iget-object v4, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    return-void

    :cond_0
    move v2, v3

    .line 269
    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 273
    return-void

    .line 275
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 276
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setClickable(Z)V

    .line 277
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusable(Z)V

    .line 278
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusableInTouchMode(Z)V

    .line 279
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setVisibility(I)V

    .line 280
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setImportantForAccessibility(I)V

    .line 281
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    .line 282
    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    .line 281
    invoke-virtual {v5, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$3;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    if-eqz v3, :cond_3

    .line 292
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->requestLayout()V

    .line 293
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$4;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$4;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 301
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 303
    :cond_3
    return-void

    .line 306
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 307
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-nez v0, :cond_5

    .line 308
    return-void

    .line 311
    :cond_5
    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v5, :cond_9

    .line 312
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v4, [Ljava/lang/Object;

    .line 313
    iget-object v8, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v8, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, v2

    const v8, 0x91002cf

    .line 312
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 321
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 322
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v6, :cond_6

    iget-boolean v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v6, :cond_b

    :cond_6
    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 325
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->bindOnClickListeners(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    .line 327
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 328
    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge p2, v2, :cond_c

    :cond_7
    const/4 v1, 0x1

    .line 329
    .local v1, "selectable":Z
    :goto_3
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setClickable(Z)V

    .line 330
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusable(Z)V

    .line 331
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    if-eqz v1, :cond_d

    :goto_4
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setImportantForAccessibility(I)V

    .line 334
    if-eqz v1, :cond_8

    .line 335
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$5;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .end local v1    # "selectable":Z
    :cond_8
    return-void

    .line 314
    :cond_9
    iget-boolean v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityMoving:Z

    if-eqz v5, :cond_a

    .line 315
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v4, [Ljava/lang/Object;

    .line 316
    add-int/lit8 v8, p2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 315
    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 318
    :cond_a
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    .line 319
    add-int/lit8 v8, p2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v8, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, v4

    const v8, 0x91002ce

    .line 318
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_b
    move v2, v4

    .line 322
    goto :goto_2

    .line 328
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "selectable":Z
    goto :goto_3

    :cond_d
    move v4, v3

    .line 333
    goto :goto_4
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 238
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 239
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-eq p2, v5, :cond_0

    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 240
    :cond_0
    const v4, 0x90400ba

    invoke-virtual {v2, v4, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 241
    .local v3, "view":Landroid/view/View;
    if-ne p2, v5, :cond_1

    .line 242
    iget v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mBottomDividerPadding:I

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mBottomDividerPadding:I

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 246
    :goto_0
    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v4

    .line 244
    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTopDividerPadding:I

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTopDividerPadding:I

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 248
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    const v4, 0x90400bb

    invoke-virtual {v2, v4, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 250
    .local v1, "frame":Landroid/widget/FrameLayout;
    new-instance v4, Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v5, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 251
    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v4
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 260
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->clearDrag()V

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onTileChanged(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V
    .locals 4
    .param p1, "tileInfoNew"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 165
    .local v1, "tileInfo":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->handleUpdateStateForPosition(ILcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 162
    .end local v1    # "tileInfo":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_0
    return-void

    .line 163
    .restart local v1    # "tileInfo":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTilesChanged(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    .local p2, "liveTiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;>;"
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mLiveTiles:Ljava/util/Map;

    .line 157
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    .line 155
    return-void
.end method

.method public resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const-string/jumbo v2, "edit"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 137
    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 130
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 114
    return-void
.end method

.method public setSpanCount(I)V
    .locals 0
    .param p1, "spanCount"    # I

    .prologue
    .line 557
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSpanCount:I

    .line 556
    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "currentSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    .line 146
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 126
    return-void
.end method
