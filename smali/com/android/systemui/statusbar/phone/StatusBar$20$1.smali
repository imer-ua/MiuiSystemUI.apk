.class Lcom/android/systemui/statusbar/phone/StatusBar$20$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$20;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$20;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$20;

    .prologue
    .line 5023
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5026
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$20;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    .line 5025
    return-void
.end method
