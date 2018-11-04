.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;
.super Ljava/lang/Object;
.source "FlashlightControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->tryInitCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "FlashlightController"

    const-string/jumbo v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    return-void
.end method
