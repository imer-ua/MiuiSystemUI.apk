.class public Lcom/android/systemui/DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSafeInsetLeft(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/DisplayInfo;)I
    .locals 1
    .param p0, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method public static getSafeInsetRight(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/DisplayInfo;)I
    .locals 1
    .param p0, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v0

    return v0
.end method
