.class final Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 195
    new-instance v0, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;-><init>(Landroid/os/Parcel;Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 199
    new-array v0, p1, [Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo$1;->newArray(I)[Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    move-result-object v0

    return-object v0
.end method
