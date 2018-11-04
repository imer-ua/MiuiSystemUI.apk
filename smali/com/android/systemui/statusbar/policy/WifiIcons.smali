.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field public static final WIFI_SIGNAL_STRENGTH:[[I

.field public static final WIFI_SIGNAL_STRENGTH_DARK:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const v8, 0x90205ec

    const v4, 0x90205e9

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 22
    new-array v0, v5, [[I

    .line 26
    const v1, 0x90205ef

    .line 27
    const v2, 0x90205f2

    .line 28
    const v3, 0x90205f5

    .line 23
    filled-new-array {v4, v8, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    .line 33
    const v1, 0x90205ef

    .line 34
    const v2, 0x90205f2

    .line 35
    const v3, 0x90205f5

    .line 30
    filled-new-array {v4, v8, v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 22
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 40
    const v0, 0x90205ea

    .line 41
    const v1, 0x90205ed

    .line 42
    const v2, 0x90205f0

    .line 43
    const v3, 0x90205f3

    .line 44
    const v4, 0x90205f6

    .line 39
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_DARK:[I

    .line 47
    new-array v0, v5, [[I

    .line 49
    const v1, 0x9020196

    .line 50
    const v2, 0x9020197

    .line 51
    const v3, 0x9020198

    .line 52
    const v4, 0x9020199

    .line 53
    const v5, 0x902019a

    .line 48
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    .line 56
    const v1, 0x902019d

    .line 57
    const v2, 0x902019e

    .line 58
    const v3, 0x902019f

    .line 59
    const v4, 0x90201a0

    .line 60
    const v5, 0x90201a1

    .line 55
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 47
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 67
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v6

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
