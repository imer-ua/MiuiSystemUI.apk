.class public Lcom/android/systemui/statusbar/ViewTransformationHelper;
.super Ljava/lang/Object;
.source "ViewTransformationHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    }
.end annotation


# instance fields
.field private mCustomTransformations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformedViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTransformationAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->abortTransformations()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    .line 37
    return-void
.end method

.method private abortTransformations()V
    .locals 4

    .prologue
    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "viewType$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 203
    .local v1, "viewType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 204
    .local v0, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    .line 206
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_0

    .line 201
    .end local v0    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v1    # "viewType":Ljava/lang/Integer;
    :cond_1
    return-void
.end method


# virtual methods
.method public addRemainingTransformTypes(Landroid/view/View;)V
    .locals 11
    .param p1, "viewRoot"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const v9, 0x9120045

    .line 217
    iget-object v8, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 218
    .local v5, "numValues":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 219
    iget-object v8, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 220
    .local v7, "view":Landroid/view/View;
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 221
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 222
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .end local v7    # "view":Landroid/view/View;
    check-cast v7, Landroid/view/View;

    .restart local v7    # "view":Landroid/view/View;
    goto :goto_1

    .line 218
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 227
    .local v6, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/view/View;>;"
    invoke-virtual {v6, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 229
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 230
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 231
    .local v1, "containsView":Ljava/lang/Boolean;
    if-nez v1, :cond_3

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    .line 234
    .local v4, "id":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 236
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    goto :goto_2

    .line 240
    .end local v4    # "id":I
    :cond_3
    invoke-virtual {v0, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 241
    instance-of v8, v0, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v2, v0

    .line 242
    check-cast v2, Landroid/view/ViewGroup;

    .line 243
    .local v2, "group":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 244
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 215
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "containsView":Ljava/lang/Boolean;
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_4
    return-void
.end method

.method public addTransformedView(ILandroid/view/View;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "transformedView"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public getAllTransformingViews()Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 4
    .param p1, "fadingView"    # I

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 64
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 65
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    return-object v1

    .line 67
    :cond_0
    return-object v3
.end method

.method public removeTransformedView(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 53
    return-void
.end method

.method public resetTransformedView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 252
    .local v0, "state":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 253
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 250
    return-void
.end method

.method public setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V
    .locals 2
    .param p1, "transformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p2, "viewType"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "viewType$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 193
    .local v1, "viewType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 194
    .local v0, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v0, :cond_1

    .line 195
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    .line 196
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_0

    .line 188
    .end local v0    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v1    # "viewType":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 135
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$3;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 131
    return-void

    .line 135
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 6
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 166
    iget-object v5, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "viewType$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 167
    .local v3, "viewType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v2

    .line 168
    .local v2, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v2, :cond_0

    .line 169
    iget-object v5, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;

    .line 170
    .local v0, "customTransformation":Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    .line 176
    .local v1, "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 178
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 182
    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_1

    .line 165
    .end local v0    # "customTransformation":Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .end local v1    # "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v2    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v3    # "viewType":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 6
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "transformationAmount"    # F

    .prologue
    .line 109
    iget-object v5, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mTransformedViews:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "viewType$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 110
    .local v3, "viewType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v2

    .line 111
    .local v2, "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v2, :cond_0

    .line 112
    iget-object v5, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;

    .line 113
    .local v0, "customTransformation":Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    .line 119
    .local v1, "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    .line 121
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 125
    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_1

    .line 108
    .end local v0    # "customTransformation":Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .end local v1    # "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v2    # "ownState":Lcom/android/systemui/statusbar/notification/TransformState;
    .end local v3    # "viewType":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 75
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$1;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;-><init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 71
    return-void

    .line 75
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
