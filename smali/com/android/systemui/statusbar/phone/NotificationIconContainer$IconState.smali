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

    .line 520
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 521
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 522
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 520
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

    .line 536
    instance-of v5, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_a

    move-object v4, p1

    .line 537
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 538
    .local v4, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    const/4 v0, 0x0

    .line 539
    .local v0, "animate":Z
    const/4 v2, 0x0

    .line 540
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    if-eqz v5, :cond_1

    .line 541
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get7(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_1
    move v3, v6

    .line 543
    .local v3, "animationsAllowed":Z
    :goto_0
    if-eqz v3, :cond_9

    .line 544
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v5, :cond_d

    .line 545
    :cond_2
    invoke-super {p0, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 546
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_3

    .line 547
    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    .line 548
    invoke-virtual {v4, v8, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 550
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 551
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 560
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 561
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-lt v5, v7, :cond_5

    .line 562
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 563
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v5, v8, :cond_5

    .line 564
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 565
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    .line 567
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v5, :cond_7

    .line 568
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 569
    .local v1, "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 571
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v5

    .line 570
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 572
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 573
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 574
    if-eqz v2, :cond_6

    .line 575
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 576
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 578
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 579
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 580
    const/4 v0, 0x1

    .line 581
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I

    .line 583
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_7
    if-nez v0, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v5

    if-ltz v5, :cond_9

    .line 584
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-le v5, v7, :cond_9

    .line 585
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 586
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v5, v8, :cond_9

    .line 587
    :cond_8
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    .line 588
    .restart local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 589
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 590
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 591
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 592
    .restart local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 593
    const/4 v0, 0x1

    .line 596
    .end local v1    # "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_9
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    .line 597
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v7, :cond_f

    .end local v3    # "animationsAllowed":Z
    :goto_2
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    .line 598
    if-eqz v0, :cond_10

    .line 599
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 604
    .end local v0    # "animate":Z
    .end local v4    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_a
    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 605
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    .line 606
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    .line 607
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    .line 535
    return-void

    .line 542
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

    .line 553
    .restart local v3    # "animationsAllowed":Z
    :cond_d
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    if-eqz v5, :cond_e

    .line 554
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get3()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 555
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 556
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_e
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 557
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    .line 558
    .local v2, "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    const/4 v0, 0x1

    goto/16 :goto_1

    .end local v2    # "animationProperties":Lcom/android/systemui/statusbar/stack/AnimationProperties;
    :cond_f
    move v3, v6

    .line 597
    goto :goto_2

    .line 601
    .end local v3    # "animationsAllowed":Z
    :cond_10
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 612
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 613
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    .line 614
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 611
    :cond_0
    return-void
.end method
