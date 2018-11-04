.class Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile$1;
.super Landroid/database/ContentObserver;
.source "PowerSaverExtremeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/PowerSaverExtremeTile;->refreshState()V

    .line 132
    return-void
.end method
