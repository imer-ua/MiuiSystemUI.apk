.class final Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyToChild(Landroid/view/View;ZI)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shouldApply"    # Z
    .param p3, "originalColor"    # I

    .prologue
    .line 79
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move-object v1, p1

    .line 80
    check-cast v1, Landroid/widget/ImageView;

    .line 81
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 82
    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/SystemUICompat;->getNotificationDefaultColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 85
    .local v0, "grey":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    .end local v0    # "grey":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 89
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 88
    invoke-virtual {v2, p3, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "apply"    # Z

    .prologue
    move-object v1, p1

    .line 70
    check-cast v1, Landroid/view/NotificationHeaderView;

    .line 72
    .local v1, "header":Landroid/view/NotificationHeaderView;
    const v3, 0x1020006

    .line 71
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 73
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findExpandButtonView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    .line 74
    .local v0, "expand":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v3

    invoke-direct {p0, v2, p2, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;->applyToChild(Landroid/view/View;ZI)V

    .line 75
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getOriginalNotificationColor()I

    move-result v3

    invoke-direct {p0, v0, p2, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;->applyToChild(Landroid/view/View;ZI)V

    .line 69
    return-void
.end method
