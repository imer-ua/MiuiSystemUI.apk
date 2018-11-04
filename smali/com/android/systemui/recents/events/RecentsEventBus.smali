.class public Lcom/android/systemui/recents/events/RecentsEventBus;
.super Landroid/content/BroadcastReceiver;
.source "RecentsEventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/events/RecentsEventBus$1;,
        Lcom/android/systemui/recents/events/RecentsEventBus$AnimatedEvent;,
        Lcom/android/systemui/recents/events/RecentsEventBus$Event;,
        Lcom/android/systemui/recents/events/RecentsEventBus$InterprocessEvent;,
        Lcom/android/systemui/recents/events/RecentsEventBus$ReusableEvent;
    }
.end annotation


# static fields
.field public static DEBUG_TRACE_ALL:Z

.field private static final EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sDefaultBus:Lcom/android/systemui/recents/events/RecentsEventBus;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCallCount:I

.field private mCallDurationMicros:J

.field private mEventTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/recents/events/RecentsEventBus$Event;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInterprocessEventNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/recents/events/RecentsEventBus$InterprocessEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriberTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/events/EventHandlerMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscribers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/events/Subscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/recents/events/RecentsEventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    .locals 0
    .param p1, "eventHandler"    # Lcom/android/systemui/recents/events/EventHandler;
    .param p2, "event"    # Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/events/RecentsEventBus;->processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    .line 373
    new-instance v0, Lcom/android/systemui/recents/events/RecentsEventBus$1;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/RecentsEventBus$1;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/events/RecentsEventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    .line 387
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/events/RecentsEventBus;->sLock:Ljava/lang/Object;

    .line 207
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mEventTypeMap:Ljava/util/HashMap;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscribers:Ljava/util/ArrayList;

    .line 430
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mHandler:Landroid/os/Handler;

    .line 429
    return-void
.end method

.method private findRegisteredSubscriber(Ljava/lang/Object;Z)Z
    .locals 4
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "removeFoundSubscriber"    # Z

    .prologue
    const/4 v3, 0x0

    .line 930
    iget-object v2, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 931
    iget-object v2, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/events/Subscriber;

    .line 932
    .local v1, "sub":Lcom/android/systemui/recents/events/Subscriber;
    invoke-virtual {v1}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 933
    if-eqz p2, :cond_0

    .line 934
    iget-object v2, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 936
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 930
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 939
    .end local v1    # "sub":Lcom/android/systemui/recents/events/Subscriber;
    :cond_2
    return v3
.end method

