.class Lcom/android/systemui/qs/tiles/CellularTile$1;
.super Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;
.source "CellularTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p2, "this$0_1"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    .line 59
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)V

    return-void
.end method


# virtual methods
.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 64
    return-void
.end method

.method public setIsImsRegisted(IZ)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "imsRegisted"    # Z

    .prologue
    .line 68
    return-void
.end method

.method public setNetworkNameVoice(ILjava/lang/String;)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "networkNameVoice"    # Ljava/lang/String;

    .prologue
    .line 88
    return-void
.end method

.method public setSpeechHd(IZ)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "hd"    # Z

    .prologue
    .line 80
    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    return-void
.end method

.method public setVolteNoService(IZ)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "show"    # Z

    .prologue
    .line 76
    return-void
.end method

.method public setVowifi(IZ)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "vowifi"    # Z

    .prologue
    .line 72
    return-void
.end method
