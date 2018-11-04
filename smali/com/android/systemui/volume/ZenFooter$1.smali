.class Lcom/android/systemui/volume/ZenFooter$1;
.super Ljava/lang/Object;
.source "ZenFooter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/ZenFooter;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsChanged([Landroid/service/notification/Condition;)V
    .locals 0
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 175
    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenFooter;->-wrap1(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V

    .line 195
    return-void
.end method

.method public onEffectsSupressorChanged()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 191
    return-void
.end method

.method public onNextAlarmChanged()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onZenAvailableChanged(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public onZenChanged(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenFooter;->-wrap2(Lcom/android/systemui/volume/ZenFooter;I)V

    .line 170
    return-void
.end method
