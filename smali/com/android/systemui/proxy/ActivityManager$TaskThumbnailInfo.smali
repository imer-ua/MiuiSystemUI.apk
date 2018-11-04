.class public Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public insets:Landroid/graphics/Rect;

.field public screenOrientation:I

.field public taskHeight:I

.field public taskWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo$1;

    invoke-direct {v0}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo$1;-><init>()V

    sput-object v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v1, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    .line 127
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v1, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    .line 187
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 182
    iget v0, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    return-void
.end method
