.class Lcom/android/systemui/statusbar/notification/InCallNotificationView$3;
.super Ljava/lang/Object;
.source "InCallNotificationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/InCallNotificationView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/InCallNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/InCallNotificationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView$3;->this$0:Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView$3;->this$0:Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->-get0(Lcom/android/systemui/statusbar/notification/InCallNotificationView;)Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/InCallNotificationView$3;->this$0:Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->-get0(Lcom/android/systemui/statusbar/notification/InCallNotificationView;)Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;->onExitCall()V

    .line 91
    :cond_0
    return-void
.end method
