.class Lcom/android/systemui/statusbar/phone/StatusBar$15;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1881
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1882
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1883
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get35(Lcom/android/systemui/statusbar/phone/StatusBar;)Lmiui/app/ToggleManager;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lmiui/app/ToggleManager;->performToggle(I)Z

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1884
    :cond_1
    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1885
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get35(Lcom/android/systemui/statusbar/phone/StatusBar;)Lmiui/app/ToggleManager;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lmiui/app/ToggleManager;->performToggle(I)Z

    goto :goto_0

    .line 1886
    :cond_2
    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1887
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get35(Lcom/android/systemui/statusbar/phone/StatusBar;)Lmiui/app/ToggleManager;

    move-result-object v1

    const-string/jumbo v2, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/app/ToggleManager;->performToggle(I)Z

    goto :goto_0
.end method
