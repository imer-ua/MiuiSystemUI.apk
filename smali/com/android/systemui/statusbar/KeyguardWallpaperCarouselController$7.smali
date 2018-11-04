.class Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$7;
.super Ljava/lang/Object;
.source "KeyguardWallpaperCarouselController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->switchToKeyguardWallpaperCarousel(Z)V
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
    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get6(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/wallpaper/WallPaperDesView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setAlpha(F)V

    .line 248
    return-void
.end method
