.class Lcom/android/systemui/recents/views/DockRegion;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# static fields
.field public static PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static PHONE_PORTRAIT_FORCE_BLACK:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 54
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 52
    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 56
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 58
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 60
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 62
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP_FORCE_BLACK:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 60
    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT_FORCE_BLACK:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 64
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 65
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 64
    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 67
    sget-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 51
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
