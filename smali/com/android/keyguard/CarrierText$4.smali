.class Lcom/android/keyguard/CarrierText$4;
.super Landroid/database/ContentObserver;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/CarrierText;->registerObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierText;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/CarrierText;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/keyguard/CarrierText$4;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText$4;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->-get4(Lcom/android/keyguard/CarrierText;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/keyguard/CarrierText$4;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v1}, Lcom/android/keyguard/CarrierText;->-get1(Lcom/android/keyguard/CarrierText;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CarrierText$4;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->-get0(Lcom/android/keyguard/CarrierText;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status_bar_custom_carrier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    const/4 v4, -0x2

    .line 183
    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText$4;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText;->updateCarrier()V

    .line 180
    return-void
.end method
