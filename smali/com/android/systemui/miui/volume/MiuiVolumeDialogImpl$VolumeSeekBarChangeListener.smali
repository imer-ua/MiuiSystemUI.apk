.class final Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private final mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
    .param p2, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    iput-object p2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 1194
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
    .param p2, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1200
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 1201
    :cond_0
    sget-boolean v4, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v6}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v6

    invoke-static {v6}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1202
    const-string/jumbo v6, " onProgressChanged "

    .line 1201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1202
    const-string/jumbo v6, " fromUser="

    .line 1201
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_1
    int-to-float v4, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 1206
    .local v2, "ratio":F
    float-to-double v4, v2

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1207
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eq v4, v0, :cond_2

    .line 1208
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 1209
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1212
    :cond_2
    if-nez p3, :cond_4

    return-void

    .line 1206
    :cond_3
    const/4 v0, 0x0

    .local v0, "iconTint":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 1213
    .end local v0    # "iconTint":Landroid/content/res/ColorStateList;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-lez v4, :cond_5

    .line 1214
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v1, v4, 0x64

    .line 1215
    .local v1, "minProgress":I
    if-ge p2, v1, :cond_5

    .line 1216
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1217
    move p2, v1

    .line 1220
    .end local v1    # "minProgress":I
    :cond_5
    invoke-static {p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap1(Landroid/widget/SeekBar;I)I

    move-result v3

    .line 1221
    .local v3, "userLevel":I
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v4, v3, :cond_6

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    .line 1222
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set18(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;J)J

    .line 1223
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v4

    if-eq v4, v3, :cond_7

    .line 1224
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 1225
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v4, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 1226
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v6}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1226
    const/16 v6, 0x9

    invoke-static {v4, v6, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1199
    :cond_7
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1234
    sget-boolean v0, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z

    .line 1233
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v4, 0x0

    .line 1240
    sget-boolean v1, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopTrackingTouch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v1, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z

    .line 1242
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set18(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;J)J

    .line 1243
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap1(Landroid/widget/SeekBar;I)I

    move-result v0

    .line 1244
    .local v0, "userLevel":I
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0x10

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1245
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eq v1, v0, :cond_1

    .line 1246
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;->mColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1247
    const-wide/16 v4, 0x3e8

    .line 1246
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1239
    :cond_1
    return-void
.end method
