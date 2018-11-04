.class Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;
.source "CollapsedStatusBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeftEarIconManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
    .param p2, "linearLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 733
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    .line 732
    return-void
.end method

.method private updateIcons(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 8
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 755
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get0(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 757
    .local v3, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v3, :cond_0

    return-void

    .line 759
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 760
    .local v0, "iconId":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, "slot":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->mNotchleftearIconsList:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 763
    return-void

    .line 759
    .end local v0    # "iconId":I
    .end local v2    # "slot":Ljava/lang/String;
    :cond_1
    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 766
    .restart local v2    # "slot":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "bluetooth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 767
    if-eqz p2, :cond_c

    .line 768
    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-nez v4, :cond_a

    .line 769
    const v4, 0x9020366

    if-eq v0, v4, :cond_3

    const v4, 0x902036a

    if-ne v0, v4, :cond_8

    :cond_3
    move v1, v6

    .line 770
    .local v1, "show":Z
    :goto_1
    if-eqz v1, :cond_9

    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 771
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-set0(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Z)Z

    .line 782
    .end local v1    # "show":Z
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get1(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get2(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    if-eqz v4, :cond_10

    .line 788
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get4(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    if-eqz v4, :cond_7

    .line 789
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get4(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    .line 790
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get4(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/Clock;->update()V

    .line 754
    :cond_7
    :goto_4
    return-void

    .line 769
    :cond_8
    const v4, 0x9020368

    if-eq v0, v4, :cond_3

    move v1, v5

    goto :goto_1

    .line 770
    .restart local v1    # "show":Z
    :cond_9
    const/16 v4, 0x8

    goto :goto_2

    .line 773
    .end local v1    # "show":Z
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    move v4, v6

    :goto_5
    invoke-static {v7, v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-set0(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Z)Z

    goto :goto_3

    :cond_b
    move v4, v5

    goto :goto_5

    .line 776
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-set0(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Z)Z

    goto :goto_3

    .line 778
    :cond_d
    const-string/jumbo v4, "location"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 779
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    if-nez p2, :cond_f

    :cond_e
    move v4, v5

    :goto_6
    invoke-static {v7, v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-set1(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Z)Z

    goto :goto_3

    :cond_f
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e

    move v4, v6

    goto :goto_6

    .line 783
    :cond_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get4(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    if-nez v4, :cond_7

    .line 784
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get4(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    iput-boolean v6, v4, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    .line 785
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->-get4(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/Clock;->update()V

    goto :goto_4
.end method


# virtual methods
.method protected onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 738
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V

    .line 739
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->updateIcons(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 737
    return-void
.end method

.method protected onRemoveIcon(I)V
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 750
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->updateIcons(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 751
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->onRemoveIcon(I)V

    .line 749
    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 744
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 745
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$LeftEarIconManager;->updateIcons(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 743
    return-void
.end method
