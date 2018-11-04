.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;
.super Landroid/database/ContentObserver;
.source "FlashlightControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 73
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "torch_state"

    .line 72
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V

    .line 71
    return-void

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0
.end method
