.class final Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;
.super Landroid/util/FloatProperty;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 193
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 192
    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->get(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0
    .param p1, "object"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p2, "value"    # F

    .prologue
    .line 188
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V

    .line 187
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .prologue
    .line 187
    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->setValue(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V

    return-void
.end method
