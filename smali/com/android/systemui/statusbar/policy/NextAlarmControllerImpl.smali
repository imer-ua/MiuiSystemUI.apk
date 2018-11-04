.class public Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NextAlarmControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSystemAlarm:Z

.field private mHasThirdPartyAlarm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 41
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 42
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->fireAlarmChanged()V

    .line 40
    return-void
.end method

.method private fireAlarmChanged()V
    .locals 4

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 78
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasSystemAlarm:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasThirdPartyAlarm:Z

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Z)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasSystemAlarm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasThirdPartyAlarm:Z

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;->onNextAlarmChanged(Z)V

    .line 53
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cb"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .end local p1    # "cb":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "NextAlarmController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "  mHasNextAlarm="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasSystemAlarm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasThirdPartyAlarm:Z

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 48
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const-string/jumbo v3, "alarmSet"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 66
    .local v1, "alarmSet":Z
    const-string/jumbo v3, "alarmSystem"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 67
    .local v2, "alarmSystem":Z
    if-eqz v2, :cond_1

    .line 68
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasSystemAlarm:Z

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->fireAlarmChanged()V

    .line 62
    .end local v1    # "alarmSet":Z
    .end local v2    # "alarmSystem":Z
    :cond_0
    return-void

    .line 70
    .restart local v1    # "alarmSet":Z
    .restart local v2    # "alarmSystem":Z
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mHasThirdPartyAlarm:Z

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cb"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .end local p1    # "cb":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    return-void
.end method
