.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3$1;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;
    .param p2, "val$onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3$1;->this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;

    iput-object p2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3$1;->this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;

    iget-object v0, v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;->onDismiss()V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3$1;->this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;

    iget-object v0, v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-wrap1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;Z)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3$1;->this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;

    iget-object v0, v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-wrap2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;F)V

    .line 337
    return-void
.end method
