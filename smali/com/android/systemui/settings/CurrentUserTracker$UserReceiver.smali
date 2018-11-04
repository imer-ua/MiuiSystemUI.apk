.class Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/CurrentUserTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserReceiver"
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mReceiverRegistered:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Lcom/android/systemui/util/function/Consumer;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/util/function/Consumer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->addTracker(Lcom/android/systemui/util/function/Consumer;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Lcom/android/systemui/util/function/Consumer;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/util/function/Consumer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->removeTracker(Lcom/android/systemui/util/function/Consumer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private addTracker(Lcom/android/systemui/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "callback":Lcom/android/systemui/util/function/Consumer;, "Lcom/android/systemui/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    if-nez v1, :cond_1

    .line 102
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    .line 97
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    .line 83
    :cond_0
    sget-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    return-object v0
.end method

.method private notifyUserSwitched(I)V
    .locals 4
    .param p1, "newUserId"    # I

    .prologue
    .line 120
    iget v3, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    if-eq v3, p1, :cond_1

    .line 121
    iput p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/util/function/Consumer<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "consumer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/function/Consumer;

    .line 125
    .local v1, "consumer":Lcom/android/systemui/util/function/Consumer;, "Lcom/android/systemui/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/systemui/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/util/function/Consumer<Ljava/lang/Integer;>;>;"
    .end local v1    # "consumer":Lcom/android/systemui/util/function/Consumer;, "Lcom/android/systemui/util/function/Consumer<Ljava/lang/Integer;>;"
    .end local v2    # "consumer$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private removeTracker(Lcom/android/systemui/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "callback":Lcom/android/systemui/util/function/Consumer;, "Lcom/android/systemui/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string/jumbo v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->notifyUserSwitched(I)V

    .line 87
    :cond_0
    return-void
.end method
