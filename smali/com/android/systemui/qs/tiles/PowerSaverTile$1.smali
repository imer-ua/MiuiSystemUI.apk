.class Lcom/android/systemui/qs/tiles/PowerSaverTile$1;
.super Landroid/database/ContentObserver;
.source "PowerSaverTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PowerSaverTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PowerSaverTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerSaverTile;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/PowerSaverTile;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/PowerSaverTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/PowerSaverTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/PowerSaverTile;->refreshState()V

    .line 141
    return-void
.end method
