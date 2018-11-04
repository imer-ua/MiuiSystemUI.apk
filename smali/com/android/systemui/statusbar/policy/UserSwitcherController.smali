.class public Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAddUserDialog:Landroid/app/Dialog;

.field private mAddUsersWhenLocked:Z

.field private final mCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mExitGuestDialog:Landroid/app/Dialog;

.field private mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

.field private final mGuestResumeSessionReceiver:Lcom/android/systemui/GuestResumeSessionReceiver;

.field protected final mHandler:Landroid/os/Handler;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLastNonGuestUser:I

.field private mPauseRefreshUsers:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeUserOnGuestLogout:Z

.field private mSecondaryUser:I

.field private mSecondaryUserServiceIntent:Landroid/content/Intent;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSimpleUserSwitcher:Z

.field private final mUnpauseRefreshUsers:Ljava/lang/Runnable;

.field protected final mUserManager:Landroid/os/UserManager;

.field private mUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUser:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUserServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUnpauseRefreshUsers:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersWhenLocked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUser:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->notifyAdapters()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V
    .locals 0
    .param p1, "forcePictureLoadForId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V
    .locals 0
    .param p1, "guestUserId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showGuestNotification(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardMonitor"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "activityStarter"    # Lcom/android/systemui/plugins/ActivityStarter;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/android/systemui/GuestResumeSessionReceiver;

    invoke-direct {v0}, Lcom/android/systemui/GuestResumeSessionReceiver;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mGuestResumeSessionReceiver:Lcom/android/systemui/GuestResumeSessionReceiver;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mResumeUserOnGuestLogout:Z

    .line 117
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUser:I

    .line 119
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    .line 459
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 476
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 606
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUnpauseRefreshUsers:Ljava/lang/Runnable;

    .line 615
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 837
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 888
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mGuestResumeSessionReceiver:Lcom/android/systemui/GuestResumeSessionReceiver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/GuestResumeSessionReceiver;->register(Landroid/content/Context;)V

    .line 125
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 126
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    .line 127
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 128
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 129
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    .line 137
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/SystemUISecondaryUserService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUserServiceIntent:Landroid/content/Intent;

    .line 141
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.android.systemui.REMOVE_GUEST"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "com.android.systemui.LOGOUT_USER"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    .line 145
    const-string/jumbo v4, "com.android.systemui.permission.SELF"

    const/4 v5, 0x0

    .line 144
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "lockscreenSimpleUserSwitcher"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 148
    const/4 v4, 0x1

    .line 147
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "add_users_when_locked"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 151
    const/4 v4, 0x1

    .line 150
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "allow_user_switching_when_system_user_locked"

    .line 154
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 153
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->listenForCallState()V

    .line 163
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    .line 122
    return-void
.end method

.method private checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 5
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    const/4 v4, 0x0

    .line 757
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 758
    const-string/jumbo v2, "no_add_user"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 757
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 759
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 760
    const-string/jumbo v2, "no_add_user"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 759
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    .line 765
    iput-object v4, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 756
    :goto_0
    return-void

    .line 761
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    .line 762
    iput-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0
.end method

.method private listenForCallState()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 456
    const/16 v2, 0x20

    .line 455
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 454
    return-void
.end method

.method private notifyAdapters()V
    .locals 3

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    .line 305
    .local v0, "adapter":Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->notifyDataSetChanged()V

    .line 303
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 302
    .end local v0    # "adapter":Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
    :cond_1
    return-void
.end method

.method private pauseRefreshUsers()V
    .locals 4

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUnpauseRefreshUsers:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    .line 295
    :cond_0
    return-void
.end method

