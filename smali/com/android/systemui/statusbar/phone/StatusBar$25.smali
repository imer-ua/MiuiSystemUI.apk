.class Lcom/android/systemui/statusbar/phone/StatusBar$25;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


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
    .line 7097
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 1

    .prologue
    .line 7100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 7099
    return-void
.end method

.method public onUserSetupChanged()V
    .locals 0

    .prologue
    .line 7109
    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    .prologue
    .line 7105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$25;->onUserSetupChanged()V

    .line 7104
    return-void
.end method
