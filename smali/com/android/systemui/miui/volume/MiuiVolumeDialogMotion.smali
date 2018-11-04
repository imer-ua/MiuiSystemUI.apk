.class public Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private mCallback:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;

.field private mCollapseAnimator:Landroid/animation/Animator;

.field private mCollapsedStates:Lcom/android/systemui/miui/ViewStateGroup;

.field private mContext:Landroid/content/Context;

.field private mCornerBgViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCornerRadiusCollapsed:F

.field private mCornerRadiusExpanded:F

.field private mDialogContentView:Landroid/view/View;

.field private mDialogView:Landroid/view/View;

.field private mDismissing:Z

.field private mDisplay:Landroid/view/Display;

.field private mElevationCollapsed:F

.field private mExpandAnimator:Landroid/animation/Animator;

.field private mExpandButton:Landroid/view/View;

.field private mExpanded:Z

.field private mExpandedStates:Lcom/android/systemui/miui/ViewStateGroup;

.field private mRingerModeLayout:Landroid/view/View;

.field private mShowing:Z

.field private mTempColumnContainer:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCallback:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mElevationCollapsed:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->onShowAnimationEnd()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;Z)V
    .locals 0
    .param p1, "dismissing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setDismissing(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setViewsElevation(F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startShowAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "contents"    # Landroid/view/ViewGroup;
    .param p3, "tempColumnContainer"    # Landroid/widget/FrameLayout;
    .param p4, "chevron"    # Landroid/view/View;
    .param p5, "footer"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerBgViews:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogContentView:Landroid/view/View;

    .line 66
    iput-object p3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mTempColumnContainer:Landroid/widget/FrameLayout;

    .line 67
    iput-object p4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandButton:Landroid/view/View;

    .line 68
    iput-object p5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_bg_radius_expanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerRadiusExpanded:F

    .line 71
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_bg_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerRadiusCollapsed:F

    .line 72
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_elevation_collapsed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mElevationCollapsed:F

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setupAnimationInfo()V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setupStates()V

    .line 62
    return-void
.end method