.method private refreshUsers(I)V
    .locals 9
    .param p1, "forcePictureLoadForId"    # I

    .prologue
    const/4 v8, 0x1

    .line 176
    const/16 v6, -0x2710

    if-eq p1, v6, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 180
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    if-eqz v6, :cond_1

    .line 181
    return-void

    .line 184
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 185
    .local v3, "forceAllUsers":Z
    new-instance v2, Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v2, v6}, Landroid/util/SparseArray;-><init>(I)V

    .line 186
    .local v2, "bitmaps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 187
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 188
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 189
    .local v5, "r":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    .line 187
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_3
    iget-object v6, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v6, :cond_2

    if-nez v3, :cond_2

    .line 190
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    iget-object v7, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 189
    if-nez v6, :cond_2

    .line 193
    iget-object v6, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 195
    .end local v5    # "r":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 197
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersWhenLocked:Z

    .line 198
    .local v1, "addUsersWhenLocked":Z
    new-instance v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V

    new-array v7, v8, [Landroid/util/SparseArray;

    .line 292
    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 198
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    return-void
.end method

.method private showExitGuestDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, "newId":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mResumeUserOnGuestLogout:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 426
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/content/pm/UserInfoCompat;->supportsSwitchToByUser(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 430
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(II)V

    .line 422
    return-void
.end method

.method private showGuestNotification(I)V
    .locals 8
    .param p1, "guestUserId"    # I

    .prologue
    const/4 v6, 0x0

    .line 585
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v3}, Landroid/os/UserManagerCompat;->canSwitchUsers(Landroid/os/UserManager;)Z

    move-result v1

    .line 587
    .local v1, "canSwitchUsers":Z
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 588
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.systemui.REMOVE_GUEST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    .line 587
    invoke-static {v3, v6, v4, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 591
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/app/NotificationCompat;->newBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 592
    const/4 v4, -0x1

    .line 591
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 593
    const v4, 0x9020130

    .line 591
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 594
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v5, 0x91001ba

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 591
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 595
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v5, 0x91001bb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 591
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 599
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v5, 0x91001bc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 598
    const v5, 0x90200e2

    .line 591
    invoke-virtual {v3, v5, v4, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 601
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 602
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    const-string/jumbo v4, "remove_guest"

    .line 603
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v7, 0x3f2

    .line 602
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 584
    return-void

    .line 588
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    const/4 v2, 0x0

    .local v2, "removeGuestPI":Landroid/app/PendingIntent;
    goto :goto_0
.end method


# virtual methods
.method public addAdapter(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p1, "adapter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method protected exitGuest(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "targetId"    # I

    .prologue
    .line 450
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 449
    return-void
.end method

.method public getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 638
    .local v0, "item":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v1, :cond_2

    :cond_1
    return-object v3

    .line 639
    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_3

    const v1, 0x91001b0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 640
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v1
.end method

.method public getUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSimpleUserSwitcher()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return v0
.end method

.method public logoutCurrentUser()V
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 339
    .local v0, "currentUser":I
    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->pauseRefreshUsers()V

    .line 341
    invoke-static {}, Landroid/app/ActivityManagerCompat;->logoutCurrentUser()V

    .line 337
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .prologue
    .line 644
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    .line 643
    return-void
.end method

.method public showAddUserDialog()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 445
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 441
    return-void
.end method

.method protected showExitGuestDialog(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "targetId"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 437
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 433
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 769
    return-void
.end method

.method public switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 360
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v3, :cond_2

    .line 362
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 363
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v6, 0x91001b0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 364
    .local v1, "guest":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 377
    .end local v1    # "guest":Landroid/content/pm/UserInfo;
    .local v2, "id":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 378
    .local v0, "currUserId":I
    if-ne v0, v2, :cond_4

    .line 379
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v3, :cond_1

    .line 380
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(I)V

    .line 382
    :cond_1
    return-void

    .line 370
    .end local v0    # "currUserId":I
    .end local v2    # "id":I
    :cond_2
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v3, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showAddUserDialog()V

    .line 372
    return-void

    .line 374
    :cond_3
    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    .restart local v2    # "id":I
    goto :goto_0

    .line 385
    .restart local v0    # "currUserId":I
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    .line 358
    return-void
.end method

.method protected switchToUserId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 415
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->pauseRefreshUsers()V

    .line 416
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UserSwitcherController"

    const-string/jumbo v2, "Couldn\'t switch user."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public useFullscreenUserSwitcher()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 322
    const/4 v0, -0x1

    .line 324
    .local v0, "DEFAULT":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 325
    const-string/jumbo v4, "enable_fullscreen_user_switcher"

    .line 324
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 326
    .local v1, "overrideUseFullscreenUserSwitcher":I
    if-eq v1, v5, :cond_1

    .line 327
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90d0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    return v2
.end method
