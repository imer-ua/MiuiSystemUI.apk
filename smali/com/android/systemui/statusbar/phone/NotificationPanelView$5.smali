.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 1598
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/MiuiKeyguardClock;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/MiuiKeyguardClock;->setVisibility(I)V

    .line 1599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1596
    return-void
.end method
