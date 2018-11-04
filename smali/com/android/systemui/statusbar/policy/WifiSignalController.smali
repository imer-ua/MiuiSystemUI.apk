.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;
.source "WifiSignalController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasMobileData"    # Z
    .param p3, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p4, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p5, "networkScoreManager"    # Landroid/net/NetworkScoreManager;

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V

    .line 25
    return-void
.end method
