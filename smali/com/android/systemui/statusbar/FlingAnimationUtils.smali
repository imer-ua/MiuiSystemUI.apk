.class public Lcom/android/systemui/statusbar/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;,
        Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    }
.end annotation


# instance fields
.field private mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

.field private mCachedStartGradient:F

.field private mCachedVelocityFactor:F

.field private mHighVelocityPxPerSecond:F

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mLinearOutSlowInX2:F

.field private mMaxLengthSeconds:F

.field private mMinVelocityPxPerSecond:F

.field private final mSpeedUpFactor:F

.field private final mY2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "maxLengthSeconds"    # F

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "maxLengthSeconds"    # F
    .param p3, "speedUpFactor"    # F

    .prologue
    .line 66
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFF)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "maxLengthSeconds"    # F
    .param p3, "speedUpFactor"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;-><init>(Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    .line 52
    iput v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedStartGradient:F

    .line 53
    iput v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedVelocityFactor:F

    .line 80
    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    .line 81
    iput p3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    .line 82
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 85
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    .line 83
    const v1, 0x3eb33333    # 0.35f

    .line 84
    const v2, 0x3f2e147b    # 0.68f

    .line 83
    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    .line 89
    :goto_0
    iput p5, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mY2:F

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    .line 91
    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x453b8000    # 3000.0f

    mul-float/2addr v0, v1

    .line 93
    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    .line 79
    return-void

    .line 87
    :cond_0
    iput p4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    goto :goto_0
.end method

.method private calculateLinearOutFasterInY2(F)F
    .locals 5
    .param p1, "velocity"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 289
    iget v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float v1, p1, v1

    .line 290
    iget v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    iget v3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float/2addr v2, v3

    .line 289
    div-float v0, v1, v2

    .line 291
    .local v0, "t":F
    const/4 v1, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 292
    sub-float v1, v4, v0

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .locals 18
    .param p1, "currValue"    # F
    .param p2, "endValue"    # F
    .param p3, "velocity"    # F
    .param p4, "maxDistance"    # F

    .prologue
    .line 250
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v12, v11

    .line 251
    sub-float v11, p2, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float v11, v11, p4

    float-to-double v14, v11

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 250
    mul-double/2addr v12, v14

    double-to-float v5, v12

    .line 252
    .local v5, "maxLengthSeconds":F
    sub-float v11, p2, p1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 253
    .local v2, "diff":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 254
    .local v8, "velAbs":F
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->calculateLinearOutFasterInY2(F)F

    move-result v10

    .line 256
    .local v10, "y2":F
    const/high16 v11, 0x3f000000    # 0.5f

    div-float v6, v10, v11

    .line 257
    .local v6, "startGradient":F
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-direct {v4, v11, v12, v13, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 258
    .local v4, "mLinearOutFasterIn":Landroid/view/animation/Interpolator;
    mul-float v11, v6, v2

    div-float v3, v11, v8

    .line 259
    .local v3, "durationSeconds":F
    cmpg-float v11, v3, v5

    if-gtz v11, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v4, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 277
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v12, v3

    float-to-long v12, v12

    iput-wide v12, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    .line 278
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    return-object v11

    .line 261
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_1

    .line 265
    move v3, v5

    .line 267
    new-instance v9, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v8, v2, v11}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;)V

    .line 268
    .local v9, "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    new-instance v7, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    .line 269
    sget-object v11, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 268
    invoke-direct {v7, v9, v4, v11}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 270
    .local v7, "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v7, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 274
    .end local v7    # "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    .end local v9    # "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    :cond_1
    move v3, v5

    .line 275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v12, v11, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private getInterpolator(FF)Landroid/view/animation/Interpolator;
    .locals 5
    .param p1, "startGradient"    # F
    .param p2, "velocityFactor"    # F

    .prologue
    .line 196
    iget v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedStartGradient:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 197
    iget v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedVelocityFactor:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float v0, v1, v2

    .line 199
    .local v0, "speedup":F
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 200
    mul-float v2, v0, p1

    .line 201
    iget v3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    iget v4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mY2:F

    .line 199
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 202
    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedStartGradient:F

    .line 203
    iput p2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mCachedVelocityFactor:F

    .line 205
    .end local v0    # "speedup":F
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-object v1
.end method

