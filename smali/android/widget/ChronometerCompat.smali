.class public Landroid/widget/ChronometerCompat;
.super Ljava/lang/Object;
.source "ChronometerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCountDown(Landroid/widget/Chronometer;Z)V
    .locals 0
    .param p0, "chronometer"    # Landroid/widget/Chronometer;
    .param p1, "countDown"    # Z

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setCountDown(Z)V

    .line 8
    return-void
.end method
