.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 14
    const v0, 0x910009f

    .line 15
    const v1, 0x91000a0

    .line 16
    const v2, 0x91000a1

    .line 17
    const v3, 0x91000a2

    .line 18
    const v4, 0x91000a3

    .line 13
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 22
    const v0, 0x91000a4

    .line 23
    const v1, 0x91000a5

    .line 24
    const v2, 0x91000a6

    .line 25
    const v3, 0x91000a7

    .line 26
    const v4, 0x91000a8

    .line 21
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 30
    const v0, 0x91005ff

    .line 31
    const v1, 0x9100600

    .line 32
    const v2, 0x9100601

    .line 33
    const v3, 0x9100602

    .line 34
    const v4, 0x9100603

    .line 29
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 40
    const v0, 0x91000b1

    .line 41
    const v1, 0x91000b2

    .line 39
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    .line 45
    const v0, 0x91000ac

    .line 46
    const v1, 0x91000ad

    .line 47
    const v2, 0x91000ae

    .line 48
    const v3, 0x91000af

    .line 49
    const v4, 0x91000b0

    .line 44
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
