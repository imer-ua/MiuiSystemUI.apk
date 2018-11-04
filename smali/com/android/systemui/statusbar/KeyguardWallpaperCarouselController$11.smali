.class Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardWallpaperCarouselController.java"


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

.field final synthetic val$toWallPaper:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;
    .param p2, "val$toWallPaper"    # Z

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->val$toWallPaper:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 294
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 299
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-set0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)Z

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get6(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/wallpaper/WallPaperDesView;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->val$toWallPaper:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get1(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/MiuiKeyguardClock;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->val$toWallPaper:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/keyguard/MiuiKeyguardClock;->setVisibility(I)V

    .line 298
    return-void

    :cond_0
    move v0, v2

    .line 301
    goto :goto_0

    :cond_1
    move v2, v1

    .line 302
    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-set0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)Z

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get6(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/wallpaper/WallPaperDesView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$11;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get1(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/MiuiKeyguardClock;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/MiuiKeyguardClock;->setVisibility(I)V

    .line 305
    return-void
.end method
