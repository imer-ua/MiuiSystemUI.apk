.class public Lcom/android/systemui/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayConcat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    return-object v0
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const v0, 0x1010435

    invoke-static {p0, v0}, Lcom/android/systemui/util/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorAttr(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 105
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 106
    .local v0, "colorAccent":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return v0
.end method

.method public static getColorError(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const v0, 0x90c00ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 123
    .local v0, "list":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    return v1
.end method

.method public static loadProvidedSystemUI(Landroid/content/Context;)[Ljava/lang/Class;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 157
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v9, "com.android.systemui.action.PROVIDED_SYSTEM_UI"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v7, "query":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const/16 v9, 0x200

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 161
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    if-eqz v8, :cond_1

    .line 163
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 164
    new-instance v3, Landroid/content/ComponentName;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 165
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 164
    invoke-direct {v3, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v3, "componentName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 168
    .local v1, "clazz":Ljava/lang/Class;
    const-class v9, Lcom/android/systemui/SystemUI;

    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v4

    .line 173
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/Class;

    .line 178
    .local v2, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Class;

    return-object v9
.end method

.method public static makeSenderSpanBold(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 85
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 86
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 88
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/util/Utils;->makeSenderSpanBold(Landroid/widget/TextView;)V

    .line 85
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method public static makeSenderSpanBold(Landroid/widget/TextView;)V
    .locals 13
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v12, 0x0

    .line 63
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .local v6, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v6, v12, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 65
    .local v9, "spans":[Ljava/lang/Object;
    array-length v1, v9

    move v0, v12

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v8, v9, v0

    .line 66
    .local v8, "span":Ljava/lang/Object;
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 67
    .local v10, "start":I
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 68
    .local v7, "end":I
    instance-of v2, v8, Landroid/text/style/TextAppearanceSpan;

    if-eqz v2, :cond_2

    if-nez v10, :cond_2

    move-object v11, v8

    .line 70
    check-cast v11, Landroid/text/style/TextAppearanceSpan;

    .line 71
    .local v11, "textAppearanceSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 72
    :goto_1
    invoke-virtual {v11}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v11}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 73
    invoke-virtual {v11}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 72
    const/4 v2, 0x1

    .line 71
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v6, v0, v10, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 74
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .end local v7    # "end":I
    .end local v8    # "span":Ljava/lang/Object;
    .end local v10    # "start":I
    .end local v11    # "textAppearanceSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_0
    return-void

    .line 71
    .restart local v7    # "end":I
    .restart local v8    # "span":Ljava/lang/Object;
    .restart local v10    # "start":I
    .restart local v11    # "textAppearanceSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_1
    const-string/jumbo v1, "miui"

    goto :goto_1

    .line 65
    .end local v11    # "textAppearanceSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static safeForeach(Ljava/util/List;Lcom/android/systemui/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/android/systemui/util/function/Consumer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "c":Lcom/android/systemui/util/function/Consumer;, "Lcom/android/systemui/util/function/Consumer<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 55
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/systemui/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 54
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public static updateFsgState(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typeFrom"    # Ljava/lang/String;
    .param p2, "disable"    # Z

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string/jumbo v1, "com.android.systemui.fsgesture"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "typeFrom"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v1, "isEnter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    return-void
.end method
