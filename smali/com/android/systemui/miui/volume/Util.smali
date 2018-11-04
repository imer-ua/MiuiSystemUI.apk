.class Lcom/android/systemui/miui/volume/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-string/jumbo v0, "volume"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 67
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 59
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "parent"    # Landroid/graphics/drawable/Drawable;
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 94
    if-nez p0, :cond_0

    .line 95
    return-object v4

    .line 97
    :cond_0
    instance-of v3, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 98
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 99
    .local v1, "layer":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 100
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 101
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 104
    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/systemui/miui/volume/Util;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 105
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 106
    return-object v2

    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    .end local v1    # "layer":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {p0}, Lcom/android/systemui/miui/volume/Util;->isWrapperDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    invoke-static {p0, v4}, Lcom/android/systemui/miui/volume/Util;->getWrappedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/systemui/miui/volume/Util;->findDrawableById(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 112
    :cond_4
    return-object v4
.end method

.method public static getLastTotalCountDownTime(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "miui_last_count_down_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getWrappedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "parent"    # Landroid/graphics/drawable/Drawable;
    .param p1, "def"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_0

    .line 135
    check-cast p0, Landroid/graphics/drawable/DrawableWrapper;

    .end local p0    # "parent":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 136
    .restart local p0    # "parent":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_1

    .line 137
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    .end local p0    # "parent":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 138
    .restart local p0    # "parent":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_2

    .line 140
    check-cast p0, Landroid/graphics/drawable/ClipDrawable;

    .end local p0    # "parent":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 141
    .restart local p0    # "parent":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_3

    .line 142
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .end local p0    # "parent":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 143
    .restart local p0    # "parent":Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v0, p0, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_4

    .line 144
    check-cast p0, Landroid/graphics/drawable/RotateDrawable;

    .end local p0    # "parent":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 146
    .restart local p0    # "parent":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-object p1
.end method

.method public static isWrapperDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/DrawableWrapper;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;

    .line 121
    if-nez v0, :cond_1

    .line 123
    instance-of v0, p0, Landroid/graphics/drawable/ClipDrawable;

    .line 121
    if-nez v0, :cond_1

    .line 124
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    .line 121
    if-nez v0, :cond_1

    .line 125
    instance-of v0, p0, Landroid/graphics/drawable/RotateDrawable;

    .line 121
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v3, 0x17

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vol."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_0

    .end local v0    # "tag":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static reparentChildren(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 6
    .param p0, "from"    # Landroid/view/ViewGroup;
    .param p1, "to"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "view":Landroid/view/View;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "view$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 81
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 82
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 70
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static setLastTotalCountDownTime(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I

    .prologue
    .line 155
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "miui_last_count_down_time"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    return-void
.end method

.method public static final setVisOrGone(Landroid/view/View;Z)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "vis"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 38
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    if-ne v3, v2, :cond_2

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    .line 39
    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    return-void

    :cond_3
    move v0, v1

    .line 39
    goto :goto_1
.end method

.method public static final setVisOrInvis(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "vis"    # Z

    .prologue
    .line 49
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 48
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final setVisOrInvis(Landroid/view/View;Z)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 43
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    if-ne v3, v2, :cond_2

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    .line 44
    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    return-void

    :cond_3
    move v0, v1

    .line 44
    goto :goto_1
.end method
