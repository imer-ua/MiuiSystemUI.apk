.class Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;
.super Ljava/lang/Object;
.source "QSTileBaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

.field final synthetic val$tile:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
    .param p2, "val$tile"    # Lcom/android/systemui/plugins/qs/QSTile;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;->val$tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    .line 76
    return-void
.end method
