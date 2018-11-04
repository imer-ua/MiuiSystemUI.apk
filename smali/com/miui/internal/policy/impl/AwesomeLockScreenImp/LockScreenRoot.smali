.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.super Lmiui/maml/ScreenElementRoot;
.source "LockScreenRoot.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;
    }
.end annotation


# instance fields
.field private curCategory:Ljava/lang/String;

.field private mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBatteryLevel:Lmiui/maml/data/IndexedVariable;

.field private mBatteryState:Lmiui/maml/data/IndexedVariable;

.field private mBatteryType:Lmiui/maml/data/IndexedVariable;

.field private mFrameRateBatteryFull:F

.field private mFrameRateBatteryLow:F

.field private mFrameRateCharging:F

.field private mInit:Z

.field private mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

.field private mNormalFrameRate:F


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 4
    .param p1, "c"    # Lmiui/maml/ScreenContext;

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-direct {p0, p1}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    .line 95
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "battery_state"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/maml/data/IndexedVariable;

    .line 96
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "battery_type"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryType:Lmiui/maml/data/IndexedVariable;

    .line 97
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "battery_level"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    .line 98
    invoke-virtual {p0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 100
    const-string/jumbo v0, "BitmapProvider"

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenBitmapProviderFactory;

    invoke-direct {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenBitmapProviderFactory;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiui/maml/ScreenContext;->registerObjectFactory(Ljava/lang/String;Lmiui/maml/ObjectFactory;)V

    .line 101
    const-string/jumbo v0, "ActionCommand"

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenActionCommandFactory;

    invoke-direct {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenActionCommandFactory;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiui/maml/ScreenContext;->registerObjectFactory(Ljava/lang/String;Lmiui/maml/ObjectFactory;)V

    .line 92
    return-void
.end method

.method private endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .param p1, "g"    # Lmiui/maml/elements/ElementGroup;
    .param p2, "ele"    # Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .prologue
    .line 288
    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    .line 290
    .local v0, "e":Lmiui/maml/elements/ScreenElement;
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_1

    .line 291
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .end local v0    # "e":Lmiui/maml/elements/ScreenElement;
    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 292
    .restart local v0    # "e":Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 293
    check-cast v0, Lmiui/maml/elements/ElementGroup;

    .end local v0    # "e":Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 287
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 3
    .param p1, "g"    # Lmiui/maml/elements/ElementGroup;
    .param p2, "ele"    # Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .prologue
    .line 276
    if-eqz p1, :cond_2

    .line 277
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    .line 278
    .local v0, "e":Lmiui/maml/elements/ScreenElement;
    instance-of v2, v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v2, :cond_1

    .line 279
    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .end local v0    # "e":Lmiui/maml/elements/ScreenElement;
    invoke-virtual {v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 280
    .restart local v0    # "e":Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v2, v0, Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 281
    check-cast v0, Lmiui/maml/elements/ElementGroup;

    .end local v0    # "e":Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    .line 275
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .param p1, "ele"    # Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 271
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-super {p0}, Lmiui/maml/ScreenElementRoot;->finish()V

    .line 262
    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 264
    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 260
    return-void
.end method

.method public getPasswordMode()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->getPasswordMode()I

    move-result v0

    return v0
.end method

.method public haptic(I)V
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->haptic(I)V

    .line 128
    return-void
.end method

.method public init()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 202
    new-instance v0, Lcom/android/keyguard/ChooseLockSettingsHelper;

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/keyguard/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, "helper":Lcom/android/keyguard/ChooseLockSettingsHelper;
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 206
    const-string/jumbo v8, "pref_key_enable_notification_body"

    .line 207
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    .line 204
    invoke-static {v5, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 211
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    .line 212
    .local v4, "showSmsBodySetting":Z
    :goto_0
    const-string/jumbo v8, "sms_body_preview"

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    if-eqz v4, :cond_5

    move v5, v6

    :goto_1
    int-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 213
    iput-boolean v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 215
    if-nez v4, :cond_0

    .line 217
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;

    const-string/jumbo v5, "content://sms/inbox"

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v8, "body"

    aput-object v8, v6, v7

    invoke-direct {v1, v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 218
    .local v1, "s":Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v5, v1}, Lmiui/maml/data/VariableBinderManager;->acceptVisitor(Lmiui/maml/data/VariableBinderVisitor;)V

    .line 221
    .end local v1    # "s":Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BlockedColumnsSetter;
    :cond_0
    const-string/jumbo v5, "__is_secure"

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->isSecure()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    const-wide/16 v2, 0x0

    .line 225
    .local v2, "operator":D
    sget-boolean v5, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-eqz v5, :cond_6

    .line 226
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 232
    :cond_1
    :goto_2
    const-string/jumbo v5, "operator_customization"

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v5, v6, v2, v3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 234
    invoke-super {p0}, Lmiui/maml/ScreenElementRoot;->init()V

    .line 235
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    if-eqz v5, :cond_2

    .line 236
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p0, v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 237
    iput-object v12, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 200
    :cond_2
    return-void

    .line 211
    .end local v2    # "operator":D
    .end local v4    # "showSmsBodySetting":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "showSmsBodySetting":Z
    goto :goto_0

    .line 204
    .end local v4    # "showSmsBodySetting":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "showSmsBodySetting":Z
    goto :goto_0

    :cond_5
    move v5, v7

    .line 212
    goto :goto_1

    .line 227
    .restart local v2    # "operator":D
    :cond_6
    sget-boolean v5, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v5, :cond_7

    .line 228
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    goto :goto_2

    .line 229
    :cond_7
    sget-boolean v5, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    if-eqz v5, :cond_1

    .line 230
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    goto :goto_2
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    .line 147
    new-instance v0, Lmiui/maml/data/BatteryVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/BatteryVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 148
    new-instance v0, Lmiui/maml/data/VolumeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/VolumeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 145
    return-void
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "para1"    # Ljava/lang/Double;
    .param p3, "para2"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string/jumbo v0, "unlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->unlocked(Landroid/content/Intent;I)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const-string/jumbo v0, "pokewakelock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->pokeWakelock()V

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 4
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 243
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    return v0

    .line 246
    :cond_0
    const-string/jumbo v2, "frameRate"

    iget v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {p1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    .line 247
    const-string/jumbo v2, "frameRateCharging"

    iget v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    .line 248
    const-string/jumbo v2, "frameRateBatteryLow"

    iget v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    .line 249
    const-string/jumbo v2, "frameRateBatteryFull"

    iget v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    invoke-static {p1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    .line 251
    const-string/jumbo v2, "false"

    const-string/jumbo v3, "clearCanvas"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setClearCanvas(Z)V

    .line 253
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fill(Lmiui/maml/data/VariableBinderManager;)V

    .line 255
    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    .line 256
    return v1

    :cond_1
    move v0, v1

    .line 251
    goto :goto_0
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 7
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v6, 0x0

    .line 153
    iget-boolean v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    if-nez v2, :cond_0

    .line 154
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 155
    return-void

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 159
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryType:Lmiui/maml/data/IndexedVariable;

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 161
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 162
    .local v0, "newCategory":Ljava/lang/String;
    const/4 v1, 0x0

    .line 163
    .local v1, "state":I
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    iget v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 166
    const-string/jumbo v0, "BatteryFull"

    .line 167
    const/4 v1, 0x3

    .line 168
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-ne v0, v2, :cond_5

    .line 187
    return-void

    .line 170
    :cond_2
    const-string/jumbo v0, "Charging"

    .line 171
    const/4 v1, 0x1

    .line 172
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_0

    .line 175
    :cond_3
    const-string/jumbo v0, "BatteryLow"

    .line 176
    const/4 v1, 0x2

    .line 177
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_0

    .line 180
    :cond_4
    const-string/jumbo v0, "Normal"

    .line 181
    const/4 v1, 0x0

    .line 182
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    iput v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    goto :goto_0

    .line 188
    :cond_5
    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:F

    invoke-virtual {p0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestFramerate(F)V

    .line 189
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestUpdate()V

    .line 190
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 191
    const-string/jumbo v2, "BatteryFull"

    invoke-virtual {p0, v2, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    .line 192
    const-string/jumbo v2, "Charging"

    invoke-virtual {p0, v2, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    .line 193
    const-string/jumbo v2, "BatteryLow"

    invoke-virtual {p0, v2, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    .line 194
    const-string/jumbo v2, "Normal"

    invoke-virtual {p0, v2, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    .line 195
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->showCategory(Ljava/lang/String;Z)V

    .line 196
    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0, v2, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->unlocked(Landroid/content/Intent;I)V

    .line 112
    return v1

    .line 115
    :cond_1
    invoke-super {p0, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 1
    .param p1, "e"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->pokeWakelock()V

    .line 300
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->pokeWakelock()V

    .line 118
    return-void
.end method

.method public setLockscreenCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;)V
    .locals 0
    .param p1, "unlockerCallback"    # Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 104
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->isSoundEnable()Z

    move-result v0

    return v0
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .param p1, "ele"    # Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-direct {p0, v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lmiui/maml/elements/ElementGroup;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 267
    return-void
.end method

.method public unlockVerify(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "delay"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->unlockVerify(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;->unlocked(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method
