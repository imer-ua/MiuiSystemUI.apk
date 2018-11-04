.class public Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
.super Landroid/widget/FrameLayout;
.source "FsGestureDemoSwipeView.java"


# instance fields
.field finalAnimatorSet:Landroid/animation/AnimatorSet;

.field hidingAnimator:Landroid/animation/ObjectAnimator;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFinalTranslate:F

.field movingAnimator:Landroid/animation/ObjectAnimator;

.field scaleAnimator:Landroid/animation/ObjectAnimator;

.field showingAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->init()V

    .line 43
    return-void
.end method

.method private createFinalAnimSet(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 119
    packed-switch p1, :pswitch_data_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private createHidingAnimator(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x2

    .line 180
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 193
    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    .line 194
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    :goto_0
    return-void

    .line 185
    :pswitch_0
    const-string/jumbo v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 186
    .local v1, "scaleXHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 187
    .local v2, "scaleYHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_3

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 188
    .local v0, "alphaHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    .line 189
    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    .line 188
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    .line 190
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->hidingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 193
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 185
    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
    .end array-data

    .line 186
    :array_2
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
    .end array-data

    .line 187
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createMovingAnimator(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, "start":F
    const/4 v1, 0x0

    .line 205
    .local v1, "to":F
    packed-switch p1, :pswitch_data_0

    .line 221
    :pswitch_0
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 222
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    add-int/lit16 v2, v2, -0x3e8

    int-to-float v1, v2

    .line 224
    const-string/jumbo v2, "translationY"

    .line 223
    new-array v3, v6, [F

    .line 224
    aput v0, v3, v4

    aput v1, v3, v5

    .line 223
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    .line 227
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 229
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 199
    return-void

    .line 208
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 209
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 211
    const-string/jumbo v2, "translationX"

    .line 210
    new-array v3, v6, [F

    .line 211
    aput v0, v3, v4

    aput v1, v3, v5

    .line 210
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 214
    :pswitch_2
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 215
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    sub-float v1, v2, v3

    .line 217
    const-string/jumbo v2, "translationX"

    .line 216
    new-array v3, v6, [F

    .line 217
    aput v0, v3, v4

    aput v1, v3, v5

    .line 216
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->movingAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createScaleAnimator(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x2

    .line 156
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    const-string/jumbo v2, "scaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 160
    .local v0, "scaleXHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v2, "scaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 161
    .local v1, "scaleYHolder":Landroid/animation/PropertyValuesHolder;
    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    .line 162
    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 161
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    .line 163
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->scaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    return-void

    .line 159
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 160
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method private createShowingAnimator(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x2

    .line 167
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    const-string/jumbo v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 171
    .local v1, "scaleXHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 172
    .local v2, "scaleYHolder":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 173
    .local v0, "alphaHolder":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    .line 174
    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    .line 173
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    .line 175
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 176
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->showingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 166
    return-void

    .line 170
    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 171
    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 172
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init()V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x904003e

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setAlpha(F)V

    .line 51
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 53
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    .line 55
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f0255

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mFinalTranslate:F

    .line 48
    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 237
    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 232
    :cond_0
    return-void
.end method

.method prepare(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const v4, 0x90f0256

    .line 60
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setAlpha(F)V

    .line 61
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setVisibility(I)V

    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, "startOffset":F
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationY(F)V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationY(F)V

    .line 72
    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 78
    .local v0, "center":I
    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v3, v0

    .line 79
    .local v1, "offsetX":I
    int-to-float v3, v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    .line 80
    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationY(F)V

    goto :goto_0

    .line 84
    .end local v0    # "center":I
    .end local v1    # "offsetX":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f0257

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationY(F)V

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    .line 86
    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->setTranslationX(F)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method startAnimation(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createShowingAnimator(I)V

    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createMovingAnimator(I)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createScaleAnimator(I)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createHidingAnimator(I)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->createFinalAnimSet(I)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->finalAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 104
    return-void
.end method
