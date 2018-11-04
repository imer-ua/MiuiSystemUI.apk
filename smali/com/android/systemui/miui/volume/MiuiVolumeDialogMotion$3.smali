.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;
    .param p2, "val$onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    iput-object p2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3$1;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3$1;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$3;Ljava/lang/Runnable;)V

    .line 343
    const-wide/16 v2, 0x5

    .line 335
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void
.end method
