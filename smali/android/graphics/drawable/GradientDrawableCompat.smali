.class public Landroid/graphics/drawable/GradientDrawableCompat;
.super Ljava/lang/Object;
.source "GradientDrawableCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCornerRadii(Landroid/graphics/drawable/GradientDrawable;)[F
    .locals 1
    .param p0, "gd"    # Landroid/graphics/drawable/GradientDrawable;

    .prologue
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    return-object v0
.end method

.method public static getCornerRadius(Landroid/graphics/drawable/GradientDrawable;)F
    .locals 1
    .param p0, "gd"    # Landroid/graphics/drawable/GradientDrawable;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v0

    return v0
.end method
