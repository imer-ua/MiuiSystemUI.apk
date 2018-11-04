.class Lcom/android/systemui/statusbar/phone/StatusBar$65$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$65;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$65;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$65;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$65;

    .prologue
    .line 4890
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$65$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$65;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4893
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$65$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$65;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$65;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    .line 4892
    return-void
.end method
