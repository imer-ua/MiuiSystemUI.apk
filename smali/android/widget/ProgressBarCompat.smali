.class public Landroid/widget/ProgressBarCompat;
.super Ljava/lang/Object;
.source "ProgressBarCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setProgress(Landroid/widget/ProgressBar;IZ)V
    .locals 0
    .param p0, "bar"    # Landroid/widget/ProgressBar;
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 8
    return-void
.end method
