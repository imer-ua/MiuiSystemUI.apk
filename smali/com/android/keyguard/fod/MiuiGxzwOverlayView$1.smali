.class Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;
.super Landroid/os/AsyncTask;
.source "MiuiGxzwOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addViewAndUpdateAlpha()V
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
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Float;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

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
    .line 231
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Float;)V
    .locals 2
    .param p1, "alpha"    # Ljava/lang/Float;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->-set0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;F)F

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->-get1(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->-get0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V

    .line 236
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "alpha"    # Ljava/lang/Object;

    .prologue
    .line 236
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "alpha":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->onPostExecute(Ljava/lang/Float;)V

    return-void
.end method
