.class Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeSlowlyView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method constructor <init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-static {v1}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->-get2(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$1;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$2;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 147
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-static {v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->-get0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-static {v3}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->-wrap0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 150
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->-get2(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 168
    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 170
    :cond_0
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 157
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->-get2(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;->this$0:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-static {v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->-get1(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1$3;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;)V

    .line 183
    const-wide/16 v2, 0x64

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_0
    return-void
.end method
