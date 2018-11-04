.class public Lcom/android/systemui/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateFontColor(Landroid/view/View;II)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .param p2, "colorId"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v0, p2}, Lcom/android/systemui/FontUtils;->updateFontColor(Landroid/widget/TextView;I)V

    .line 28
    :cond_0
    return-void
.end method

.method public static updateFontColor(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "v"    # Landroid/widget/TextView;
    .param p1, "colorId"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    return-void
.end method

.method public static updateFontSize(Landroid/view/View;II)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "viewId"    # I
    .param p2, "dimensId"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v0, p2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 35
    :cond_0
    return-void
.end method

.method public static updateFontSize(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "v"    # Landroid/widget/TextView;
    .param p1, "dimensId"    # I

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 46
    return-void
.end method
