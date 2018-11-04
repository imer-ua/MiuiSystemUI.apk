.class Lcom/android/keyguard/LoadingContainer$1;
.super Ljava/lang/Object;
.source "LoadingContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LoadingContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/LoadingContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LoadingContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/LoadingContainer;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/keyguard/LoadingContainer$1;->this$0:Lcom/android/keyguard/LoadingContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateWallPaperInfo(Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;)V
    .locals 1
    .param p1, "wallpaperInfo"    # Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/LoadingContainer$1;->this$0:Lcom/android/keyguard/LoadingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/LoadingContainer;->refreshWallpaperInfo()V

    .line 39
    return-void
.end method
