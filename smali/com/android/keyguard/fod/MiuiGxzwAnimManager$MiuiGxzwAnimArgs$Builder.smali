.class Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private backgroundFrame:I

.field private backgroundRes:I

.field private customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

.field private frameInterval:I

.field private repeat:Z

.field private res:[I

.field private startPosition:I


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 1
    .param p1, "backgroundFrame"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->setBackgroundFrame(I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 1
    .param p1, "backgroundRes"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->setBackgroundRes(I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 1
    .param p1, "customerDrawBitmap"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->setCustomerDrawBitmap(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 1
    .param p1, "repeat"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->setRepeat(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->build()Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>([I)V
    .locals 2
    .param p1, "res"    # [I

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->repeat:Z

    .line 329
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->frameInterval:I

    .line 330
    iput v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundRes:I

    .line 331
    iput v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundFrame:I

    .line 335
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->res:[I

    .line 334
    return-void
.end method

.method synthetic constructor <init>([ILcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;)V
    .locals 0
    .param p1, "res"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;-><init>([I)V

    return-void
.end method

.method private build()Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 9

    .prologue
    .line 369
    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->res:[I

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->startPosition:I

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->repeat:Z

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->frameInterval:I

    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundRes:I

    .line 370
    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundFrame:I

    iget-object v7, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .line 369
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;-><init>([IIZIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    return-object v0
.end method

.method private setBackgroundFrame(I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 0
    .param p1, "backgroundFrame"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundFrame:I

    .line 355
    return-object p0
.end method

.method private setBackgroundRes(I)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 0
    .param p1, "backgroundRes"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->backgroundRes:I

    .line 350
    return-object p0
.end method

.method private setCustomerDrawBitmap(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 0
    .param p1, "customerDrawBitmap"    # Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    .line 365
    return-object p0
.end method

.method private setRepeat(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;
    .locals 0
    .param p1, "repeat"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs$Builder;->repeat:Z

    .line 340
    return-object p0
.end method
