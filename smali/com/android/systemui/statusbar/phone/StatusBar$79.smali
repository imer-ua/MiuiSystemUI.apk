.class Lcom/android/systemui/statusbar/phone/StatusBar$79;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "val$guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p4, "val$sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 7782
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 7791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap27(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    .line 7792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap25(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 7790
    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 7785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap27(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    .line 7786
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$79;->val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap28(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    .line 7784
    return-void
.end method
