.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
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
    .line 915
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "showA11yStream"    # Ljava/lang/Boolean;

    .prologue
    .line 988
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 989
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z

    .line 990
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    .line 987
    return-void

    .line 988
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "show":Z
    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 5

    .prologue
    .line 949
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 950
    .local v1, "newConfig":Landroid/content/res/Configuration;
    iget v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 951
    .local v0, "density":I
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 952
    .local v2, "orientation":I
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 953
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->dismiss()V

    .line 954
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->destory()V

    .line 955
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    .line 956
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->init()V

    .line 957
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I

    .line 958
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I

    .line 962
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I

    .line 964
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 948
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->dismissH(I)V

    .line 928
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setLayoutDirection(I)V

    .line 943
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->dismissH(I)V

    .line 933
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V

    .line 923
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V

    .line 982
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 975
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 969
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 968
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 938
    return-void
.end method

.method public onVolumeChanged(IZ)V
    .locals 1
    .param p1, "stream"    # I
    .param p2, "fromKey"    # Z

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;IZ)V

    .line 918
    return-void
.end method
