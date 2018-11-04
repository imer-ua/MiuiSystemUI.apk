.class Lcom/android/systemui/qs/QSDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Adapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get5(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get5(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get5(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 196
    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get5(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v6

    aget-object v1, v6, p1

    .line 197
    .local v1, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    if-nez p2, :cond_0

    .line 198
    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x90400c0

    .line 199
    const/4 v8, 0x0

    .line 198
    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 201
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get6(Lcom/android/systemui/qs/QSDetailItems;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const v6, 0x1020006

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 203
    .local v2, "iv":Landroid/widget/ImageView;
    iget v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    invoke-virtual {v2}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewOverlay;->clear()V

    .line 205
    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 206
    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v7}, Lcom/android/systemui/qs/QSDetailItems;->-get7(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v8}, Lcom/android/systemui/qs/QSDetailItems;->-get7(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    invoke-virtual {v2}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_1
    const v6, 0x1020016

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 210
    .local v4, "title":Landroid/widget/TextView;
    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v6, 0x1020010

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 212
    .local v3, "summary":Landroid/widget/TextView;
    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    .line 213
    .local v5, "twoLines":Z
    :goto_1
    if-eqz v5, :cond_4

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 215
    if-eqz v5, :cond_5

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    if-eqz v5, :cond_6

    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v6, 0x1020008

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 227
    .local v0, "icon2":Landroid/widget/ImageView;
    iget-boolean v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    if-eqz v6, :cond_7

    .line 228
    const v6, 0x9020153

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 231
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :goto_5
    return-object p2

    .line 201
    .end local v0    # "icon2":Landroid/widget/ImageView;
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v3    # "summary":Landroid/widget/TextView;
    .end local v4    # "title":Landroid/widget/TextView;
    .end local v5    # "twoLines":Z
    :cond_2
    const/4 v6, 0x4

    goto/16 :goto_0

    .line 212
    .restart local v2    # "iv":Landroid/widget/ImageView;
    .restart local v3    # "summary":Landroid/widget/TextView;
    .restart local v4    # "title":Landroid/widget/TextView;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 213
    .restart local v5    # "twoLines":Z
    :cond_4
    const/4 v6, 0x2

    goto :goto_2

    .line 215
    :cond_5
    const/16 v6, 0x8

    goto :goto_3

    .line 216
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 239
    .restart local v0    # "icon2":Landroid/widget/ImageView;
    :cond_7
    iget v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 240
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_5

    .line 244
    :cond_8
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method
