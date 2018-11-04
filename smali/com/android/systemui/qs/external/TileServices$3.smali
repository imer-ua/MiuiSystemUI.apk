.class Lcom/android/systemui/qs/external/TileServices$3;
.super Ljava/lang/Object;
.source "TileServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/TileServices;->freeService(Lcom/android/systemui/qs/external/CustomTile;Lcom/android/systemui/qs/external/TileServiceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServices;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/external/TileServices;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$3;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
