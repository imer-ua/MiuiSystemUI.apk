.class Lcom/android/systemui/TorchServiceView$1;
.super Ljava/lang/Object;
.source "TorchServiceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TorchServiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TorchServiceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/TorchServiceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/TorchServiceView;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    iget-object v4, v0, Lcom/android/systemui/TorchServiceView;->mContext:Landroid/content/Context;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    iget-object v1, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v1}, Lcom/android/systemui/TorchServiceView;->-get5(Lcom/android/systemui/TorchServiceView;)Ljava/lang/Runnable;

    move-result-object v1

    const-string v2, "flash_time"

    invoke-static {v2, v4}, Landroid/preference/MiuiCoreSettingsPreference;->gKT(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0xbb8

    goto :goto_0

    :cond_0
    int-to-long v2, v2

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/TorchServiceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    iget-object v1, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v1}, Lcom/android/systemui/TorchServiceView;->-get0(Lcom/android/systemui/TorchServiceView;)Ljava/lang/Runnable;

    move-result-object v1

    const-string v2, "flash_time_off"

    invoke-static {v2, v4}, Landroid/preference/MiuiCoreSettingsPreference;->gKT(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0xc8

    goto :goto_1

    :cond_1
    int-to-long v2, v2

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/TorchServiceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    iget-object v0, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    iget-object v1, p0, Lcom/android/systemui/TorchServiceView$1;->this$0:Lcom/android/systemui/TorchServiceView;

    invoke-static {v1}, Lcom/android/systemui/TorchServiceView;->-get3(Lcom/android/systemui/TorchServiceView;)Ljava/lang/Runnable;

    move-result-object v1

    const-string v2, "flash_time_on"

    invoke-static {v2, v4}, Landroid/preference/MiuiCoreSettingsPreference;->gKT(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x3e8

    goto :goto_2

    :cond_2
    int-to-long v2, v2

    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/TorchServiceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method
