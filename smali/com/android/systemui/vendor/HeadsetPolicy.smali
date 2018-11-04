.class public Lcom/android/systemui/vendor/HeadsetPolicy;
.super Ljava/lang/Object;
.source "HeadsetPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vendor/HeadsetPolicy$1;
    }
.end annotation


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/vendor/HeadsetPolicy;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/vendor/HeadsetPolicy;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/systemui/vendor/HeadsetPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vendor/HeadsetPolicy$1;-><init>(Lcom/android/systemui/vendor/HeadsetPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/vendor/HeadsetPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    new-instance v5, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .local v5, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/android/systemui/vendor/HeadsetPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 23
    const/4 v4, 0x0

    move-object v0, p1

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 25
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/vendor/HeadsetPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 18
    return-void
.end method
