.class Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;
.super Landroid/os/AsyncTask;
.source "MiuiGxzwOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;->this$1:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Float;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;->this$1:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    iget-object v0, v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 427
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Float;)V
    .locals 2
    .param p1, "alpha"    # Ljava/lang/Float;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;->this$1:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    iget-object v0, v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->-set0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;F)F

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;->this$1:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    iget-object v0, v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->-wrap2(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;F)V

    .line 432
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "alpha"    # Ljava/lang/Object;

    .prologue
    .line 432
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "alpha":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver$1;->onPostExecute(Ljava/lang/Float;)V

    return-void
.end method
