.class Lcom/android/systemui/statusbar/phone/StatusBar$74$1$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$74$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/StatusBar$74$1;

.field final synthetic val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$74$1;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/phone/StatusBar$74$1;
    .param p2, "val$scrollLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 6510
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$74$1$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$74$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$74$1$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$74$1$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$74$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$74$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$74;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get30(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 6514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$74$1$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$74$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$74$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$74;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$74;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set16(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)Landroid/view/View;

    .line 6515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$74$1$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    .line 6512
    return-void
.end method
