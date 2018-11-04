.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeColumns"
.end annotation


# instance fields
.field private mColumnsCollapsed:Landroid/view/ViewGroup;

.field private mColumnsExpanded:Landroid/view/ViewGroup;

.field private mExpanded:Z


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "columnsCollapsed"    # Landroid/view/ViewGroup;
    .param p2, "columnsExpanded"    # Landroid/view/ViewGroup;

    .prologue
    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1346
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsCollapsed:Landroid/view/ViewGroup;

    .line 1347
    iput-object p2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsExpanded:Landroid/view/ViewGroup;

    .line 1345
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1364
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1368
    return-void
.end method

.method public getCurrentParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1361
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsExpanded:Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsCollapsed:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1372
    return-void
.end method

.method public updateExpandedH(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    .line 1352
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mExpanded:Z

    .line 1354
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mExpanded:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsCollapsed:Landroid/view/ViewGroup;

    .line 1355
    .local v0, "from":Landroid/view/ViewGroup;
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mExpanded:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsExpanded:Landroid/view/ViewGroup;

    .line 1357
    .local v1, "to":Landroid/view/ViewGroup;
    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->reparentChildren(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 1351
    return-void

    .line 1354
    .end local v0    # "from":Landroid/view/ViewGroup;
    .end local v1    # "to":Landroid/view/ViewGroup;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsExpanded:Landroid/view/ViewGroup;

    .restart local v0    # "from":Landroid/view/ViewGroup;
    goto :goto_0

    .line 1355
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->mColumnsCollapsed:Landroid/view/ViewGroup;

    goto :goto_1
.end method
