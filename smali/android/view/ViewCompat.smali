.class public Landroid/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTemporarilyDetached(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v0

    return v0
.end method
