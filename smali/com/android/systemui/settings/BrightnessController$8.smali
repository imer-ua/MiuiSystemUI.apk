.class Lcom/android/systemui/settings/BrightnessController$8;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessController;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;

.field final synthetic val$brightness:I


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;
    .param p2, "val$brightness"    # I

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iput p2, p0, Lcom/android/systemui/settings/BrightnessController$8;->val$brightness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$8;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 550
    const-string/jumbo v1, "screen_brightness"

    .line 551
    iget v2, p0, Lcom/android/systemui/settings/BrightnessController$8;->val$brightness:I

    .line 552
    const/4 v3, -0x2

    .line 548
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 547
    return-void
.end method
