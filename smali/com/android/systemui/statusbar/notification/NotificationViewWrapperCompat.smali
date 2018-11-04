.class public Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;
.super Ljava/lang/Object;
.source "NotificationViewWrapperCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAppNameTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 13
    const v0, 0x10203b9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static findExpandButtonView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 25
    const v0, 0x10203ce

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public static findHeaderTextDividerView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 21
    const v0, 0x10203cc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static findHeaderTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 17
    const v0, 0x10203bf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static findInboxText0View(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 45
    const v0, 0x10203d0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static findNotificationHeaderView(Landroid/view/View;)Landroid/view/NotificationHeaderView;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 33
    const v0, 0x10203ca

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public static findNotificationMessagingView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 41
    const v0, 0x10203de

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getRemoteInputTag(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 49
    const v0, 0x102005c

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isNotificationHeader(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10203ca

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setHasImage(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "bigText"    # Landroid/widget/TextView;
    .param p1, "hasImage"    # Z

    .prologue
    .line 53
    instance-of v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Lcom/android/internal/widget/ImageFloatingTextView;

    .end local p0    # "bigText":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImage(Z)V

    .line 52
    :cond_0
    return-void
.end method
