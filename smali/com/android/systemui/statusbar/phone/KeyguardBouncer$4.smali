.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v0, "band"

    invoke-static {v0}, Lcom/android/keyguard/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    .line 158
    :cond_0
    return-void
.end method
