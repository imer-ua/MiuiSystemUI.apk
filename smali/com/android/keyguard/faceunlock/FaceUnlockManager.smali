.class public Lcom/android/keyguard/faceunlock/FaceUnlockManager;
.super Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;
.source "FaceUnlockManager.java"


# static fields
.field private static sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;


# instance fields
.field private mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    .line 53
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->initFaceUnlockUtil()V

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    .line 49
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    return-object v0

    .line 46
    :cond_1
    sget-boolean v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sInitFaceUlockUtil:Z

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->initFaceUnlockUtil()V

    goto :goto_0
.end method

.method private isVersionUpdate(I)Z
    .locals 2
    .param p1, "version"    # I

    .prologue
    const/4 v0, 0x0

    .line 99
    const/4 v1, -0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public deleteFeature()V
    .locals 2

    .prologue
    .line 122
    sget-boolean v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 123
    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "deleteFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    invoke-virtual {v0}, Lcom/sensetime/faceauth/FaceAuthManager;->deleteFeature()I

    .line 121
    :cond_1
    return-void
.end method

.method protected getFeatureCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    invoke-virtual {v0}, Lcom/sensetime/faceauth/FaceAuthManager;->getFeatureCount()I

    move-result v0

    return v0
.end method

.method public getRunOutTime()I
    .locals 1

    .prologue
    .line 265
    const/16 v0, 0x1388

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    invoke-virtual {v0}, Lcom/sensetime/faceauth/FaceAuthManager;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initAll()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 65
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    if-nez v7, :cond_0

    .line 66
    const-string/jumbo v7, "TAG"

    const-string/jumbo v8, "initAll failed mFaceAuthManager null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v8, "face_unlock_version"

    invoke-virtual {v7, v8}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->getIntValueByKey(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 70
    .local v6, "version":I
    invoke-direct {p0, v6}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->isVersionUpdate(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v8, "model_liveness_1"

    invoke-virtual {v7, v8, v9}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v8, "model_liveness_2"

    invoke-virtual {v7, v8, v9}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    const/4 v3, 0x0

    .line 75
    .local v3, "verifyModelPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 76
    .local v2, "livenessModelPath":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v8, "model_liveness_1"

    invoke-virtual {v7, v8}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->getStringValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "verifyModelPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "model"

    const-string/jumbo v9, "panorama_mgb_verify"

    const v10, 0x90a0005

    invoke-static {v7, v10, v8, v9}, Lcom/android/keyguard/faceunlock/FileUtil;->saveRaw(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v8, "model_liveness_1"

    invoke-virtual {v7, v8, v3}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v8, "model_liveness_2"

    invoke-virtual {v7, v8}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->getStringValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "livenessModelPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 83
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "model"

    const-string/jumbo v9, "panorama_mgb_liveness"

    const v10, 0x90a0002

    invoke-static {v7, v10, v8, v9}, Lcom/android/keyguard/faceunlock/FileUtil;->saveRaw(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v8, "model_liveness_2"

    invoke-virtual {v7, v8, v2}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 87
    .local v4, "start":J
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    iget-object v8, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sensetime/faceauth/FaceAuthManager;->initHandler(Ljava/lang/String;)Z

    move-result v1

    .line 88
    .local v1, "intHandlerResult":Z
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    invoke-virtual {v7, v3, v2}, Lcom/sensetime/faceauth/FaceAuthManager;->initAll(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "iniAllResult":I
    sget-boolean v7, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 90
    const-string/jumbo v7, "face_unlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init all time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->isVersionUpdate(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 93
    iget-object v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v8, "face_unlock_version"

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->saveIntValue(Ljava/lang/String;I)V

    .line 95
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mHasInit:Z

    .line 64
    return-void
.end method

.method public initFaceUnlockUtil()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/sensetime/faceauth/FaceAuthManager;->getInstance()Lcom/sensetime/faceauth/FaceAuthManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->initFaceUnlockUtil()V

    .line 57
    return-void
.end method

.method public isIrCamera()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public isValidFeature()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    invoke-virtual {v1}, Lcom/sensetime/faceauth/FaceAuthManager;->getFeatureCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onPreviewFrame([BLjava/lang/String;)V
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mIsTrigger:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->stopDetect()V

    .line 142
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    if-nez v0, :cond_1

    .line 145
    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "onPreviewFrame failed mFaceAuthManager null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 148
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mIsSuccess:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mIsDetecting:Z

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 149
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mHasFace:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSkipIfNotFound:Z

    if-eqz v0, :cond_4

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSkipIfNotFound:Z

    .line 151
    return-void

    .line 153
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSkipIfNotFound:Z

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mIsDetecting:Z

    .line 155
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mPreviewFrame:[B

    .line 156
    sget-boolean v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 157
    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive preview frame time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sStageInFaceUnlockTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sStageInFaceUnlockTime:J

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mPreviewFrame:[B

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v2, v2, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v3, v3, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v4, v4, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->angle:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/faceauth/FaceAuthManager;->compare([BIIIZ)I

    move-result v6

    .line 161
    .local v6, "result":I
    sget-boolean v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 162
    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "compare time ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sStageInFaceUnlockTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; result\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sStageInFaceUnlockTime:J

    .line 166
    :cond_6
    const/4 v0, 0x5

    if-eq v6, v0, :cond_7

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mHasFace:Z

    .line 170
    :cond_7
    if-nez v6, :cond_8

    .line 171
    const-string/jumbo v0, "face_sensetime_rgb"

    invoke-static {v0}, Lcom/android/keyguard/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "face_unlock_type"

    const-string/jumbo v1, "face_sensetime_rgb"

    invoke-static {v0, v1}, Lcom/android/keyguard/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->handlePassed()V

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/FingerprintHelper;->resetFingerLockoutTime()V

    .line 139
    :goto_0
    return-void

    .line 176
    :cond_8
    const/4 v7, 0x0

    .line 177
    .local v7, "string":I
    packed-switch v6, :pswitch_data_0

    .line 219
    :pswitch_0
    const v7, 0x9100425

    .line 221
    :goto_1
    const/16 v0, 0xe

    if-ne v6, v0, :cond_d

    .line 222
    iget v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mLiveAttackValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mLiveAttackValue:I

    .line 223
    iget v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mLiveAttackValue:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mLiveAttack:Z

    .line 229
    :cond_9
    :goto_2
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isScreenTurnOnDelayed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 230
    const/4 v0, 0x5

    if-eq v6, v0, :cond_a

    .line 231
    const/16 v0, 0x16

    if-ne v6, v0, :cond_e

    .line 233
    :cond_a
    :goto_3
    iget v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mNoFaceDetectedValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mNoFaceDetectedValue:I

    .line 235
    iget v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mNoFaceDetectedValue:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->unblockScreenOn()V

    .line 237
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->setScreenTurnOnDelayed(Z)V

    .line 240
    :cond_b
    iput v7, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mHelpStringResId:I

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sStartFaceUnlockTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mIsDetecting:Z

    goto :goto_0

    .line 179
    :pswitch_1
    const v7, 0x9100422

    .line 180
    goto :goto_1

    .line 182
    :pswitch_2
    const v7, 0x9100423

    .line 183
    goto :goto_1

    .line 185
    :pswitch_3
    const v7, 0x9100424

    .line 186
    goto :goto_1

    .line 188
    :pswitch_4
    const v7, 0x9100425

    .line 189
    goto :goto_1

    .line 194
    :pswitch_5
    const v7, 0x9100420

    .line 195
    goto :goto_1

    .line 198
    :pswitch_6
    const v7, 0x9100425

    .line 199
    goto :goto_1

    .line 201
    :pswitch_7
    const v7, 0x9100425

    .line 202
    goto :goto_1

    .line 204
    :pswitch_8
    const v7, 0x910041c

    .line 205
    goto :goto_1

    .line 207
    :pswitch_9
    const v7, 0x9100432

    .line 208
    goto :goto_1

    .line 210
    :pswitch_a
    const v7, 0x9100430

    .line 211
    goto :goto_1

    .line 213
    :pswitch_b
    const v7, 0x9100431

    .line 214
    goto :goto_1

    .line 216
    :pswitch_c
    const v7, 0x910042b

    .line 217
    goto :goto_1

    .line 227
    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mLiveAttackValue:I

    goto :goto_2

    .line 232
    :cond_e
    const/16 v0, 0xe

    if-ne v6, v0, :cond_b

    goto :goto_3

    .line 177
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public releaseFaceUnlock()V
    .locals 5

    .prologue
    .line 103
    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mHasInit:Z

    if-nez v2, :cond_0

    return-void

    .line 104
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mHasInit:Z

    .line 105
    iget-object v2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    if-eqz v2, :cond_2

    .line 106
    const-string/jumbo v2, "cactus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "cereus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    invoke-virtual {v2}, Lcom/sensetime/faceauth/FaceAuthManager;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "releaseHeavyLoad"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 109
    .local v1, "releaseHeavyLoadMethod":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "releaseHeavyLoadMethod":Ljava/lang/reflect/Method;
    :cond_2
    :goto_0
    const-string/jumbo v2, "face_unlock"

    const-string/jumbo v3, "face release complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    invoke-virtual {v2}, Lcom/sensetime/faceauth/FaceAuthManager;->release()V

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    invoke-virtual {v2}, Lcom/sensetime/faceauth/FaceAuthManager;->release()V

    goto :goto_0
.end method

.method public startFaceUnlock(Landroid/view/TextureView;Lcom/android/keyguard/faceunlock/FaceUnlockCallback;)V
    .locals 2
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "callback"    # Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mFaceAuthManager:Lcom/sensetime/faceauth/FaceAuthManager;

    if-nez v0, :cond_0

    .line 132
    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "startFaceUnlock failed mFaceAuthManager null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 135
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->startFaceUnlock(Landroid/view/TextureView;Lcom/android/keyguard/faceunlock/FaceUnlockCallback;)V

    .line 130
    return-void
.end method
