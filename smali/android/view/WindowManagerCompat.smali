.class public Landroid/view/WindowManagerCompat;
.super Ljava/lang/Object;
.source "WindowManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySleepToken(ZLandroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p0, "dozing"    # Z
    .param p1, "lpChanged"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 12
    return-void
.end method

.method public static requestAppKeyboardShortcuts(Landroid/view/WindowManager;Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;I)V
    .locals 1
    .param p0, "wm"    # Landroid/view/WindowManager;
    .param p1, "receiver"    # Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;
    .param p2, "deviceId"    # I

    .prologue
    .line 16
    new-instance v0, Landroid/view/WindowManagerCompat$1;

    invoke-direct {v0, p1}, Landroid/view/WindowManagerCompat$1;-><init>(Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;)V

    invoke-interface {p0, v0, p2}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 15
    return-void
.end method

.method public static setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "layoutInDisplayCutoutMode"    # I

    .prologue
    .line 24
    return-void
.end method
