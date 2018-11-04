.class Lcom/android/systemui/statusbar/phone/StatusBar$69$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$69;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$69;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$69;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$69;

    .prologue
    .line 5757
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$69;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$69;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap18(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5759
    return-void
.end method
