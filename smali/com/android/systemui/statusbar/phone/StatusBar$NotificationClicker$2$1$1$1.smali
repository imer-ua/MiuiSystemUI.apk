.class Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;

.field final synthetic val$parentToCancelFinal:Lcom/android/systemui/miui/statusbar/ExpandedNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 0
    .param p1, "this$4"    # Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;
    .param p2, "val$parentToCancelFinal"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 8676
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1$1;->this$4:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1$1;->val$parentToCancelFinal:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1$1;->this$4:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;->this$3:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1$1;->val$parentToCancelFinal:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->performRemoveNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    .line 8678
    return-void
.end method
