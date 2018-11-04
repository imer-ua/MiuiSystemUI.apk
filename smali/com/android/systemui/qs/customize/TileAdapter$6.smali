.class Lcom/android/systemui/qs/customize/TileAdapter$6;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter;->bindOnClickListeners(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field final synthetic val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p2, "val$info"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get4(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get4(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get4(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 365
    .local v0, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :goto_0
    if-eqz v0, :cond_2

    .line 366
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->click(Z)V

    .line 357
    :cond_0
    :goto_1
    return-void

    .line 362
    .end local v0    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get3(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTileHost;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v0

    .restart local v0    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    goto :goto_0

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 370
    const v2, 0x9100577

    .line 371
    const/4 v3, 0x0

    .line 369
    invoke-static {v1, v2, v3}, Lcom/android/systemui/Util;->makeSystemOverlayToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
