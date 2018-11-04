.class Lcom/android/systemui/RoundedCorners$RoundCornerData;
.super Ljava/lang/Object;
.source "RoundedCorners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/RoundedCorners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RoundCornerData"
.end annotation


# instance fields
.field backgroundRes:I

.field gravity:I

.field height:I

.field width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "gravity"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "backgroundRes"    # I

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p1, p0, Lcom/android/systemui/RoundedCorners$RoundCornerData;->gravity:I

    .line 158
    iput p2, p0, Lcom/android/systemui/RoundedCorners$RoundCornerData;->width:I

    .line 159
    iput p3, p0, Lcom/android/systemui/RoundedCorners$RoundCornerData;->height:I

    .line 160
    iput p4, p0, Lcom/android/systemui/RoundedCorners$RoundCornerData;->backgroundRes:I

    .line 156
    return-void
.end method
