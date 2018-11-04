.class Lcom/android/systemui/statusbar/phone/StatusBar$88;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->onInCallNotificationShow()V
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
    .line 9281
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 9284
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 9286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get14(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onExitCall()V

    .line 9283
    :cond_0
    return-void
.end method
