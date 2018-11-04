.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileView;
.source "CustomizeTileView.java"


# instance fields
.field private mShowAppLabel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/plugins/qs/QSIconView;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    .line 32
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setGravity(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public getAppLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 43
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mShowAppLabel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    return-void

    .line 43
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setShowAppLabel(Z)V
    .locals 2
    .param p1, "showAppLabel"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mShowAppLabel:Z

    .line 37
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    return-void

    .line 37
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
