.class final enum Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
.super Ljava/lang/Enum;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EventPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

.field public static final enum ALIGN_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

.field public static final enum BELOW_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

.field public static final enum UPON_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    const-string/jumbo v1, "UPON_NOTCH"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    new-instance v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    const-string/jumbo v1, "BELOW_NOTCH"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    new-instance v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    const-string/jumbo v1, "ALIGN_NOTCH"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->$VALUES:[Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;->$VALUES:[Lcom/android/systemui/fsgesture/GestureStubView$EventPosition;

    return-object v0
.end method