.method private applyCornerRadius(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "radius"    # F

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 243
    return-void

    .line 246
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 247
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 240
    :cond_1
    return-void
.end method

.method private onShowAnimationEnd()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setShowing(Z)V

    .line 298
    return-void
.end method

.method private setDismissing(Z)V
    .locals 1
    .param p1, "dismissing"    # Z

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDismissing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 263
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDismissing:Z

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->updateAnimating()V

    .line 261
    return-void
.end method

.method private setShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mShowing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 257
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mShowing:Z

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->updateAnimating()V

    .line 255
    return-void
.end method

.method private setViewsElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 233
    return-void
.end method

.method private setupAnimationInfo()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerBgViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerBgViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerBgViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/miui/volume/R$animator;->miui_volume_bg_expand:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandAnimator:Landroid/animation/Animator;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/miui/volume/R$animator;->miui_volume_bg_collapse:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCollapseAnimator:Landroid/animation/Animator;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCollapseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method private setupStates()V
    .locals 13

    .prologue
    .line 112
    iget-object v9, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 113
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    .line 114
    const/4 v10, 0x2

    .line 113
    if-ne v9, v10, :cond_1

    const/4 v4, 0x1

    .line 117
    .local v4, "landscape":Z
    :goto_0
    sget v9, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_offset_end:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 118
    .local v6, "offsetEndCollapsed":I
    if-eqz v4, :cond_0

    sget-boolean v9, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDisplay:Landroid/view/Display;

    if-eqz v9, :cond_0

    .line 119
    iget-object v9, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    const/4 v5, 0x1

    .line 120
    .local v5, "notchSide":Z
    :goto_1
    if-eqz v5, :cond_0

    .line 122
    sget v9, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_status_bar_height:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v6, v9

    .line 126
    .end local v5    # "notchSide":Z
    :cond_0
    new-instance v9, Lcom/android/systemui/miui/ViewStateGroup$Builder;

    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/systemui/miui/ViewStateGroup$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$integer;->miui_volume_dialog_gravity_collapsed:I

    const/4 v12, 0x1

    .line 126
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntRes(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 128
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/16 v11, 0xb

    const/4 v12, 0x1

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 129
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_offset_top_collapsed:I

    const/4 v12, 0x6

    .line 126
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 130
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, 0x5

    const/4 v12, 0x0

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 131
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, 0x7

    .line 126
    invoke-virtual {v9, v10, v11, v6}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 132
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/16 v11, 0xc

    const v12, 0x800005

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 133
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, -0x2

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 134
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, -0x2

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 135
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, -0x2

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 136
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, -0x2

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 137
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/16 v11, 0xb

    const/4 v12, 0x1

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 138
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_footer_margin_top:I

    const/4 v12, 0x6

    .line 126
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 139
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_footer_margin_left:I

    const/4 v12, 0x5

    .line 126
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 140
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/16 v11, 0xa

    const/4 v12, 0x0

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 143
    sget v10, Lcom/android/systemui/miui/volume/R$id;->miui_ringer_state_layout:I

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_silence_button_height:I

    const/4 v12, 0x2

    .line 126
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 144
    sget v10, Lcom/android/systemui/miui/volume/R$id;->miui_ringer_state_layout:I

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_silence_button_height:I

    const/4 v12, 0x3

    .line 126
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 145
    sget v10, Lcom/android/systemui/miui/volume/R$id;->miui_volume_ringer_divider:I

    const/16 v11, 0xa

    const/16 v12, 0x8

    .line 126
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 146
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_bg_padding:I

    const/16 v12, 0x9

    .line 126
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->build()Lcom/android/systemui/miui/ViewStateGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCollapsedStates:Lcom/android/systemui/miui/ViewStateGroup;

    .line 150
    iget-object v9, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/systemui/miui/volume/R$bool;->miui_volume_expand_freeland:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 155
    .local v2, "expandedFreeland":Z
    if-eqz v2, :cond_3

    .line 156
    sget v9, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_offset_top_collapsed:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    .line 157
    .local v1, "dialogMarginTopExpanded":I
    const/4 v0, 0x0

    .line 172
    .local v0, "dialogMarginLeftExpanded":I
    :goto_2
    new-instance v9, Lcom/android/systemui/miui/ViewStateGroup$Builder;

    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/systemui/miui/ViewStateGroup$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$integer;->miui_volume_dialog_gravity_expanded:I

    const/4 v12, 0x1

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntRes(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 174
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$integer;->miui_volume_layout_orientation_expanded:I

    const/16 v12, 0xb

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntRes(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 175
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, 0x6

    .line 172
    invoke-virtual {v9, v10, v11, v1}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 176
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, 0x5

    .line 172
    invoke-virtual {v9, v10, v11, v0}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 177
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_offset_end_expanded:I

    const/4 v12, 0x7

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 178
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/16 v11, 0xc

    const/4 v12, 0x1

    .line 172
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 179
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_content_width_expanded:I

    const/4 v12, 0x2

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 180
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_content_height_expanded:I

    const/4 v12, 0x3

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 181
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_ringer_layout_width_expanded:I

    const/4 v12, 0x2

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 182
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_ringer_layout_height_expanded:I

    const/4 v12, 0x3

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 183
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$integer;->miui_volume_layout_orientation_expanded:I

    const/16 v12, 0xb

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntRes(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 184
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_footer_margin_top_expanded:I

    const/4 v12, 0x6

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 185
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_footer_margin_left_expanded:I

    const/4 v12, 0x5

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 186
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/16 v11, 0xa

    const/16 v12, 0x8

    .line 172
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 187
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getId()I

    move-result v10

    const/16 v11, 0xa

    const/16 v12, 0x8

    .line 172
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 190
    sget v10, Lcom/android/systemui/miui/volume/R$id;->miui_ringer_state_layout:I

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_ringer_btn_layout_width:I

    const/4 v12, 0x2

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 191
    sget v10, Lcom/android/systemui/miui/volume/R$id;->miui_ringer_state_layout:I

    sget v11, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_ringer_btn_layout_height:I

    const/4 v12, 0x3

    .line 172
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addStateWithIntDimen(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 192
    sget v10, Lcom/android/systemui/miui/volume/R$id;->miui_volume_ringer_divider:I

    const/16 v11, 0xa

    const/4 v12, 0x0

    .line 172
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    .line 193
    iget-object v10, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mRingerModeLayout:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/16 v11, 0x9

    const/4 v12, 0x0

    .line 172
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->addState(III)Lcom/android/systemui/miui/ViewStateGroup$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/miui/ViewStateGroup$Builder;->build()Lcom/android/systemui/miui/ViewStateGroup;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandedStates:Lcom/android/systemui/miui/ViewStateGroup;

    .line 111
    return-void

    .line 113
    .end local v0    # "dialogMarginLeftExpanded":I
    .end local v1    # "dialogMarginTopExpanded":I
    .end local v2    # "expandedFreeland":Z
    .end local v4    # "landscape":Z
    .end local v6    # "offsetEndCollapsed":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "landscape":Z
    goto/16 :goto_0

    .line 119
    .restart local v6    # "offsetEndCollapsed":I
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 158
    .restart local v2    # "expandedFreeland":Z
    :cond_3
    if-eqz v4, :cond_4

    .line 159
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v8, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 160
    .local v8, "width":I
    const/4 v1, 0x0

    .line 161
    .restart local v1    # "dialogMarginTopExpanded":I
    int-to-float v9, v8

    sget v10, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_content_width_expanded:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    sub-float/2addr v9, v10

    .line 162
    sget v10, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_ringer_btn_layout_width:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 161
    sub-float/2addr v9, v10

    .line 163
    sget v10, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_footer_margin_left_expanded:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 161
    sub-float/2addr v9, v10

    float-to-int v9, v9

    div-int/lit8 v0, v9, 0x2

    .restart local v0    # "dialogMarginLeftExpanded":I
    goto/16 :goto_2

    .line 165
    .end local v0    # "dialogMarginLeftExpanded":I
    .end local v1    # "dialogMarginTopExpanded":I
    .end local v8    # "width":I
    :cond_4
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 166
    .local v3, "height":I
    int-to-float v9, v3

    sget v10, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_content_height_expanded:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    sub-float/2addr v9, v10

    .line 167
    sget v10, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_ringer_btn_layout_height:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 166
    sub-float/2addr v9, v10

    .line 168
    sget v10, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_footer_margin_top_expanded:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 166
    sub-float/2addr v9, v10

    float-to-int v9, v9

    div-int/lit8 v1, v9, 0x2

    .line 169
    .restart local v1    # "dialogMarginTopExpanded":I
    const/4 v0, 0x0

    .restart local v0    # "dialogMarginLeftExpanded":I
    goto/16 :goto_2
.end method

.method private startShowAnimation()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 304
    const/4 v1, 0x0

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 305
    const/high16 v1, 0x3f800000    # 1.0f

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 306
    const-wide/16 v2, 0x12c

    .line 303
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 307
    sget-object v1, Lcom/android/systemui/Interpolators;->DECELERATE_QUART:Landroid/view/animation/Interpolator;

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 308
    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$2;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)V

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 302
    return-void
.end method

.method private updateAnimating()V
    .locals 3

    .prologue
    .line 268
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mShowing:Z

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDismissing:Z

    .line 269
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    .local v0, "animating":Z
    goto :goto_0

    .line 270
    .end local v0    # "animating":Z
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mAnimating:Z

    .line 271
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCallback:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCallback:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mAnimating:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;->onAnimatingChanged(Z)V

    .line 267
    :cond_2
    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mAnimating:Z

    return v0
.end method

.method public setCallback(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCallback:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;

    .line 78
    return-void
.end method

.method public setDisplay(Landroid/view/Display;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDisplay:Landroid/view/Display;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->updateStates()V

    .line 82
    :cond_0
    return-void
.end method

.method public setExpandFraction(F)V
    .locals 7
    .param p1, "fraction"    # F

    .prologue
    .line 223
    iget v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerRadiusCollapsed:F

    iget v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerRadiusExpanded:F

    iget v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerRadiusCollapsed:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v1, v4, v5

    .line 224
    .local v1, "radius":F
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCornerBgViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 225
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->applyCornerRadius(Landroid/view/View;F)V

    goto :goto_0

    .line 229
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mElevationCollapsed:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    mul-float v0, v4, v5

    .line 230
    .local v0, "elevation":F
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setViewsElevation(F)V

    .line 221
    return-void
.end method

.method public startDismiss(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setDismissing(Z)V

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 324
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setShowing(Z)V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 329
    const/4 v1, 0x0

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 330
    sget-object v1, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 331
    const-wide/16 v2, 0x12c

    .line 327
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;Ljava/lang/Runnable;)V

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 319
    :goto_0
    return-void

    .line 349
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setDismissing(Z)V

    .line 350
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setShowing(Z)V

    goto :goto_0
.end method

.method public startExpandH(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCollapseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCollapseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 209
    :cond_1
    if-eqz p1, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandedStates:Lcom/android/systemui/miui/ViewStateGroup;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/systemui/miui/ViewStateGroup;->apply(Landroid/view/ViewGroup;)V

    .line 217
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpanded:Z

    .line 201
    return-void

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCollapseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 214
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCollapsedStates:Lcom/android/systemui/miui/ViewStateGroup;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/systemui/miui/ViewStateGroup;->apply(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public startShow()V
    .locals 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setShowing(Z)V

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDismissing:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setDismissing(Z)V

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startShowAnimation()V

    .line 276
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCallback:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;

    invoke-interface {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;->onShow()V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$1;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public updateStates()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setupStates()V

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mExpandedStates:Lcom/android/systemui/miui/ViewStateGroup;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/systemui/miui/ViewStateGroup;->apply(Landroid/view/ViewGroup;)V

    .line 89
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mCollapsedStates:Lcom/android/systemui/miui/ViewStateGroup;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->mDialogView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/systemui/miui/ViewStateGroup;->apply(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method
