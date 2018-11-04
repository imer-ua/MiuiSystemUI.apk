.class public Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "EmptyShadeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/EmptyShadeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyShadeViewState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/EmptyShadeView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/EmptyShadeView;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 63
    instance-of v4, p1, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 64
    check-cast v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 65
    .local v0, "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    iget v4, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->clipTopAmount:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;->this$0:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->-get0(Lcom/android/systemui/statusbar/EmptyShadeView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    move v1, v3

    .line 67
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    :cond_0
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    .line 61
    .end local v0    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    .end local v1    # "visible":Z
    :cond_1
    return-void

    .restart local v0    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    :cond_2
    move v1, v2

    .line 65
    goto :goto_0

    .restart local v1    # "visible":Z
    :cond_3
    move v2, v3

    .line 67
    goto :goto_1
.end method
