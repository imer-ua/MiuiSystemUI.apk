.class public Lcom/android/systemui/statusbar/stack/AnimationFilter;
.super Ljava/lang/Object;
.source "AnimationFilter.java"


# instance fields
.field animateAlpha:Z

.field animateDark:Z

.field animateDimmed:Z

.field animateHeight:Z

.field animateHideSensitive:Z

.field public animateShadowAlpha:Z

.field animateTopInset:Z

.field animateX:Z

.field animateY:Z

.field animateYViews:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field animateZ:Z

.field hasDelays:Z

.field hasGoToFullShadeEvent:Z

.field hasHeadsUpDisappearClickEvent:Z

.field private mAnimatedProperties:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/util/ArraySet;

    .line 43
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/util/ArraySet;

    .line 28
    return-void
.end method


# virtual methods
.method public animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1
    .param p1, "property"    # Landroid/util/Property;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 173
    return-object p0
.end method

.method public animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 47
    return-object p0
.end method

.method public animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 93
    return-object p0
.end method

.method public animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 88
    return-object p0
.end method

.method public animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 78
    return-object p0
.end method

.method public animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 98
    return-object p0
.end method

.method public animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 52
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 53
    return-object p0
.end method

.method public animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    .line 103
    return-object p0
.end method

.method public animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 83
    return-object p0
.end method

.method public animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    .line 58
    return-object p0
.end method

.method public animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 63
    return-object p0
.end method

.method public animateY(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    return-object p0
.end method

.method public animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 73
    return-object p0
.end method

.method public applyCombination(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    const/4 v5, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 123
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 124
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 125
    .local v0, "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v3, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 126
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 127
    const/16 v4, 0xa

    .line 126
    if-ne v3, v4, :cond_0

    .line 128
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 130
    :cond_0
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 132
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasHeadsUpDisappearClickEvent:Z

    .line 123
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_2
    return-void
.end method

.method public combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 137
    return-void
.end method

.method public hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 68
    return-object p0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 158
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasHeadsUpDisappearClickEvent:Z

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 153
    return-void
.end method

.method public shouldAnimateProperty(Landroid/util/Property;)Z
    .locals 1
    .param p1, "property"    # Landroid/util/Property;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldAnimateY(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
