.class public Lcom/android/internal/view/FloatingActionModeCompat;
.super Ljava/lang/Object;
.source "FloatingActionModeCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFloatingActionMode(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/view/FloatingActionMode;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p2, "originatingView"    # Landroid/view/View;
    .param p3, "floatingToolbar"    # Lcom/android/internal/widget/FloatingToolbar;

    .prologue
    .line 15
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V

    .line 16
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    invoke-virtual {v0, p3}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    .line 17
    return-object v0
.end method
