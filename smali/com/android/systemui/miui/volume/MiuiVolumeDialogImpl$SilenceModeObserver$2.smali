.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver$2;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver$2;->this$1:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1479
    invoke-static {}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "showGuideDialog go to set."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const-string/jumbo v2, "com.android.settings/com.android.settings.Settings$MiuiSilentModeAcivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1481
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1482
    return-void

    .line 1485
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1486
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1487
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1488
    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 1489
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1478
    return-void
.end method
