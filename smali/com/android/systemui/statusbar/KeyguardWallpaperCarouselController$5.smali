.class Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$5;
.super Ljava/lang/Object;
.source "KeyguardWallpaperCarouselController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 351
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get2(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQSFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-wrap1(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V

    .line 353
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->reset()V

    goto :goto_0
.end method
