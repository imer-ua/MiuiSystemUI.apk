.class public abstract Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseUserAdapter"
.end annotation


# instance fields
.field final mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 662
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 663
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 664
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 665
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->addAdapter(Ljava/lang/ref/WeakReference;)V

    .line 662
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 691
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 692
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    .line 691
    if-eqz v4, :cond_0

    .line 693
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 694
    .local v3, "secureKeyguardShowing":Z
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 695
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    return v4

    .line 693
    .end local v3    # "secureKeyguardShowing":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 698
    .restart local v3    # "secureKeyguardShowing":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 699
    .local v0, "N":I
    const/4 v1, 0x0

    .line 700
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 701
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v4, :cond_4

    .line 707
    :cond_3
    return v1

    .line 704
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 740
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v1, :cond_0

    .line 741
    const v1, 0x90200c8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 743
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/UserIconsCompat;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 744
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_1

    .line 745
    const v1, 0x1010030

    invoke-static {p1, v1}, Lcom/android/systemui/util/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 746
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 745
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 748
    :cond_1
    return-object v0
.end method

.method public getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 717
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 725
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_2

    .line 726
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v0, :cond_0

    .line 727
    const v0, 0x91001b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 730
    :cond_0
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_1

    const v0, 0x91001b1

    .line 729
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 730
    :cond_1
    const v0, 0x91001b0

    goto :goto_0

    .line 732
    :cond_2
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_3

    .line 733
    const v0, 0x91001ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 735
    :cond_3
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCount()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 669
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 670
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    .line 669
    if-eqz v4, :cond_0

    .line 671
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    .local v3, "secureKeyguardShowing":Z
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 673
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    return v4

    .line 671
    .end local v3    # "secureKeyguardShowing":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 676
    .restart local v3    # "secureKeyguardShowing":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 677
    .local v0, "N":I
    const/4 v1, 0x0

    .line 678
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 679
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v4, :cond_3

    .line 678
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 680
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v4, :cond_5

    .line 686
    :cond_4
    return v1

    .line 683
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 751
    return-void
.end method

.method public switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 720
    return-void
.end method
