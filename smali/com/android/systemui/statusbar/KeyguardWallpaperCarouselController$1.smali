.class Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardWallpaperCarouselController.java"


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
    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserUnlocked()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-wrap2(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V

    .line 101
    return-void
.end method
