.class public Lcom/android/systemui/statusbar/policy/EthernetSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "EthernetSignalController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/SignalController$State;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p3, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    const/4 v11, 0x0

    .line 32
    const-string/jumbo v1, "EthernetSignalController"

    const/4 v3, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 34
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 35
    const-string/jumbo v1, "Ethernet Icons"

    .line 36
    sget-object v2, Lcom/android/systemui/statusbar/policy/EthernetIcons;->ETHERNET_ICONS:[[I

    .line 38
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    .line 40
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    aget v9, v3, v11

    .line 37
    const/4 v3, 0x0

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    .line 34
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v10, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 31
    return-void
.end method


# virtual methods
.method public cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-object v0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 52
    .local v1, "ethernetVisible":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getContentDescription()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "contentDescription":Ljava/lang/String;
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getCurrentIconId()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    .line 50
    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 2
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mTransportType:I

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 46
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 44
    return-void
.end method
