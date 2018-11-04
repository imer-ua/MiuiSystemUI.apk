.class Lcom/android/systemui/statusbar/phone/StatusBar$81;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 7871
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 7875
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    .line 7876
    return v3

    .line 7878
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7879
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "Trying to show notification guts, but not attached to window"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7880
    return v3

    :cond_1
    move-object v0, p1

    .line 7883
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 7884
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7885
    return v3

    .line 7888
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isExpandingEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7893
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isExpandingEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7894
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap3(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result v1

    return v1

    .line 7889
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 7890
    const/4 v1, 0x1

    return v1

    .line 7897
    :cond_5
    return v3
.end method
