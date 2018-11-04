.class public Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiGxzwAnimArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    }
.end annotation


# instance fields
.field final backgroundFrame:I

.field final backgroundRes:I

.field final customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

.field final frameInterval:I

.field final repeat:Z

.field final res:[I

.field final startPosition:I


# direct methods
.method private constructor <init>([IIZIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V
    .locals 0
    .param p1, "res"    # [I
    .param p2, "startPosition"    # I
    .param p3, "repeat"    # Z
    .param p4, "frameInterval"    # I
    .param p5, "backgroundRes"    # I
    .param p6, "backgroundFrame"    # I
    .param p7, "customerDrawBitmap"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->res:[I

    .line 317
    iput p2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->startPosition:I

    .line 318
    iput-boolean p3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->repeat:Z

    .line 319
    iput p4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->frameInterval:I

    .line 320
    iput p5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundRes:I

    .line 321
    iput p6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundFrame:I

    .line 322
    iput-object p7, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .line 315
    return-void
.end method

.method synthetic constructor <init>([IIZIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V
    .locals 0
    .param p1, "res"    # [I
    .param p2, "startPosition"    # I
    .param p3, "repeat"    # Z
    .param p4, "frameInterval"    # I
    .param p5, "backgroundRes"    # I
    .param p6, "backgroundFrame"    # I
    .param p7, "customerDrawBitmap"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;-><init>([IIZIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V

    return-void
.end method
