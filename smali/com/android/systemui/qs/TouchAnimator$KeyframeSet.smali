.class abstract Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
.super Ljava/lang/Object;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "KeyframeSet"
.end annotation


# instance fields
.field private final mFrameWidth:F

.field private final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mSize:I

    .line 208
    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    .line 206
    return-void
.end method

.method public static varargs ofFloat(Landroid/util/Property;[F)Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
    .locals 1
    .param p0, "property"    # Landroid/util/Property;
    .param p1, "values"    # [F

    .prologue
    .line 225
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;-><init>(Landroid/util/Property;[F)V

    return-object v0
.end method


# virtual methods
.method protected abstract interpolate(IFLjava/lang/Object;)V
.end method

.method setValue(FLjava/lang/Object;)V
    .locals 4
    .param p1, "fraction"    # F
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 213
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    div-float v2, p1, v2

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 215
    .local v0, "amount":F
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->interpolate(IFLjava/lang/Object;)V

    .line 211
    return-void
.end method
