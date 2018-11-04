.class Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$10;
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
    .line 281
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$10;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 285
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$10;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get1(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/MiuiKeyguardClock;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/MiuiKeyguardClock;->setAlpha(F)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$10;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get4(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 283
    return-void
.end method
