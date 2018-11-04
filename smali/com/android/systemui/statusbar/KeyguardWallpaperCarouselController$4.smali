.class Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$4;
.super Ljava/lang/Object;
.source "KeyguardWallpaperCarouselController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    const-string/jumbo v0, "click"

    invoke-static {v0}, Lcom/android/keyguard/AnalyticsHelper;->recordKeyguardPreviewButton(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get6(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/wallpaper/WallPaperDesView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->openAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get3(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 145
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-wrap1(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V

    .line 151
    const-string/jumbo v0, "miui_keyguard"

    const-string/jumbo v1, "preview button goto lock screen wall paper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->hideLockScreenInActivityManager()V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$4;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "buttonLockScreen"

    invoke-static {v0, v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->gotoLockScreenWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
