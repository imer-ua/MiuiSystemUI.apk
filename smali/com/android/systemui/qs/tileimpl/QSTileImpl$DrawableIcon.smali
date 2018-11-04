.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIcon"
.end annotation


# instance fields
.field protected final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 514
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.DrawableIcon;"
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 515
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 514
    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 520
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.DrawableIcon;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
