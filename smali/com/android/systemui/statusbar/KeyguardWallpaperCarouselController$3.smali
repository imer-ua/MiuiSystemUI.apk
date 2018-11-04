.class Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-wrap2(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V

    .line 138
    return-void
.end method
