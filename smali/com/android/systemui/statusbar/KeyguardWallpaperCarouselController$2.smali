.class Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;
.super Ljava/lang/Object;
.source "KeyguardWallpaperCarouselController.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChange(Z)V
    .locals 5
    .param p1, "succeed"    # Z

    .prologue
    const/4 v4, 0x0

    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get6(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/wallpaper/WallPaperDesView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->refreshWallpaperInfo()V

    .line 123
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get6(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/wallpaper/WallPaperDesView;

    move-result-object v2

    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperCarousel()Z

    move-result v3

    .line 123
    invoke-virtual {v2, v3}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->updateColorByWallpaper(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightClock()Z

    move-result v1

    .line 127
    .local v1, "lightClock":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get4(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v1, :cond_1

    const/high16 v2, -0x4e000000

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 129
    if-eqz v1, :cond_2

    const v2, 0x9020243

    .line 128
    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "drawableLeft":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get4(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 120
    .end local v0    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v1    # "lightClock":Z
    :cond_0
    return-void

    .line 127
    .restart local v1    # "lightClock":Z
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 129
    :cond_2
    const v2, 0x9020242

    goto :goto_1
.end method
