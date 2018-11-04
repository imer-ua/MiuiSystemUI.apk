.class public Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandCollapseLinearLayout.java"

# interfaces
.implements Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;


# instance fields
.field private mStateHelper:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;

    invoke-direct {v0, p0, p0, p2, p3}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->mStateHelper:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;

    .line 19
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->mStateHelper:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public onExpandStateUpdated(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .prologue
    .line 33
    return-void
.end method

.method public updateExpanded(ZZ)V
    .locals 1
    .param p1, "expand"    # Z
    .param p2, "withTransition"    # Z

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->mStateHelper:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->updateExpanded(ZZ)V

    .line 24
    return-void
.end method
