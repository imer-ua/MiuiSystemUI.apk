.class Lcom/android/systemui/statusbar/phone/StatusBar$56;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
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
    .line 2329
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$56;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "isInSuspectMode"    # Z

    .prologue
    .line 2332
    if-nez p1, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$56;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap39(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 2337
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$56;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterSeneorsForKeyguard()V

    .line 2331
    return-void

    .line 2335
    :cond_0
    const-string/jumbo v0, "miui_keyguard"

    const-string/jumbo v1, "not wake up for notification because in suspect mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method