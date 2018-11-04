.class Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;
.super Ljava/lang/Object;
.source "MiuiRingerModeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingerButtonHelper"
.end annotation


# instance fields
.field private mDndView:Landroid/view/View;

.field private mExpanded:Z

.field private mRingerMode:I

.field private mStandardView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->updateState()V

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "standardView"    # Landroid/view/View;
    .param p2, "dndView"    # Landroid/view/View;

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    .line 355
    iput-object p2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    .line 353
    return-void
.end method

.method private updateState()V
    .locals 8

    .prologue
    const v7, 0x1020016

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 367
    iget v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mRingerMode:I

    .line 368
    .local v1, "lastMode":I
    if-nez v1, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MiuiSettings$SilenceMode;->getLastestQuietMode(Landroid/content/Context;)I

    move-result v1

    .line 372
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mRingerMode:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 373
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setActivated(Z)V

    .line 374
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mRingerMode:I

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 375
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-eqz v2, :cond_8

    move v2, v4

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setActivated(Z)V

    .line 376
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-nez v2, :cond_1

    if-eq v1, v3, :cond_9

    :cond_1
    move v2, v3

    :goto_4
    invoke-static {v5, v2}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 377
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-nez v5, :cond_2

    if-ne v1, v3, :cond_a

    :cond_2
    :goto_5
    invoke-static {v2, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 378
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    invoke-static {v2, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 379
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    invoke-static {v2, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 381
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 382
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_3

    .line 383
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mDndView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 384
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-eqz v2, :cond_b

    sget v2, Lcom/android/systemui/miui/volume/R$array;->miui_volume_ringer_btn_dnd_corners:I

    .line 383
    :goto_6
    invoke-static {v0, v3, v2}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    .line 387
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_4

    .line 388
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mStandardView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 389
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    if-eqz v2, :cond_c

    sget v2, Lcom/android/systemui/miui/volume/R$array;->miui_volume_ringer_btn_standard_corners:I

    .line 388
    :goto_7
    invoke-static {v0, v3, v2}, Lcom/android/systemui/miui/DrawableAnimators;->updateCornerRadii(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/animation/Animator;

    .line 366
    :cond_4
    return-void

    .end local v0    # "context":Landroid/content/Context;
    :cond_5
    move v2, v4

    .line 372
    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 373
    goto/16 :goto_1

    :cond_7
    move v2, v4

    .line 374
    goto :goto_2

    :cond_8
    move v2, v3

    .line 375
    goto :goto_3

    :cond_9
    move v2, v4

    .line 376
    goto :goto_4

    :cond_a
    move v3, v4

    .line 377
    goto :goto_5

    .line 385
    .restart local v0    # "context":Landroid/content/Context;
    :cond_b
    sget v2, Lcom/android/systemui/miui/volume/R$array;->miui_volume_ringer_btn_corners_collapsed:I

    goto :goto_6

    .line 390
    :cond_c
    sget v2, Lcom/android/systemui/miui/volume/R$array;->miui_volume_ringer_btn_corners_collapsed:I

    goto :goto_7
.end method


# virtual methods
.method onExpanded(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mExpanded:Z

    .line 362
    return-void
.end method

.method setRingerMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 359
    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->mRingerMode:I

    .line 358
    return-void
.end method
