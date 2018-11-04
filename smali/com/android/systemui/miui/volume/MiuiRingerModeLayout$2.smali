.class Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$2;
.super Ljava/lang/Object;
.source "MiuiRingerModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$2;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    .line 93
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$2;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get1(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$2;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get3(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "RingerModeLayout"

    const-string/jumbo v1, "setSilenceMode mTransitionRunning is true."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 97
    :cond_0
    const-string/jumbo v2, "systemui_volume_dialog"

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$2;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get1(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string/jumbo v0, "volume_click_silent_at_secondary_page"

    .line 97
    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$2;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$2;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-get2(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-static {v2, v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-wrap2(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;I)V

    .line 92
    return-void

    .line 99
    :cond_1
    const-string/jumbo v0, "volume_click_silent"

    goto :goto_0

    :cond_2
    move v0, v1

    .line 100
    goto :goto_1
.end method
