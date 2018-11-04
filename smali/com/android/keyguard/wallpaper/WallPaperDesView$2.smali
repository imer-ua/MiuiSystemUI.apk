.class Lcom/android/keyguard/wallpaper/WallPaperDesView$2;
.super Ljava/lang/Object;
.source "WallPaperDesView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/WallPaperDesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/WallPaperDesView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/WallPaperDesView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/WallPaperDesView;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView$2;->this$0:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateWallPaperInfo(Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;)V
    .locals 1
    .param p1, "wallpaperInfo"    # Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView$2;->this$0:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->refreshWallpaperInfo()V

    .line 216
    return-void
.end method