.method private getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    .locals 14
    .param p1, "currValue"    # F
    .param p2, "endValue"    # F
    .param p3, "velocity"    # F
    .param p4, "maxDistance"    # F

    .prologue
    .line 164
    iget v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v10, v9

    .line 165
    sub-float v9, p2, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float v9, v9, p4

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 164
    mul-double/2addr v10, v12

    double-to-float v2, v10

    .line 166
    .local v2, "maxLengthSeconds":F
    sub-float v9, p2, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 167
    .local v0, "diff":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 168
    .local v6, "velAbs":F
    iget v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mSpeedUpFactor:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    .line 169
    const/high16 v7, 0x3f800000    # 1.0f

    .line 171
    .local v7, "velocityFactor":F
    :goto_0
    iget v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mY2:F

    iget v10, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mLinearOutSlowInX2:F

    div-float/2addr v9, v10

    .line 170
    const/high16 v10, 0x3f400000    # 0.75f

    invoke-static {v10, v9, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v4

    .line 172
    .local v4, "startGradient":F
    mul-float v9, v4, v0

    div-float v1, v9, v6

    .line 173
    .local v1, "durationSeconds":F
    invoke-direct {p0, v4, v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getInterpolator(FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 174
    .local v3, "slowInInterpolator":Landroid/view/animation/Interpolator;
    cmpg-float v9, v1, v2

    if-gtz v9, :cond_1

    .line 175
    iget-object v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v3, v9, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 191
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v1

    float-to-long v10, v10

    iput-wide v10, v9, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    .line 192
    iget-object v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    return-object v9

    .line 169
    .end local v1    # "durationSeconds":F
    .end local v3    # "slowInInterpolator":Landroid/view/animation/Interpolator;
    .end local v4    # "startGradient":F
    .end local v7    # "velocityFactor":F
    :cond_0
    const v9, 0x453b8000    # 3000.0f

    div-float v9, v6, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .restart local v7    # "velocityFactor":F
    goto :goto_0

    .line 176
    .restart local v1    # "durationSeconds":F
    .restart local v3    # "slowInInterpolator":Landroid/view/animation/Interpolator;
    .restart local v4    # "startGradient":F
    :cond_1
    iget v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_2

    .line 179
    move v1, v2

    .line 181
    new-instance v8, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v6, v0, v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;)V

    .line 182
    .local v8, "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    new-instance v5, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;

    .line 183
    sget-object v9, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 182
    invoke-direct {v5, v8, v3, v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 184
    .local v5, "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    iget-object v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    iput-object v5, v9, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 188
    .end local v5    # "superInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$InterpolatorInterpolator;
    .end local v8    # "velocityInterpolator":Lcom/android/systemui/statusbar/FlingAnimationUtils$VelocityInterpolator;
    :cond_2
    move v1, v2

    .line 189
    iget-object v9, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v10, v9, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/animation/Animator;FFF)V
    .locals 6
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F

    .prologue
    .line 107
    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 106
    return-void
.end method

.method public apply(Landroid/animation/Animator;FFFF)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F
    .param p5, "maxDistance"    # F

    .prologue
    .line 137
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 139
    .local v0, "properties":Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    iget-wide v2, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 140
    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    return-void
.end method

.method public apply(Landroid/view/ViewPropertyAnimator;FFF)V
    .locals 6
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F

    .prologue
    .line 121
    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFFF)V

    .line 120
    return-void
.end method

.method public apply(Landroid/view/ViewPropertyAnimator;FFFF)V
    .locals 4
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F
    .param p5, "maxDistance"    # F

    .prologue
    .line 156
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 158
    .local v0, "properties":Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    iget-wide v2, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 159
    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 155
    return-void
.end method

.method public applyDismissing(Landroid/animation/Animator;FFFF)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "currValue"    # F
    .param p3, "endValue"    # F
    .param p4, "velocity"    # F
    .param p5, "maxDistance"    # F

    .prologue
    .line 222
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getDismissingProperties(FFFF)Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 224
    .local v0, "properties":Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;
    iget-wide v2, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 225
    iget-object v1, v0, Lcom/android/systemui/statusbar/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    return-void
.end method

.method public getMinVelocityPxPerSecond()F
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    return v0
.end method
