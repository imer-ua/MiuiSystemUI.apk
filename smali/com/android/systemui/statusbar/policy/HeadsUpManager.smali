.class public Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;,
        Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;,
        Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultSnoozeLengthMs:I

.field private mEntriesToRemoveAfterExpand:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPinnedNotification:Z

.field private mHeadsUpEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpGoingAway:Z

.field private final mHeadsUpNotificationDecay:I

.field private mIsExpanded:Z

.field private mIsObserving:Z

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinimumDisplayTime:I

.field private mReleaseOnExpandFinish:Z

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSnoozeLengthMs:I

.field private final mSnoozedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarHeight:I

.field private mStatusBarState:I

.field private final mStatusBarWindowView:Landroid/view/View;

.field private mSwipedOutKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTwoArray:[I

.field private final mTouchAcceptanceDelay:I

.field private mTrackingHeadsUp:Z

.field private mUser:I

.field private mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mWaitingOnCollapseWhenGoingAway:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTrackingHeadsUp:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpNotificationDecay:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mMinimumDisplayTime:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateTouchableRegionListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->DEBUG:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarWindowView"    # Landroid/view/View;
    .param p3, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntryPool:Landroid/util/Pools$Pool;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    .line 99
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSwipedOutKeys:Ljava/util/HashSet;

    .line 104
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    .line 106
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 105
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;

    .line 109
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTmpTwoArray:[I

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x90e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    .line 121
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    .line 122
    const v1, 0x90e001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mDefaultSnoozeLengthMs:I

    .line 123
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mDefaultSnoozeLengthMs:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 124
    const v1, 0x90e001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mMinimumDisplayTime:I

    .line 125
    const v1, 0x90e001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpNotificationDecay:I

    .line 126
    new-instance v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 129
    const-string/jumbo v2, "heads_up_snooze_length_ms"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mDefaultSnoozeLengthMs:I

    .line 128
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 130
    new-instance v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 142
    const-string/jumbo v2, "heads_up_snooze_length_ms"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 142
    const/4 v4, 0x0

    .line 141
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    .line 145
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 147
    const v1, 0x105001b

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarHeight:I

    .line 117
    return-void
.end method

.method private addHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v5, 0x1

    .line 229
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntryPool:Landroid/util/Pools$Pool;

    invoke-interface {v3}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 232
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 233
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 235
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 236
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 237
    .local v1, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    invoke-interface {v1, p1, v5}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_0

    .line 239
    .end local v1    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    :cond_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->sendAccessibilityEvent(I)V

    .line 228
    return-void
.end method

.method private getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    return-object v0
.end method

.method public static getHeadsUpTopMargin(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 798
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f0452

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 800
    .local v1, "margin":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 801
    const/4 v4, 0x2

    .line 800
    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 802
    .local v0, "landscape":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "status_bar_height"

    const-string/jumbo v5, "dimen"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 803
    .local v2, "resId":I
    if-lez v2, :cond_0

    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    .line 806
    :cond_0
    :goto_1
    return v1

    .line 800
    .end local v0    # "landscape":Z
    .end local v2    # "resId":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "landscape":Z
    goto :goto_0

    .line 804
    .restart local v2    # "resId":I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1
.end method

.method private hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 248
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPinnedNotificationInternal()Z
    .locals 4

    .prologue
    .line 485
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 487
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    const/4 v3, 0x1

    return v3

    .line 491
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static isClickedHeadsUpNotification(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 626
    const v1, 0x9120046

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 627
    .local v0, "clicked":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 268
    .local v2, "remove":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->sendAccessibilityEvent(I)V

    .line 269
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 270
    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 271
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 272
    .local v0, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    invoke-interface {v0, p1, v5}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_0

    .line 274
    .end local v0    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntryPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method private removeOldHeadsUpNotification()V
    .locals 6

    .prologue
    .line 193
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v3

    .line 197
    .local v3, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 199
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eq v0, v3, :cond_1

    .line 200
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 204
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 192
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_3
    return-void
.end method

.method private setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V
    .locals 4
    .param p1, "headsUpEntry"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .param p2, "isPinned"    # Z

    .prologue
    .line 252
    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 253
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-eq v3, p2, :cond_1

    .line 254
    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setPinned(Z)V

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updatePinnedMode()V

    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 257
    .local v0, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    if-eqz p2, :cond_0

    .line 258
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    .line 251
    .end local v0    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static setIsClickedNotification(Landroid/view/View;Z)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "clicked"    # Z

    .prologue
    .line 622
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const v1, 0x9120046

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 621
    return-void

    .line 622
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x1

    .line 243
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarState:I

    if-eq v1, v0, :cond_0

    .line 244
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsExpanded:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    .line 243
    :cond_1
    return v0
.end method

.method private static snoozeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # I

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updatePinnedMode()V
    .locals 6

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedNotificationInternal()Z

    move-result v0

    .line 279
    .local v0, "hasPinnedNotification":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-ne v0, v3, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 283
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-eqz v3, :cond_1

    .line 284
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "note_peek"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateTouchableRegionListener()V

    .line 287
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 288
    .local v1, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpPinnedModeChanged(Z)V

    goto :goto_0

    .line 277
    .end local v1    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    :cond_2
    return-void
.end method

.method private updateTouchableRegionListener()V
    .locals 2

    .prologue
    .line 151
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    if-nez v1, :cond_0

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    .line 153
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsObserving:Z

    if-ne v0, v1, :cond_1

    .line 154
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    .local v0, "shouldObserve":Z
    goto :goto_0

    .line 156
    .end local v0    # "shouldObserve":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 162
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsObserving:Z

    .line 150
    return-void

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_1
.end method

.method private waitForStatusBarLayout()V
    .locals 2

    .prologue
    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$3;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 605
    return-void
.end method

.method private wasShownLongEnough(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 327
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 328
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v1

    .line 329
    .local v1, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 332
    return v3

    .line 334
    :cond_0
    if-eq v0, v1, :cond_1

    .line 335
    return v3

    .line 337
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->wasShownLongEnough()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public addSwipedOutNotification(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 3
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 575
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 576
    .local v0, "aEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v1

    .line 577
    .local v1, "bEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 578
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 580
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I

    move-result v2

    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 464
    const-string/jumbo v4, "HeadsUpManager state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    const-string/jumbo v4, "  mTouchAcceptanceDelay="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 466
    const-string/jumbo v4, "  mSnoozeLengthMs="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 467
    const-string/jumbo v4, "  now="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 468
    const-string/jumbo v4, "  mUser="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 469
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 470
    .local v1, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    const-string/jumbo v4, "  HeadsUpEntry="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 472
    .end local v1    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 473
    .local v0, "N":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  snoozed packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 475
    const-string/jumbo v4, "    "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 476
    const-string/jumbo v4, ", "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 463
    :cond_1
    return-void
.end method

.method public getAllEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 404
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    return-object v4

    .line 407
    :cond_0
    const/4 v2, 0x0

    .line 408
    .local v2, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 409
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 410
    :cond_2
    move-object v2, v0

    .local v2, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    goto :goto_0

    .line 413
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v2    # "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_3
    return-object v2
.end method

.method public getTopHeadsUpPinnedHeight()I
    .locals 5

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v2

    .line 554
    .local v2, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v3, :cond_1

    .line 555
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 557
    :cond_1
    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 558
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 560
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 561
    .local v0, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v0, :cond_2

    .line 562
    move-object v1, v0

    .line 565
    .end local v0    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight()I

    move-result v3

    return v3
.end method

.method public hasPinnedHeadsUp()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHeadsUpGoingAway()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    return v0
.end method

.method public isSnoozed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 365
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 367
    .local v1, "snoozedUntil":Ljava/lang/Long;
    if-eqz v1, :cond_2

    .line 368
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 369
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HeadsUpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " snoozed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public isTrackingHeadsUp()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTrackingHeadsUp:Z

    return v0
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 10
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 432
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsExpanded:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 434
    :cond_0
    return-void

    .line 436
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-eqz v6, :cond_4

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 438
    .local v5, "topEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 440
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 441
    .local v0, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v0, :cond_2

    .line 442
    move-object v5, v0

    .line 445
    .end local v0    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTmpTwoArray:[I

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 446
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTmpTwoArray:[I

    aget v3, v6, v9

    .line 447
    .local v3, "minX":I
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v6

    float-to-int v4, v6

    .line 448
    .local v4, "minY":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTmpTwoArray:[I

    aget v6, v6, v9

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v7

    add-int v1, v6, v7

    .line 449
    .local v1, "maxX":I
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v7

    float-to-int v7, v7

    add-int v2, v6, v7

    .line 451
    .local v2, "maxY":I
    invoke-virtual {p1, v8}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 452
    iget-object v6, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v3, v4, v1, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 431
    .end local v1    # "maxX":I
    .end local v2    # "maxY":I
    .end local v3    # "minX":I
    .end local v4    # "minY":I
    .end local v5    # "topEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    :goto_0
    return-void

    .line 453
    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    if-eqz v6, :cond_3

    .line 454
    :cond_5
    invoke-virtual {p1, v8}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 455
    iget-object v6, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    goto :goto_0
.end method

.method public onExpandingFinished()V
    .locals 3

    .prologue
    .line 513
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mReleaseOnExpandFinish:Z

    if-eqz v2, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    .line 515
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mReleaseOnExpandFinish:Z

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 512
    return-void

    .line 517
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 518
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0
.end method

.method public onReorderingAllowed()V
    .locals 3

    .prologue
    .line 660
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 661
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0

    .line 666
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 659
    return-void
.end method

.method public releaseAllImmediately()V
    .locals 5

    .prologue
    .line 348
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HeadsUpManager"

    const-string/jumbo v4, "releaseAllImmediately"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public releaseImmediately(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 357
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-nez v0, :cond_0

    .line 358
    return-void

    .line 360
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 361
    .local v1, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 355
    return-void
.end method

.method public removeHeadsUpNotification()V
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 297
    .local v0, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 295
    return-void

    .line 298
    :cond_0
    const-string/jumbo v1, "HeadsUpManager"

    const-string/jumbo v2, "removeHeadsUpNotification() no heads up notification on show"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method public removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ignoreEarliestRemovalTime"    # Z

    .prologue
    const/4 v3, 0x1

    .line 311
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HeadsUpManager"

    const-string/jumbo v2, "remove"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 313
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-nez v0, :cond_1

    .line 314
    const-string/jumbo v1, "HeadsUpManager"

    const-string/jumbo v2, "removeNotification() heads up entry is null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v3

    .line 317
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->wasShownLongEnough(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_3

    .line 318
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    .line 319
    return v3

    .line 321
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAsSoonAsPossible()V

    .line 322
    const/4 v1, 0x0

    return v1
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 165
    return-void
.end method

.method public setExpanded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "expanded"    # Z

    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 648
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-eq v1, p2, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    .line 650
    if-eqz p2, :cond_1

    .line 651
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    goto :goto_0
.end method

.method public setHeadsUpGoingAway(Z)V
    .locals 1
    .param p1, "headsUpGoingAway"    # Z

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    if-eq p1, v0, :cond_1

    .line 589
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    .line 590
    if-nez p1, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->waitForStatusBarLayout()V

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateTouchableRegionListener()V

    .line 587
    :cond_1
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsExpanded:Z

    if-eq p1, v0, :cond_0

    .line 537
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsExpanded:Z

    .line 538
    if-eqz p1, :cond_0

    .line 540
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    .line 541
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    .line 542
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateTouchableRegionListener()V

    .line 535
    :cond_0
    return-void
.end method

.method public setRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "remoteInputActive"    # Z

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 632
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eq v1, p2, :cond_0

    .line 633
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    .line 634
    if-eqz p2, :cond_1

    .line 635
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    goto :goto_0
.end method

.method public setStatusBarState(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .prologue
    .line 674
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarState:I

    .line 673
    return-void
.end method

.method public setTrackingHeadsUp(Z)V
    .locals 0
    .param p1, "trackingHeadsUp"    # Z

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTrackingHeadsUp:Z

    .line 527
    return-void
.end method

.method public setUser(I)V
    .locals 0
    .param p1, "user"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    .line 459
    return-void
.end method

.method public setVisualStabilityManager(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
    .locals 0
    .param p1, "visualStabilityManager"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 669
    return-void
.end method

.method public shouldSwallowClick(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 425
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 426
    const/4 v1, 0x1

    return v1

    .line 428
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 185
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HeadsUpManager"

    const-string/jumbo v1, "showNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeOldHeadsUpNotification()V

    .line 189
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 184
    return-void
.end method

.method public snooze()V
    .locals 10

    .prologue
    .line 378
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 379
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 380
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget v8, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 381
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mReleaseOnExpandFinish:Z

    .line 377
    return-void
.end method

.method public unpinAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 504
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

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

    .line 505
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 506
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 508
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    goto :goto_0

    .line 503
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "alert"    # Z

    .prologue
    .line 212
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HeadsUpManager"

    const-string/jumbo v2, "updateNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->sendAccessibilityEvent(I)V

    .line 216
    if-eqz p2, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 218
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-nez v0, :cond_1

    .line 221
    return-void

    .line 223
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry()V

    .line 224
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 211
    .end local v0    # "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_2
    return-void
.end method
