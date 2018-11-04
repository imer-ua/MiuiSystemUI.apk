.class public Lcom/android/systemui/statusbar/NotificationFilter;
.super Lcom/android/systemui/statusbar/BaseGutsContentView;
.source "NotificationFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseGutsContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public bindNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;)V
    .locals 11
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "listener"    # Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isFold()Z

    move-result v3

    .line 26
    .local v3, "isFold":Z
    const v6, 0x912007a

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 27
    .local v5, "titleView":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    const v6, 0x9100594

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 29
    const v6, 0x9120220

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 31
    const v6, 0x912021f

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 32
    .local v4, "secondaryTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationFilter;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v3, :cond_1

    const v6, 0x9100596

    :goto_1
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 32
    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v6, 0x912021e

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 36
    .local v2, "iconImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationFilter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->applyAppIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V

    .line 38
    const v6, 0x9120221

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, "cancelButton":Landroid/widget/TextView;
    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 40
    new-instance v6, Lcom/android/systemui/statusbar/NotificationFilter$1;

    invoke-direct {v6, p0, p2}, Lcom/android/systemui/statusbar/NotificationFilter$1;-><init>(Lcom/android/systemui/statusbar/NotificationFilter;Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v6, 0x9120222

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/NotificationFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "confirmButton":Landroid/widget/TextView;
    const v6, 0x910059d

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 49
    new-instance v6, Lcom/android/systemui/statusbar/NotificationFilter$2;

    invoke-direct {v6, p0, p2}, Lcom/android/systemui/statusbar/NotificationFilter$2;-><init>(Lcom/android/systemui/statusbar/NotificationFilter;Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void

    .line 27
    .end local v0    # "cancelButton":Landroid/widget/TextView;
    .end local v1    # "confirmButton":Landroid/widget/TextView;
    .end local v2    # "iconImageView":Landroid/widget/ImageView;
    .end local v4    # "secondaryTextView":Landroid/widget/TextView;
    :cond_0
    const v6, 0x9100593

    goto :goto_0

    .line 33
    .restart local v4    # "secondaryTextView":Landroid/widget/TextView;
    :cond_1
    const v6, 0x9100595

    goto :goto_1
.end method

.method public handleCloseControls(ZZ)Z
    .locals 1
    .param p1, "save"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isLeavebehind()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 58
    return-void
.end method

.method public willBeRemoved()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
