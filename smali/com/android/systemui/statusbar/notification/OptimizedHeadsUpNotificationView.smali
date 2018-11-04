.class public Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;
.super Landroid/widget/LinearLayout;
.source "OptimizedHeadsUpNotificationView.java"


# instance fields
.field private mAction:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getActionView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mAction:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 39
    const v0, 0x9120079

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mIcon:Landroid/widget/ImageView;

    .line 40
    const v0, 0x912007a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    .line 41
    const v0, 0x912021c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mText:Landroid/widget/TextView;

    .line 42
    const v0, 0x9120236

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mAction:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public setRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 49
    return-void
.end method

.method public wrapIconView(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    return-void
.end method

.method public wrapTextView(Landroid/widget/TextView;Z)V
    .locals 3
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "isGameMode"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    const v0, 0x90c017b

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    return-void

    .line 75
    :cond_2
    const v0, 0x90c017d

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public wrapTitleView(Landroid/widget/TextView;Z)V
    .locals 3
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "isGameMode"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const v0, 0x90c017b

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    :goto_1
    return-void

    .line 62
    :cond_1
    const v0, 0x90c017d

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
