.class public Landroid/media/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStreamMinVolume(Landroid/media/AudioManager;I)I
    .locals 1
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "stream"    # I

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    return v0
.end method
