.class public Lcom/android/internal/widget/FloatingToolbarCompat;
.super Ljava/lang/Object;
.source "FloatingToolbarCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFloatingToolbar(Landroid/content/Context;Landroid/view/Window;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 11
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    return-object v0
.end method