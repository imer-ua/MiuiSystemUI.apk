.class public Lcom/android/systemui/statusbar/NotificationGuts;
.super Landroid/widget/FrameLayout;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;,
        Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;,
        Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mClipBottomAmount:I

.field private mClipTopAmount:I

.field private mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

.field private mExposed:Z

.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

.field private mHandler:Landroid/os/Handler;

.field private mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

.field private mIsAnimating:Z

.field private mNeedsFalsingProtection:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationGuts;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mIsAnimating:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setWillNotDraw(Z)V

    .line 111
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$1;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    .line 121
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    .line 120
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void
.end method

.method private animateClose(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    .line 231
    if-eq p1, v6, :cond_0

    if-ne p2, v6, :cond_1

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 p1, v6, 0x2

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int p2, v6, v7

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v2, v6

    .line 236
    .local v2, "horz":D
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v4, v6

    .line 237
    .local v4, "vert":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 239
    .local v1, "r":F
    const/4 v6, 0x0

    .line 238
    invoke-static {p0, p1, p2, v1, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 240
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v6, 0x168

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 241
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    new-instance v6, Lcom/android/systemui/statusbar/NotificationGuts$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$2;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 254
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mIsAnimating:Z

    .line 230
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 152
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    .line 153
    .local v1, "top":I
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipBottomAmount:I

    sub-int v0, v2, v3

    .line 154
    .local v0, "bottom":I
    if-eqz p2, :cond_0

    if-ge v1, v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    :cond_0
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public closeControls(IIZZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "save"    # Z
    .param p4, "force"    # Z

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsCloseAnimationEnd()V

    .line 208
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0, p3, p4}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->handleCloseControls(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    :cond_2
    :goto_0
    return-void

    .line 212
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationGuts;->animateClose(II)V

    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    goto :goto_0
.end method

.method public closeControls(ZZIIZ)V
    .locals 2
    .param p1, "leavebehinds"    # Z
    .param p2, "controls"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p0, p3, p4, v1, p5}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p0, p3, p4, v1, p5}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 186
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void
.end method

.method public getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getActualHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mIsAnimating:Z

    return v0
.end method

.method public isExposed()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 147
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v1, 0x90202a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 161
    :cond_0
    return-void
.end method

.method protected onHeightChanged()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 294
    :cond_0
    return-void
.end method

.method public resetFalsingCheck()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_0
    return-void
.end method

.method public setActualHeight(I)V
    .locals 0
    .param p1, "actualHeight"    # I

    .prologue
    .line 258
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 257
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipBottomAmount:I

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 275
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 270
    return-void
.end method

.method public setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    .line 286
    return-void
.end method

.method public setExposed(ZZ)V
    .locals 4
    .param p1, "exposed"    # Z
    .param p2, "needsFalsingProtection"    # Z

    .prologue
    .line 301
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    .line 302
    .local v1, "wasExposed":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    .line 303
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    .line 304
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 309
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, "contentView":Landroid/view/View;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 312
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 300
    .end local v0    # "contentView":Landroid/view/View;
    :cond_0
    return-void

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setGutsContent(Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;)V
    .locals 1
    .param p1, "content"    # Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->removeAllViews()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->addView(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method public setHeightChangedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    .line 290
    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0
    .param p1, "isAnimating"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mIsAnimating:Z

    .line 222
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willBeRemoved()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->willBeRemoved()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
