.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$4;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$4;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 259
    .local v0, "action":I
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$4;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 260
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    move v1, v2

    .line 259
    :goto_0
    invoke-static {v3, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z

    .line 261
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$4;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-virtual {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 262
    return v2

    :cond_0
    move v1, v2

    .line 259
    goto :goto_0

    .line 260
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
