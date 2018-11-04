.class Lcom/android/systemui/statusbar/phone/StatusBar$66$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$66;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$66;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$66;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$66;
    .param p2, "val$runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 5442
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$66;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$66;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$66;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$66$1;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 5443
    return-void
.end method
