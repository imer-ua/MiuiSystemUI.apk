.class public abstract Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemui/support/v4/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 502
    return-void
.end method

.method public onFragmentAttached(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    return-void
.end method

.method public onFragmentCreated(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 490
    return-void
.end method

.method public onFragmentDestroyed(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 578
    return-void
.end method

.method public onFragmentDetached(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 587
    return-void
.end method

.method public onFragmentPaused(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 541
    return-void
.end method

.method public onFragmentPreAttached(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    return-void
.end method

.method public onFragmentPreCreated(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 479
    return-void
.end method

.method public onFragmentResumed(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 532
    return-void
.end method

.method public onFragmentSaveInstanceState(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 560
    return-void
.end method

.method public onFragmentStarted(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 523
    return-void
.end method

.method public onFragmentStopped(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 550
    return-void
.end method

.method public onFragmentViewCreated(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 514
    return-void
.end method

.method public onFragmentViewDestroyed(Lcom/miui/systemui/support/v4/app/FragmentManager;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lcom/miui/systemui/support/v4/app/FragmentManager;
    .param p2, "f"    # Lcom/miui/systemui/support/v4/app/Fragment;

    .prologue
    .line 569
    return-void
.end method
