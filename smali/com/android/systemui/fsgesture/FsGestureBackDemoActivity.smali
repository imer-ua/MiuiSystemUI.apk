.class public Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;
.super Landroid/app/Activity;
.source "FsGestureBackDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private demoType:Ljava/lang/String;

.field private isFromPro:Z

.field private mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field private mBgView:Landroid/view/View;

.field private mDemoActivityTouchListener:Landroid/view/View$OnTouchListener;

.field private mDemoActivityView:Landroid/widget/ImageView;

.field private mDemoActivityViewMatrix:Landroid/graphics/Matrix;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownX:F

.field private mDownY:F

.field private mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field private mGestureStatus:I

.field private mOffsetX:F

.field private mStatus:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->isFromPro:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mOffsetX:F

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownY:F

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownY:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mOffsetX:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V
    .locals 0
    .param p1, "back"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGesture(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->onGestureFinish()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->showBackAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    .line 65
    new-instance v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityTouchListener:Landroid/view/View$OnTouchListener;

    .line 35
    return-void
.end method

.method private finishGesture(Z)V
    .locals 4
    .param p1, "back"    # Z

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 216
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 217
    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 210
    return-void

    .line 215
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private finishGestureBack()V
    .locals 4

    .prologue
    .line 290
    sget-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    .line 311
    const-wide/16 v2, 0x1f4

    .line 290
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 152
    const v4, 0x91200e1

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 153
    .local v3, "rootView":Landroid/widget/RelativeLayout;
    const v4, 0x91200e2

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    .line 155
    const v4, 0x91200e3

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    .line 156
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    const v4, 0x91200d9

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setRTLParams()V

    .line 163
    :cond_0
    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v4, v6, :cond_2

    .line 164
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 168
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v7, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    .line 174
    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v4, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x90f02ae

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 177
    .local v2, "naturalBarHeight":I
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "naturalBarHeight":I
    :cond_1
    const v4, 0x91200d7

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 183
    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v4, v6, :cond_3

    .line 184
    invoke-direct {p0, v5}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    .line 189
    :goto_1
    new-instance v7, Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v4, v6, :cond_4

    move v4, v5

    :goto_2
    invoke-direct {v7, p0, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 191
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setDisplayWidth(I)V

    .line 192
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v4, v6, :cond_5

    .line 195
    const/16 v4, 0x9

    .line 194
    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 151
    return-void

    .line 166
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    goto :goto_1

    :cond_4
    move v4, v6

    .line 190
    goto :goto_2

    .line 195
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/16 v4, 0xb

    goto :goto_3
.end method

.method private onGestureFinish()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGestureBack()V

    .line 283
    return-void
.end method

.method private showBackAnimation()V
    .locals 4

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    const v2, 0x905000a

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 262
    .local v0, "enterAnimation":Landroid/view/animation/Animation;
    const v2, 0x905000b

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 263
    .local v1, "exitAnimation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 279
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    return-void
.end method

.method private startSwipeViewAnimation(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 201
    sget-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    .line 207
    const-wide/16 v2, 0x1f4

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v4, 0x904003c

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "decorView":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/Util;->hideSystemBars(Landroid/view/View;)V

    .line 136
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 138
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 139
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    .line 140
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 143
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "DEMO_TYPE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    .line 144
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string/jumbo v4, "DEMO_FULLY_SHOW"

    :goto_0
    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    .line 145
    const-string/jumbo v4, "DEMO_STEP"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 146
    const-string/jumbo v4, "IS_FROM_PROVISION"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->isFromPro:Z

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->initView()V

    .line 128
    return-void

    .line 144
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 316
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 314
    return-void
.end method
