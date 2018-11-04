.class public Lcom/android/systemui/miui/statusbar/DarkReceiverLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DarkReceiverLinearLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/statusbar/DarkReceiverLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/DarkReceiverLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/DarkReceiverLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v2, :cond_0

    .line 39
    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    .end local v1    # "view":Landroid/view/View;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method
