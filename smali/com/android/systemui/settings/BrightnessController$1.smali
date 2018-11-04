.class Lcom/android/systemui/settings/BrightnessController$1;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$1;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$1;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->-wrap0(Lcom/android/systemui/settings/BrightnessController;Z)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$1;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->-wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$1;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get4(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->startObserving()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$1;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get11(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$1;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    return-void
.end method
