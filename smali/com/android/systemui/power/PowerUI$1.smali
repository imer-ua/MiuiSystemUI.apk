.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v12, "my.settings.BAT_PREF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->setPreferences()V

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->setBattaryLevel()V

    :cond_0
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 164
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    .line 165
    .local v4, "oldBatteryLevel":I
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v13, "level"

    const/16 v14, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-set0(Lcom/android/systemui/power/PowerUI;I)I

    if-ne v13, v14, :cond_1

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->playFullBatterySound()V

    .line 166
    :cond_1
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    .line 167
    .local v5, "oldBatteryStatus":I
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v13, "status"

    .line 168
    const/4 v14, 0x1

    .line 167
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-set1(Lcom/android/systemui/power/PowerUI;I)I

    .line 169
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    .line 170
    .local v8, "oldPlugType":I
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v13, "plugged"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-set3(Lcom/android/systemui/power/PowerUI;I)I

    .line 171
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v7

    .line 172
    .local v7, "oldInvalidCharger":I
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v13, "invalid_charger"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-set2(Lcom/android/systemui/power/PowerUI;I)I

    .line 174
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    if-eqz v12, :cond_2

    const/4 v10, 0x1

    .line 175
    .local v10, "plugged":Z
    :goto_0
    if-eqz v8, :cond_3

    const/4 v9, 0x1

    .line 177
    .local v9, "oldPlugged":Z
    :goto_1
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12, v4}, Lcom/android/systemui/power/PowerUI;->-wrap2(Lcom/android/systemui/power/PowerUI;I)I

    move-result v6

    .line 178
    .local v6, "oldBucket":I
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v13, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/systemui/power/PowerUI;->-wrap2(Lcom/android/systemui/power/PowerUI;I)I

    move-result v2

    .line 180
    .local v2, "bucket":I
    const-string/jumbo v12, "temperature"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 183
    .local v11, "temperature":I
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v12, v12, Lcom/android/systemui/power/PowerUI;->mNeedShowLowTemperatureDialog:Z

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mLowTemperatureDialog:Landroid/app/AlertDialog;

    if-nez v12, :cond_4

    .line 184
    const/16 v12, -0x50

    if-gt v11, v12, :cond_4

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    const/16 v13, 0x32

    if-gt v12, v13, :cond_4

    .line 185
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->showLowTemperatureDialog()V

    .line 186
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/systemui/power/PowerUI;->mNeedShowLowTemperatureDialog:Z

    .line 187
    return-void

    .line 174
    .end local v2    # "bucket":I
    .end local v6    # "oldBucket":I
    .end local v9    # "oldPlugged":Z
    .end local v10    # "plugged":Z
    .end local v11    # "temperature":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "plugged":Z
    goto :goto_0

    .line 175
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "oldPlugged":Z
    goto :goto_1

    .line 188
    .restart local v2    # "bucket":I
    .restart local v6    # "oldBucket":I
    .restart local v11    # "temperature":I
    :cond_4
    if-ltz v11, :cond_6

    .line 189
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/systemui/power/PowerUI;->mNeedShowLowTemperatureDialog:Z

    .line 190
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->dismissLowTemperatureDialog()V

    .line 196
    :cond_5
    if-nez v7, :cond_7

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    if-eqz v12, :cond_7

    .line 197
    const-string/jumbo v12, "PowerUI"

    const-string/jumbo v13, "showing invalid charger warning"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->showInvalidChargerDialog()V

    .line 199
    return-void

    .line 191
    :cond_6
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mLowTemperatureDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_5

    .line 193
    return-void

    .line 200
    :cond_7
    if-eqz v7, :cond_f

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    if-nez v12, :cond_f

    .line 201
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    .line 207
    :cond_8
    const/4 v3, 0x1

    .line 208
    .local v3, "needPlayDisconnctSound":Z
    if-nez v10, :cond_10

    .line 209
    if-lt v2, v6, :cond_9

    .line 208
    if-eqz v9, :cond_10

    .line 210
    :cond_9
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_10

    .line 211
    if-gez v2, :cond_10

    .line 212
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 213
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-wrap9(Lcom/android/systemui/power/PowerUI;)V

    .line 216
    if-ne v2, v6, :cond_a

    if-eqz v9, :cond_b

    .line 217
    :cond_a
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 219
    const/4 v3, 0x0

    .line 229
    :cond_b
    :goto_2
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    if-eq v12, v8, :cond_c

    .line 230
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v13, "set_haptic_feedback"

    invoke-static {v13, v12}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v13

    if-ltz v13, :cond_c

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get4(Lcom/android/systemui/power/PowerUI;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    .line 232
    :cond_c
    if-eqz v10, :cond_d

    if-eqz v9, :cond_13

    .line 235
    :cond_d
    if-eqz v3, :cond_e

    if-eqz v10, :cond_14

    .line 161
    .end local v2    # "bucket":I
    .end local v3    # "needPlayDisconnctSound":Z
    .end local v4    # "oldBatteryLevel":I
    .end local v5    # "oldBatteryStatus":I
    .end local v6    # "oldBucket":I
    .end local v7    # "oldInvalidCharger":I
    .end local v8    # "oldPlugType":I
    .end local v9    # "oldPlugged":Z
    .end local v10    # "plugged":Z
    .end local v11    # "temperature":I
    :cond_e
    :goto_3
    return-void

    .line 202
    .restart local v2    # "bucket":I
    .restart local v4    # "oldBatteryLevel":I
    .restart local v5    # "oldBatteryStatus":I
    .restart local v6    # "oldBucket":I
    .restart local v7    # "oldInvalidCharger":I
    .restart local v8    # "oldPlugType":I
    .restart local v9    # "oldPlugged":Z
    .restart local v10    # "plugged":Z
    .restart local v11    # "temperature":I
    :cond_f
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_8

    .line 204
    return-void

    .line 221
    .restart local v3    # "needPlayDisconnctSound":Z
    :cond_10
    if-nez v10, :cond_11

    if-le v2, v6, :cond_12

    if-lez v2, :cond_12

    .line 222
    :cond_11
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 223
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-wrap4(Lcom/android/systemui/power/PowerUI;)V

    .line 224
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-wrap5(Lcom/android/systemui/power/PowerUI;)V

    goto :goto_2

    .line 225
    :cond_12
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v12, :cond_b

    .line 226
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v12}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto :goto_2

    .line 233
    :cond_13
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 235
    :cond_14
    if-eqz v9, :cond_e

    .line 236
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 240
    .end local v2    # "bucket":I
    .end local v3    # "needPlayDisconnctSound":Z
    .end local v4    # "oldBatteryLevel":I
    .end local v5    # "oldBatteryStatus":I
    .end local v6    # "oldBucket":I
    .end local v7    # "oldInvalidCharger":I
    .end local v8    # "oldPlugType":I
    .end local v9    # "oldPlugged":Z
    .end local v10    # "plugged":Z
    .end local v11    # "temperature":I
    :cond_15
    const-string/jumbo v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown intent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
