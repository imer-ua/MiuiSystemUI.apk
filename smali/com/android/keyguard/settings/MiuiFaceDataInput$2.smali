.class Lcom/android/keyguard/settings/MiuiFaceDataInput$2;
.super Landroid/database/ContentObserver;
.source "MiuiFaceDataInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/settings/MiuiFaceDataInput;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get2(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sc_status"

    .line 423
    const/4 v3, -0x2

    .line 422
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-set2(Lcom/android/keyguard/settings/MiuiFaceDataInput;I)I

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get9(Lcom/android/keyguard/settings/MiuiFaceDataInput;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get8(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get9(Lcom/android/keyguard/settings/MiuiFaceDataInput;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get8(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    :cond_1
    :goto_1
    return-void

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get7(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-wrap0(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    goto :goto_0

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get10(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get4(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x910047c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
