.class Lcom/android/systemui/statusbar/phone/StatusBar$67;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "val$runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 5462
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$67;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 5464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 5466
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$67$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$67;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$67$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$67;Ljava/lang/Runnable;)V

    .line 5470
    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    .line 5465
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 5463
    return-void
.end method
