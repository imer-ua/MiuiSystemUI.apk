.class Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 8
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    const/4 v7, 0x0

    .line 75
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->-get1(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-static {v5, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->-set0(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;F)F

    .line 79
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->-get2(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 81
    :cond_1
    return-void

    .line 83
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 84
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_4

    .line 85
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 86
    .local v2, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->-get2(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->-get0(Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;)F

    move-result v6

    invoke-static {v5, v2, v6}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v3

    .line 87
    .local v3, "isDarkMode":Z
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v4

    .line 88
    .local v4, "resId":I
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 89
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 91
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 92
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->-get3()I

    move-result v5

    if-nez v5, :cond_3

    .line 93
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x90c009c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->-set1(I)I

    .line 95
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->-get3()I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 83
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v3    # "isDarkMode":Z
    .end local v4    # "resId":I
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v3    # "isDarkMode":Z
    .restart local v4    # "resId":I
    :cond_5
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 74
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v3    # "isDarkMode":Z
    .end local v4    # "resId":I
    :cond_6
    return-void
.end method
