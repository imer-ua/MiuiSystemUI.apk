.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "WallpaperScreenElement.java"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 17
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    .line 25
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/WallpaperScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    :cond_0
    return-void
.end method
