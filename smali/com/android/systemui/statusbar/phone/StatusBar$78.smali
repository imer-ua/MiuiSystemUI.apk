.class Lcom/android/systemui/statusbar/phone/StatusBar$78;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;


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

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 7775
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGutsCloseAnimationEnd()V
    .locals 2

    .prologue
    .line 7788
    const/4 v0, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7787
    :cond_0
    :goto_0
    return-void

    .line 7789
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLargeIconVisibility(Z)V

    goto :goto_0
.end method

.method public onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 4
    .param p1, "g"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    const/4 v3, 0x0

    .line 7777
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->willBeRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7780
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get25(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 7781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set15(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    .line 7782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set8(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 7776
    :cond_1
    return-void

    .line 7778
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$78;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
