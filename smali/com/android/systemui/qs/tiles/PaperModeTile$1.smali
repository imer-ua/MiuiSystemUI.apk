.class Lcom/android/systemui/qs/tiles/PaperModeTile$1;
.super Landroid/database/ContentObserver;
.source "PaperModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PaperModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PaperModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PaperModeTile;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/PaperModeTile;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PaperModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PaperModeTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PaperModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PaperModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/PaperModeTile;->refreshState()V

    .line 50
    return-void
.end method
