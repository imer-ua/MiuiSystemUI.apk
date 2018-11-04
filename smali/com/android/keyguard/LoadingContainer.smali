.class public Lcom/android/keyguard/LoadingContainer;
.super Landroid/widget/FrameLayout;
.source "LoadingContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/LoadingContainer$1;
    }
.end annotation


# instance fields
.field private mLoadingText:Landroid/widget/TextView;

.field private mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

.field private final mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/LoadingContainer;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .line 37
    new-instance v0, Lcom/android/keyguard/LoadingContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LoadingContainer$1;-><init>(Lcom/android/keyguard/LoadingContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/LoadingContainer;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    .line 21
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 28
    iget-object v0, p0, Lcom/android/keyguard/LoadingContainer;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/LoadingContainer;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperInfoListener(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;)V

    .line 26
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/LoadingContainer;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/LoadingContainer;->mWallpaperInfoListener:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterWallpaperInfoListener(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperInfoListener;)V

    .line 32
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x912016c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/LoadingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/LoadingContainer;->mLoadingText:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public refreshWallpaperInfo()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/keyguard/LoadingContainer;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/LoadingContainer;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/LoadingContainer;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/LoadingContainer;->mLoadingText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/LoadingContainer;->mWallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v2, p0, Lcom/android/keyguard/LoadingContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->getBtnText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    return-void
.end method
