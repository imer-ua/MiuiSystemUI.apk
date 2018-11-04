.class Lcom/android/systemui/statusbar/phone/StatusBar$31;
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
    .line 7158
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 7161
    sget-boolean v2, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v2, :cond_2

    const/4 v1, -0x1

    .line 7163
    .local v1, "userFold":I
    :goto_0
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 7164
    .local v0, "lastFold":I
    :goto_1
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_1

    .line 7165
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->userFold(I)V

    .line 7166
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7167
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap14(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 7171
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 7160
    :cond_1
    return-void

    .line 7162
    .end local v0    # "lastFold":I
    .end local v1    # "userFold":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_fold"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "userFold":I
    goto :goto_0

    .line 7163
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "lastFold":I
    goto :goto_1

    .line 7169
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeFoldView()V

    goto :goto_2
.end method
