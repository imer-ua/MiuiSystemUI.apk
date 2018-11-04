.class Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 1820
    return-void
.end method
