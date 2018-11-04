.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconState"
.end annotation


# instance fields
.field public clampedAppearAmount:F

.field public iconAppearAmount:F

.field public iconColor:I

.field public justAdded:Z

.field private justReplaced:Z

.field public justUndarkened:Z

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public translateContent:Z

.field public useFullTransitionAmount:Z

.field public useLinearTransitionAmount:Z

.field public visibleState:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 522
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 523
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 524
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 533
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 522
    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 538
    instance-of v5, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_a

    move-object v4, p1

    .line 539
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 540
    .local v4, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    const/4 v0, 0x0

    .line 541
    .local v0, "animate":Z
    const/4 v2, 0x0

    .line 542
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    if-eqz v5, :cond_1

    .line 543
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get7(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_1
    move v3, v6

    .line 545
    .local v3, "animationsAllowed":Z
    :goto_0
    if-eqz v3, :cond_9

    .line 546
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v5, :cond_d

    .line 547
    :cond_2
    invoke-super {p0, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 548
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_3

    .line 549
    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    .line 550
    invoke-virtual {v4, v8, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 552
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 553
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 562
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 563
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-lt v5, v7, :cond_5

    .line 564
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 565
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v5, v8, :cond_5

    .line 566
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 567
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 569
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v5, :cond_7

    .line 570
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 571
    .local v1, "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 573
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v5

    .line 572
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 574
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 575
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 576
    if-eqz v2, :cond_6

    .line 577
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 578
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 580
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 581
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 582
    const/4 v0, 0x1

    .line 583
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I

    .line 585
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_7
    if-nez v0, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v5

    if-ltz v5, :cond_9

    .line 586
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-le v5, v7, :cond_9

    .line 587
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 588
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v5, v8, :cond_9

    .line 589
    :cond_8
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 590
    .restart local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 591
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 592
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 593
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 594
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 595
    const/4 v0, 0x1

    .line 598
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_9
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 599
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v7, :cond_f

    .end local v3    # "animationsAllowed":Z
    :goto_2
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 600
    if-eqz v0, :cond_10

    .line 601
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 606
    .end local v0    # "animate":Z
    .end local v4    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_a
    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 607
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 608
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 609
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    .line 537
    return-void

    .line 544
    .restart local v0    # "animate":Z
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .restart local v4    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_b
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-eqz v5, :cond_c

    move v5, v6

    :goto_4
    move v3, v5

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x1

    goto :goto_4

    .line 555
    .restart local v3    # "animationsAllowed":Z
    :cond_d
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    if-eqz v5, :cond_e

    .line 556
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get3()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 557
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 558
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_e
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 559
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 560
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    goto/16 :goto_1

    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_f
    move v3, v6

    .line 599
    goto :goto_2

    .line 603
    .end local v3    # "animationsAllowed":Z
    :cond_10
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 614
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 615
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 616
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 613
    :cond_0
    return-void
.end method
