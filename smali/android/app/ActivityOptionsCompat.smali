.class public Landroid/app/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDockCreateMode(Landroid/app/ActivityOptions;I)V
    .locals 0
    .param p0, "options"    # Landroid/app/ActivityOptions;
    .param p1, "dockCreateMode"    # I

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setDockCreateMode(I)V

    .line 13
    return-void
.end method

.method public static setLaunchStackId(Landroid/app/ActivityOptions;III)V
    .locals 0
    .param p0, "options"    # Landroid/app/ActivityOptions;
    .param p1, "stackId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "activityType"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 22
    return-void
.end method

.method public static setOptionsLaunchBounds(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "opts"    # Landroid/app/ActivityOptions;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 26
    return-void
.end method

.method public static setRotationAnimationHint(Landroid/app/ActivityOptions;I)V
    .locals 0
    .param p0, "options"    # Landroid/app/ActivityOptions;
    .param p1, "hint"    # I

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 9
    return-void
.end method
