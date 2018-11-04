.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$10$1;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;->onFragmentViewCreated(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    .prologue
    .line 3173
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 3176
    sub-int v0, p5, p3

    .line 3177
    .local v0, "height":I
    sub-int v1, p9, p7

    .line 3178
    .local v1, "oldHeight":I
    if-eq v0, v1, :cond_0

    .line 3179
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    .line 3175
    :cond_0
    return-void
.end method
