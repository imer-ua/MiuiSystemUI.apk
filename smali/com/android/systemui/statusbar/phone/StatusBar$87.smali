.class Lcom/android/systemui/statusbar/phone/StatusBar$87;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$intent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "val$intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 8495
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8498
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$87$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$87$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$87;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$87$1;->start()V

    .line 8525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    .line 8527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    .line 8529
    return v2
.end method
