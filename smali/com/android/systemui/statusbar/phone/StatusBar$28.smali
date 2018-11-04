.class Lcom/android/systemui/statusbar/phone/StatusBar$28;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 7123
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 7126
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    .line 7127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v0, v2}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIconForUser(Landroid/content/Context;I)Z

    move-result v0

    .line 7126
    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set18(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 7128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get27(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get34(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setShowNotificationIcon(Z)V

    .line 7129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 7130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap35(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 7125
    return-void

    .line 7126
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
