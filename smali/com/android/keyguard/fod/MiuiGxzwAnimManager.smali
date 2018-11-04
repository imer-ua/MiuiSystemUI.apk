.class public Lcom/android/keyguard/fod/MiuiGxzwAnimManager;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;,
        Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;,
        Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    }
.end annotation


# static fields
.field private static final ZERO_RES_ARRAY:[I


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDozing:Z

.field private mEnrolling:Z

.field private mGxzwAnimType:I

.field private mKeyguardAuthen:Z

.field private mLightIcon:Z

.field private mLightWallpaperGxzw:Z

.field private mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->ZERO_RES_ARRAY:[I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miuiGxzwFrameAnimation"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    .line 34
    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    .line 36
    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mDozing:Z

    .line 39
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 49
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fod_animation_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 51
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 48
    return-void
.end method

.method private getBackAnimResources(Z)[I
    .locals 7
    .param p1, "aod"    # Z

    .prologue
    const/16 v6, 0xa

    .line 240
    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    packed-switch v4, :pswitch_data_0

    .line 259
    if-eqz p1, :cond_2

    .line 260
    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->DEFAULT_AOD_BACK_ANIM_RES:[I

    return-object v4

    .line 242
    :pswitch_0
    sget-object v3, Lcom/android/keyguard/fod/MiuiGxzwUtils;->RHYTHM_RECOGNIZING_ANIM_RES:[I

    .line 268
    .local v3, "src":[I
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-virtual {v4}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->getCurrentPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 269
    .local v2, "position":I
    new-array v0, v6, [I

    .line 270
    .local v0, "dst":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 271
    add-int v4, v2, v1

    array-length v5, v3

    rem-int/2addr v4, v5

    aget v4, v3, v4

    aput v4, v0, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "dst":[I
    .end local v1    # "i":I
    .end local v2    # "position":I
    .end local v3    # "src":[I
    :pswitch_1
    if-eqz p1, :cond_0

    .line 246
    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->AOD_BACK_ANIM_RES:[I

    return-object v4

    .line 247
    :cond_0
    iget-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v4, :cond_1

    .line 248
    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->LIGHT_BACK_ANIM_RES:[I

    return-object v4

    .line 250
    :cond_1
    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->NORMAL_BACK_ANIM_RES:[I

    return-object v4

    .line 253
    :pswitch_2
    sget-object v3, Lcom/android/keyguard/fod/MiuiGxzwUtils;->METAL_RECOGNIZING_ANIM_RES:[I

    .restart local v3    # "src":[I
    goto :goto_0

    .line 256
    .end local v3    # "src":[I
    :pswitch_3
    sget-object v3, Lcom/android/keyguard/fod/MiuiGxzwUtils;->PULSE_RECOGNIZING_ANIM_RES:[I

    .restart local v3    # "src":[I
    goto :goto_0

    .line 261
    .end local v3    # "src":[I
    :cond_2
    iget-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v4, :cond_3

    .line 262
    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->DEFAULT_LIGHT_BACK_ANIM_RES:[I

    return-object v4

    .line 264
    :cond_3
    sget-object v4, Lcom/android/keyguard/fod/MiuiGxzwUtils;->DEFAULT_NORMAL_BACK_ANIM_RES:[I

    return-object v4

    .line 273
    .restart local v0    # "dst":[I
    .restart local v1    # "i":I
    .restart local v2    # "position":I
    .restart local v3    # "src":[I
    :cond_4
    return-object v0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getFalseAnimResources(Z)[I
    .locals 1
    .param p1, "aod"    # Z

    .prologue
    .line 224
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    packed-switch v0, :pswitch_data_0

    .line 234
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->ZERO_RES_ARRAY:[I

    return-object v0

    .line 226
    :pswitch_0
    if-eqz p1, :cond_0

    .line 227
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->AOD_FALSE_ANIM_RES:[I

    return-object v0

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->LIGHT_FALSE_ANIM_RES:[I

    return-object v0

    .line 231
    :cond_1
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->NORMAL_FALSE_ANIM_RES:[I

    return-object v0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getIconAnimResources(Z)[I
    .locals 1
    .param p1, "aod"    # Z

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->AOD_ICON_ANIM_RES:[I

    return-object v0

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v0, :cond_1

    .line 196
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->LIGHT_ICON_ANIM_RES:[I

    return-object v0

    .line 198
    :cond_1
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->NORMAL_ICON_ANIM_RES:[I

    return-object v0
.end method

.method private getRecognizingAnimResources(Z)[I
    .locals 1
    .param p1, "aod"    # Z

    .prologue
    .line 203
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    packed-switch v0, :pswitch_data_0

    .line 219
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->ZERO_RES_ARRAY:[I

    return-object v0

    .line 205
    :pswitch_0
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->RHYTHM_RECOGNIZING_ANIM_RES:[I

    return-object v0

    .line 207
    :pswitch_1
    if-eqz p1, :cond_0

    .line 208
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->AOD_RECOGNIZING_ANIM_RES:[I

    return-object v0

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v0, :cond_1

    .line 210
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->LIGHT_RECOGNIZING_ANIM_RES:[I

    return-object v0

    .line 212
    :cond_1
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->NORMAL_RECOGNIZING_ANIM_RES:[I

    return-object v0

    .line 215
    :pswitch_2
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->METAL_RECOGNIZING_ANIM_RES:[I

    return-object v0

    .line 217
    :pswitch_3
    sget-object v0, Lcom/android/keyguard/fod/MiuiGxzwUtils;->PULSE_RECOGNIZING_ANIM_RES:[I

    return-object v0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getBackAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 4
    .param p1, "aod"    # Z

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getBackAnimResources(Z)[I

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V

    .line 98
    .local v0, "builder":Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 99
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mDozing:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    .line 100
    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;

    invoke-direct {v1, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;)V

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap2(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v1

    return-object v1
.end method

.method public getFalseAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 3
    .param p1, "aod"    # Z

    .prologue
    .line 87
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFalseAnimResources(Z)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V

    .line 88
    .local v0, "builder":Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v1

    return-object v1
.end method

.method public getFalseTipTranslationY()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    packed-switch v0, :pswitch_data_0

    .line 148
    const/4 v0, 0x0

    return v0

    .line 140
    :pswitch_0
    const/16 v0, 0x64

    return v0

    .line 142
    :pswitch_1
    const/16 v0, 0x50

    return v0

    .line 144
    :pswitch_2
    const/16 v0, 0x3c

    return v0

    .line 146
    :pswitch_3
    const/16 v0, 0x14

    return v0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFingerIconResource(Z)I
    .locals 4
    .param p1, "aod"    # Z

    .prologue
    const v0, 0x90200ad

    .line 112
    const-string/jumbo v1, "MiuiGxzwAnimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFingerIconResource: mKeyguardAuthen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mLightWallpaperGxzw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    const-string/jumbo v3, ", mEnrolling = "

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mEnrolling:Z

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    const-string/jumbo v3, ", mLightIcon = "

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    if-eqz v1, :cond_2

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const v0, 0x90200aa

    return v0

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    if-eqz v1, :cond_1

    .line 120
    const v0, 0x90200ac

    return v0

    .line 122
    :cond_1
    return v0

    .line 124
    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mEnrolling:Z

    if-eqz v1, :cond_3

    .line 126
    return v0

    .line 129
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    if-eqz v1, :cond_4

    :goto_0
    return v0

    :cond_4
    const v0, 0x90200ab

    goto :goto_0
.end method

.method public getIconAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 3
    .param p1, "aod"    # Z

    .prologue
    .line 62
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getIconAnimResources(Z)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V

    .line 63
    .local v0, "builder":Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v1

    return-object v1
.end method

.method public getRecognizingAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 4
    .param p1, "aod"    # Z

    .prologue
    const/4 v3, 0x1

    .line 72
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getRecognizingAnimResources(Z)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V

    .line 73
    .local v0, "builder":Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    if-eq v1, v3, :cond_0

    .line 74
    invoke-static {v0, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    .line 76
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mDozing:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    .line 77
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    .line 78
    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v1

    return-object v1
.end method

.method public onKeyguardAuthen(Z)V
    .locals 0
    .param p1, "keyguardAuthen"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    .line 164
    return-void
.end method

.method public setEnrolling(Z)V
    .locals 0
    .param p1, "enrolling"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mEnrolling:Z

    .line 172
    return-void
.end method

.method public setLightIcon(Z)V
    .locals 0
    .param p1, "lightIcon"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    .line 188
    return-void
.end method

.method public setLightWallpaperGxzw(Z)V
    .locals 0
    .param p1, "lightWallpaperGxzw"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    .line 180
    return-void
.end method

.method public stopDozing()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->mDozing:Z

    .line 156
    return-void
.end method