.method public static getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;
    .locals 3

    .prologue
    .line 437
    sget-object v0, Lcom/android/systemui/recents/events/RecentsEventBus;->sDefaultBus:Lcom/android/systemui/recents/events/RecentsEventBus;

    if-nez v0, :cond_2

    .line 438
    sget-object v1, Lcom/android/systemui/recents/events/RecentsEventBus;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/events/RecentsEventBus;->sDefaultBus:Lcom/android/systemui/recents/events/RecentsEventBus;

    if-nez v0, :cond_1

    .line 440
    sget-boolean v0, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v0, :cond_0

    .line 441
    const-string/jumbo v0, "New EventBus"

    invoke-static {v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 443
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/events/RecentsEventBus;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/recents/events/RecentsEventBus;->sDefaultBus:Lcom/android/systemui/recents/events/RecentsEventBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 446
    :cond_2
    sget-object v0, Lcom/android/systemui/recents/events/RecentsEventBus;->sDefaultBus:Lcom/android/systemui/recents/events/RecentsEventBus;

    return-object v0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p3, "isInterprocessEventOut"    # Landroid/util/MutableBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/util/MutableBoolean;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 947
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 948
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 949
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    .line 948
    if-eqz v1, :cond_4

    .line 950
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 948
    if-eqz v1, :cond_4

    .line 951
    array-length v1, p2

    if-ne v1, v4, :cond_4

    .line 952
    const-class v1, Lcom/android/systemui/recents/events/RecentsEventBus$InterprocessEvent;

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onInterprocessBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 952
    if-eqz v1, :cond_0

    .line 954
    iput-boolean v4, p3, Landroid/util/MutableBoolean;->value:Z

    .line 955
    return v4

    .line 956
    :cond_0
    const-class v1, Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 957
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 956
    if-eqz v1, :cond_1

    .line 958
    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z

    .line 959
    return v4

    .line 961
    :cond_1
    sget-boolean v1, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v1, :cond_2

    .line 962
    const-class v1, Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method take an Event-based parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 981
    :cond_2
    :goto_0
    return v3

    .line 964
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onInterprocessBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 965
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method start with method prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    goto :goto_0

    .line 971
    :cond_4
    sget-boolean v1, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v1, :cond_2

    .line 972
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method to be public: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method to be final: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method to return null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static logWithPid(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 995
    const-string/jumbo v0, "EventBus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return-void
.end method

.method private processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    .locals 12
    .param p1, "eventHandler"    # Lcom/android/systemui/recents/events/EventHandler;
    .param p2, "event"    # Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    .prologue
    .line 867
    iget-boolean v5, p2, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->cancelled:Z

    if-eqz v5, :cond_2

    .line 868
    iget-boolean v5, p2, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->trace:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v5, :cond_1

    .line 869
    :cond_0
    const-string/jumbo v5, "Event dispatch cancelled"

    invoke-static {v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 871
    :cond_1
    return-void

    .line 875
    :cond_2
    :try_start_0
    iget-boolean v5, p2, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->trace:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v5, :cond_4

    .line 876
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " -> "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventHandler;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 878
    :cond_4
    iget-object v5, p1, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v5}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v4

    .line 879
    .local v4, "sub":Ljava/lang/Object;
    if-eqz v4, :cond_7

    .line 880
    const-wide/16 v6, 0x0

    .line 881
    .local v6, "t1":J
    sget-boolean v5, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v5, :cond_5

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v6

    .line 884
    :cond_5
    iget-object v5, p1, Lcom/android/systemui/recents/events/EventHandler;->method:Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-virtual {v5, v4, p2}, Lcom/android/systemui/recents/events/EventHandlerMethod;->invoke(Ljava/lang/Object;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 885
    sget-boolean v5, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v5, :cond_6

    .line 886
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 887
    .local v0, "duration":J
    iget-wide v8, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mCallDurationMicros:J

    add-long/2addr v8, v0

    iput-wide v8, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mCallDurationMicros:J

    .line 888
    iget v5, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mCallCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mCallCount:I

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/android/systemui/recents/events/EventHandler;->method:Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-virtual {v8}, Lcom/android/systemui/recents/events/EventHandlerMethod;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " duration: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 890
    const-string/jumbo v8, " microseconds, avg: "

    .line 889
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 890
    iget-wide v8, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mCallDurationMicros:J

    iget v10, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mCallCount:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    .line 889
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 865
    .end local v0    # "duration":J
    .end local v4    # "sub":Ljava/lang/Object;
    .end local v6    # "t1":J
    :cond_6
    :goto_0
    return-void

    .line 893
    .restart local v4    # "sub":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v5, "EventBus"

    const-string/jumbo v8, "Failed to deliver event to null subscriber"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 895
    .end local v4    # "sub":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 896
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "EventBus"

    const-string/jumbo v8, "Failed to invoke method"

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 897
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 898
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private queueEvent(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    .prologue
    .line 818
    iget-object v5, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 819
    .local v2, "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    if-nez v2, :cond_0

    .line 820
    return-void

    .line 824
    :cond_0
    const/4 v3, 0x0

    .line 825
    .local v3, "hasPostedEvent":Z
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->onPreDispatch()V

    .line 829
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 830
    .restart local v2    # "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 831
    .local v1, "eventHandlerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 832
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/events/EventHandler;

    .line 833
    .local v0, "eventHandler":Lcom/android/systemui/recents/events/EventHandler;
    iget-object v5, v0, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v5}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 834
    iget-boolean v5, p1, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->requiresPost:Z

    if-eqz v5, :cond_2

    .line 835
    iget-object v5, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/recents/events/RecentsEventBus$4;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/systemui/recents/events/RecentsEventBus$4;-><init>(Lcom/android/systemui/recents/events/RecentsEventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 841
    const/4 v3, 0x1

    .line 831
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 843
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/events/RecentsEventBus;->processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_1

    .line 849
    .end local v0    # "eventHandler":Lcom/android/systemui/recents/events/EventHandler;
    :cond_3
    if-eqz v3, :cond_4

    .line 850
    iget-object v5, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/recents/events/RecentsEventBus$5;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/recents/events/RecentsEventBus$5;-><init>(Lcom/android/systemui/recents/events/RecentsEventBus;Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 817
    :goto_2
    return-void

    .line 857
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->onPostDispatch()V

    goto :goto_2
.end method

.method private registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V
    .locals 26
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I
    .param p3, "hasInterprocessEventsChangedOut"    # Landroid/util/MutableBoolean;

    .prologue
    .line 724
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 725
    .local v4, "callingThreadId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/RecentsEventBus;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getId()J

    move-result-wide v22

    cmp-long v19, v4, v22

    if-eqz v19, :cond_0

    .line 726
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Can not register() a subscriber from a non-main thread."

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 730
    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 731
    return-void

    .line 734
    :cond_1
    const-wide/16 v20, 0x0

    .line 735
    .local v20, "t1":J
    sget-boolean v19, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v19, :cond_2

    .line 736
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v20

    .line 737
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "registerSubscriber("

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, ")"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 739
    :cond_2
    new-instance v16, Lcom/android/systemui/recents/events/Subscriber;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/events/Subscriber;-><init>(Ljava/lang/Object;J)V

    .line 740
    .local v16, "sub":Lcom/android/systemui/recents/events/Subscriber;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    .line 741
    .local v18, "subscriberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 742
    .local v17, "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    if-eqz v17, :cond_5

    .line 743
    sget-boolean v19, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v19, :cond_3

    .line 744
    const-string/jumbo v19, "Subscriber class type already registered"

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 749
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "method$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/events/EventHandlerMethod;

    .line 750
    .local v12, "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/RecentsEventBus;->mEventTypeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 751
    .local v8, "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    new-instance v19, Lcom/android/systemui/recents/events/EventHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lcom/android/systemui/recents/events/EventHandler;-><init>(Lcom/android/systemui/recents/events/Subscriber;Lcom/android/systemui/recents/events/EventHandlerMethod;I)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/events/RecentsEventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    goto :goto_0

    .line 754
    .end local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v12    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscribers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    return-void

    .line 757
    .end local v13    # "method$iterator":Ljava/util/Iterator;
    :cond_5
    sget-boolean v19, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v19, :cond_6

    .line 758
    const-string/jumbo v19, "Subscriber class type requires registration"

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 763
    :cond_6
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .restart local v17    # "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscribers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    new-instance v10, Landroid/util/MutableBoolean;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 770
    .local v10, "isInterprocessEvent":Landroid/util/MutableBoolean;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 771
    .local v14, "methods":[Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v22, v0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v11, v14, v19

    .line 772
    .local v11, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    .line 773
    .local v15, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v10, Landroid/util/MutableBoolean;->value:Z

    .line 774
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15, v10}, Lcom/android/systemui/recents/events/RecentsEventBus;->isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 775
    const/16 v23, 0x0

    aget-object v7, v15, v23

    .line 776
    .local v7, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/RecentsEventBus$Event;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/RecentsEventBus;->mEventTypeMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 777
    .restart local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    if-nez v8, :cond_7

    .line 778
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .restart local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/RecentsEventBus;->mEventTypeMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :cond_7
    iget-boolean v0, v10, Landroid/util/MutableBoolean;->value:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 784
    const/16 v23, 0x1

    :try_start_0
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const-class v24, Landroid/os/Bundle;

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/RecentsEventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    if-eqz p3, :cond_8

    .line 789
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/util/MutableBoolean;->value:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :cond_8
    new-instance v12, Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-direct {v12, v11, v7}, Lcom/android/systemui/recents/events/EventHandlerMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 796
    .restart local v12    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    new-instance v9, Lcom/android/systemui/recents/events/EventHandler;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-direct {v9, v0, v12, v1}, Lcom/android/systemui/recents/events/EventHandler;-><init>(Lcom/android/systemui/recents/events/Subscriber;Lcom/android/systemui/recents/events/EventHandlerMethod;I)V

    .line 797
    .local v9, "handler":Lcom/android/systemui/recents/events/EventHandler;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/events/RecentsEventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    .line 801
    sget-boolean v23, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v23, :cond_9

    .line 802
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "  * Method: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 803
    const-string/jumbo v24, " event: "

    .line 802
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 803
    const/16 v24, 0x0

    aget-object v24, v15, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    .line 802
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 804
    const-string/jumbo v24, " interprocess? "

    .line 802
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 804
    iget-boolean v0, v10, Landroid/util/MutableBoolean;->value:Z

    move/from16 v24, v0

    .line 802
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 771
    .end local v7    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/RecentsEventBus$Event;>;"
    .end local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v9    # "handler":Lcom/android/systemui/recents/events/EventHandler;
    .end local v12    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 791
    .restart local v7    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/RecentsEventBus$Event;>;"
    .restart local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    :catch_0
    move-exception v6

    .line 792
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Expected InterprocessEvent to have a Bundle constructor"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 808
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .end local v7    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/RecentsEventBus$Event;>;"
    .end local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v11    # "m":Ljava/lang/reflect/Method;
    .end local v15    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    sget-boolean v19, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v19, :cond_b

    .line 809
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Registered "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, " in "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 810
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v22

    sub-long v22, v22, v20

    .line 809
    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 810
    const-string/jumbo v22, " microseconds"

    .line 809
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 722
    :cond_b
    return-void
.end method

.method private sortEventHandlersByPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "eventHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/events/EventHandler;>;"
    sget-object v0, Lcom/android/systemui/recents/events/RecentsEventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 987
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/RecentsEventBus;->dumpInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public dumpInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 668
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 669
    .local v8, "innerPrefix":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 670
    .local v7, "innerInnerPrefix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .local v9, "output":Ljava/lang/StringBuilder;
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const-string/jumbo v12, "Registered class types:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 675
    .local v10, "subsciberTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v12, Lcom/android/systemui/recents/events/RecentsEventBus$2;

    invoke-direct {v12, p0}, Lcom/android/systemui/recents/events/RecentsEventBus$2;-><init>(Lcom/android/systemui/recents/events/RecentsEventBus;)V

    invoke-static {v10, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 681
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    .line 682
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 683
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 687
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string/jumbo v12, "Event map:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 691
    .local v0, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v12, Lcom/android/systemui/recents/events/RecentsEventBus$3;

    invoke-direct {v12, p0}, Lcom/android/systemui/recents/events/RecentsEventBus$3;-><init>(Lcom/android/systemui/recents/events/RecentsEventBus;)V

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 697
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_3

    .line 698
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 699
    .restart local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const-string/jumbo v12, " -> "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v12, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 704
    .local v4, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "handler$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/events/EventHandler;

    .line 705
    .local v2, "handler":Lcom/android/systemui/recents/events/EventHandler;
    iget-object v12, v2, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v12}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v11

    .line 706
    .local v11, "subscriber":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 707
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 708
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string/jumbo v12, " [0x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 697
    .end local v2    # "handler":Lcom/android/systemui/recents/events/EventHandler;
    .end local v6    # "id":Ljava/lang/String;
    .end local v11    # "subscriber":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 715
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "handler$iterator":Ljava/util/Iterator;
    .end local v4    # "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 643
    sget-boolean v4, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v4, :cond_0

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 647
    :cond_0
    const-string/jumbo v4, "interprocess_event_bundle"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 648
    .local v2, "eventBundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 650
    .local v3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/RecentsEventBus$InterprocessEvent;>;"
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 651
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/systemui/recents/events/RecentsEventBus$InterprocessEvent;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/systemui/recents/events/RecentsEventBus$InterprocessEvent;>;"
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v4, "EventBus"

    const-string/jumbo v5, "Failed to create InterprocessEvent"

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    .prologue
    .line 586
    sget-boolean v0, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "post("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->description()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 591
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->requiresPost:Z

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->cancelled:Z

    .line 593
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/events/RecentsEventBus;->queueEvent(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 585
    return-void

    .line 587
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 457
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    .line 456
    return-void
.end method

.method public register(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    .line 469
    return-void
.end method

.method public send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    .prologue
    const/4 v5, 0x0

    .line 566
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 567
    .local v0, "callingThreadId":J
    iget-object v2, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 568
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Can not send() a message from a non-main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :cond_0
    sget-boolean v2, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v2, :cond_1

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->description()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->description()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 576
    :cond_1
    iput-boolean v5, p1, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->requiresPost:Z

    .line 577
    iput-boolean v5, p1, Lcom/android/systemui/recents/events/RecentsEventBus$Event;->cancelled:Z

    .line 578
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/events/RecentsEventBus;->queueEvent(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 564
    return-void

    .line 572
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public sendOntoMainThread(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/RecentsEventBus$Event;

    .prologue
    .line 601
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 602
    .local v0, "callingThreadId":J
    iget-object v2, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 600
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 516
    sget-boolean v8, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v8, :cond_0

    .line 517
    const-string/jumbo v8, "unregister()"

    invoke-static {v8}, Lcom/android/systemui/recents/events/RecentsEventBus;->logWithPid(Ljava/lang/String;)V

    .line 521
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 522
    .local v0, "callingThreadId":J
    iget-object v8, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 523
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Can not unregister() a subscriber from a non-main thread."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 527
    :cond_1
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/systemui/recents/events/RecentsEventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 528
    return-void

    .line 531
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 532
    .local v7, "subscriberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 533
    .local v6, "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    if-eqz v6, :cond_5

    .line 536
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "method$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/events/EventHandlerMethod;

    .line 537
    .local v4, "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    iget-object v8, p0, Lcom/android/systemui/recents/events/RecentsEventBus;->mEventTypeMap:Ljava/util/HashMap;

    iget-object v9, v4, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 538
    .local v2, "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 539
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/events/EventHandler;

    iget-object v8, v8, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v8}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_4

    .line 540
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 538
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 515
    .end local v2    # "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v3    # "i":I
    .end local v4    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    .end local v5    # "method$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method
