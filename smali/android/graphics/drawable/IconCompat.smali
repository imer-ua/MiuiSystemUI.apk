.class public Landroid/graphics/drawable/IconCompat;
.super Ljava/lang/Object;
.source "IconCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sameAs(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 1
    .param p0, "self"    # Landroid/graphics/drawable/Icon;
    .param p1, "otherIcon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v0

    return v0
.end method
