.class Lcom/android/keyguard/faceunlock/Camera1Util$3;
.super Ljava/lang/Object;
.source "Camera1Util.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/faceunlock/Camera1Util;->calBestPreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/faceunlock/Camera1Util;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/faceunlock/Camera1Util;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/faceunlock/Camera1Util;
    .param p2, "val$width"    # I
    .param p3, "val$height"    # I

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera1Util$3;->this$0:Lcom/android/keyguard/faceunlock/Camera1Util;

    iput p2, p0, Lcom/android/keyguard/faceunlock/Camera1Util$3;->val$width:I

    iput p3, p0, Lcom/android/keyguard/faceunlock/Camera1Util$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 5
    .param p1, "lhs"    # Landroid/hardware/Camera$Size;
    .param p2, "rhs"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 205
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util$3;->val$width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util$3;->val$height:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 206
    .local v0, "off_one":I
    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util$3;->val$width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util$3;->val$height:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 207
    .local v1, "off_two":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 204
    check-cast p1, Landroid/hardware/Camera$Size;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/hardware/Camera$Size;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/faceunlock/Camera1Util$3;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
