.class public Lcom/android/systemui/tuner/TunerServiceImpl;
.super Lcom/android/systemui/tuner/TunerService;
.source "TunerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerServiceImpl$Observer;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mListeningUris:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

.field private final mTunableLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTunables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/tuner/TunerServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/tuner/TunerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerServiceImpl;->reloadAll()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->reloadSetting(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerService;-><init>()V

    .line 53
    new-instance v2, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    invoke-direct {v2, p0}, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    iput-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    .line 55
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 57
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    .line 59
    sget-boolean v2, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    .line 68
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 71
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 72
    const-string/jumbo v2, "sysui_tuner_version"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 73
    const-string/jumbo v2, "sysui_tuner_version"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/tuner/TunerServiceImpl;->upgradeTuner(II)V

    goto :goto_1

    .line 59
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v1    # "user$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    .restart local v1    # "user$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 78
    new-instance v2, Lcom/android/systemui/tuner/TunerServiceImpl$1;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/tuner/TunerServiceImpl$1;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 86
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 66
    return-void
.end method

.method private addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V
    .locals 6
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-boolean v2, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    const-class v2, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    const-string/jumbo v4, "TunerService.mTunables"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/util/leak/LeakDetector;->trackCollection(Ljava/util/Collection;Ljava/lang/String;)V

    .line 155
    :cond_1
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    iget v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "value":Ljava/lang/String;
    invoke-interface {p1, p2, v1}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private reloadAll()V
    .locals 7

    .prologue
    .line 198
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 200
    iget v6, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 199
    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tunable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 202
    .local v2, "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    invoke-interface {v2, v0, v4}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    .end local v3    # "tunable$iterator":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private reloadSetting(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 186
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 188
    .local v3, "tunables":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    if-nez v3, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v6, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tunable$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 193
    .local v1, "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    invoke-interface {v1, v0, v4}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v1    # "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    :cond_1
    return-void
.end method

.method private upgradeTuner(II)V
    .locals 6
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 95
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 96
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/TunerServiceImpl;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "blacklistStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 99
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerHelper;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 101
    .local v1, "iconBlacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v2, "rotate"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 102
    const-string/jumbo v2, "headset"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    const-string/jumbo v3, "icon_blacklist"

    .line 106
    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    .line 104
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 109
    .end local v0    # "blacklistStr":Ljava/lang/String;
    .end local v1    # "iconBlacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v2, "sysui_tuner_version"

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/tuner/TunerServiceImpl;->setValue(Ljava/lang/String;I)V

    .line 94
    return-void
.end method


# virtual methods
.method public varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 3
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 141
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 142
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 210
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sysui_demo_allowed"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.systemui.demo"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "command"

    const-string/jumbo v4, "exit"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 208
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getValue(Ljava/lang/String;I)I
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 3
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;

    .prologue
    .line 167
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "list$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 168
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v0    # "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    :cond_0
    sget-boolean v2, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    return-void
.end method

.method protected reregisterAll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 181
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    iget v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 175
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 135
    return-void
.end method
