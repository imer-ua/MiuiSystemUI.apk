.class public Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
.super Ljava/lang/Object;
.source "TransitionAnimationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/TransitionAnimationSpec$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/systemui/fsgesture/TransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/android/systemui/fsgesture/TransitionAnimationSpec$1;

    invoke-direct {v0}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec$1;-><init>()V

    .line 37
    sput-object v0, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 27
    return-void
.end method
