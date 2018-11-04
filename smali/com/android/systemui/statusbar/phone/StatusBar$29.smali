.class Lcom/android/systemui/statusbar/phone/StatusBar$29;
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
    .line 7148
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 7151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set19(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 7153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get26(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setShowNotificationIcon(Z)V

    .line 7154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 7155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap36(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 7150
    return-void

    .line 7152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v0, v2}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIconForUser(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method
