.class Lcom/android/systemui/miui/statusbar/WifiLabelText$3;
.super Landroid/database/ContentObserver;
.source "WifiLabelText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/statusbar/WifiLabelText;->registerObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/WifiLabelText;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/statusbar/WifiLabelText;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$3;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$3;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$3;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->-get0(Lcom/android/systemui/miui/statusbar/WifiLabelText;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 99
    const-string/jumbo v2, "status_bar_custom_carrier0"

    .line 100
    const/4 v3, -0x2

    .line 98
    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->-set0(Lcom/android/systemui/miui/statusbar/WifiLabelText;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/WifiLabelText$3;->this$0:Lcom/android/systemui/miui/statusbar/WifiLabelText;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/WifiLabelText;->updateCarrier()V

    .line 96
    return-void
.end method
