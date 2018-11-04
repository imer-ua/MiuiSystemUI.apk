.class public Lcom/android/keyguard/JustifyTextView;
.super Landroid/widget/TextView;
.source "JustifyTextView.java"


# instance fields
.field private mLineY:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method private drawScaledText(Landroid/graphics/Canvas;Ljava/lang/String;F)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "lineWidth"    # F

    .prologue
    .line 54
    const/4 v9, 0x0

    .line 55
    .local v9, "x":F
    invoke-direct {p0, p2}, Lcom/android/keyguard/JustifyTextView;->isFirstLineOfParagraph(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 56
    const-string/jumbo v0, "  "

    .line 57
    .local v0, "blanks":Ljava/lang/String;
    iget v10, p0, Lcom/android/keyguard/JustifyTextView;->mLineY:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {p1, v0, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    .line 54
    .local v1, "bw":F
    const/4 v10, 0x0

    .line 59
    add-float v9, v10, v1

    .line 61
    const/4 v10, 0x3

    invoke-virtual {p2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 64
    .end local v0    # "blanks":Ljava/lang/String;
    .end local v1    # "bw":F
    :cond_0
    const/4 v5, 0x0

    .line 65
    .local v5, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_1

    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3000

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3000

    if-ne v10, v11, :cond_1

    .line 66
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "substring":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    .line 68
    .local v3, "cw":F
    iget v10, p0, Lcom/android/keyguard/JustifyTextView;->mLineY:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {p1, v6, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    add-float/2addr v9, v3

    .line 70
    const/4 v5, 0x2

    .line 73
    .end local v3    # "cw":F
    .end local v6    # "substring":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "words":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v10, v8

    const/4 v11, 0x2

    if-ge v10, v11, :cond_3

    .line 76
    :cond_2
    iget v10, p0, Lcom/android/keyguard/JustifyTextView;->mViewWidth:I

    int-to-float v10, v10

    sub-float/2addr v10, p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 77
    .local v4, "d":F
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_5

    .line 78
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "c":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    .line 80
    .restart local v3    # "cw":F
    iget v10, p0, Lcom/android/keyguard/JustifyTextView;->mLineY:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {p1, v2, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 81
    add-float v10, v3, v4

    add-float/2addr v9, v10

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "cw":F
    .end local v4    # "d":F
    :cond_3
    iget v10, p0, Lcom/android/keyguard/JustifyTextView;->mViewWidth:I

    int-to-float v10, v10

    sub-float/2addr v10, p3

    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 86
    .restart local v4    # "d":F
    :goto_1
    array-length v10, v8

    if-ge v5, v10, :cond_5

    .line 87
    aget-object v7, v8, v5

    .line 88
    .local v7, "word":Ljava/lang/String;
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    if-eq v5, v10, :cond_4

    .line 89
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    .line 92
    .restart local v3    # "cw":F
    iget v10, p0, Lcom/android/keyguard/JustifyTextView;->mLineY:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {p1, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 93
    add-float v10, v3, v4

    add-float/2addr v9, v10

    .line 86
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 53
    .end local v3    # "cw":F
    .end local v7    # "word":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private isFirstLineOfParagraph(Ljava/lang/String;)Z
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private needScale(Ljava/lang/String;)Z
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    return v0

    .line 106
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 27
    .local v6, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getCurrentTextColor()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getDrawableState()[I

    move-result-object v9

    iput-object v9, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 29
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getMeasuredWidth()I

    move-result v9

    iput v9, p0, Lcom/android/keyguard/JustifyTextView;->mViewWidth:I

    .line 30
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 31
    .local v7, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getTextSize()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/keyguard/JustifyTextView;->mLineY:I

    .line 32
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 34
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_0

    .line 35
    return-void

    .line 38
    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 39
    .local v3, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 40
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 41
    .local v5, "lineStart":I
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 42
    .local v4, "lineEnd":I
    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {v7, v5, v4, v9}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v8

    .line 43
    .local v8, "width":F
    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "line":Ljava/lang/String;
    add-int/lit8 v9, v3, -0x1

    if-ge v0, v9, :cond_1

    invoke-direct {p0, v2}, Lcom/android/keyguard/JustifyTextView;->needScale(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 45
    invoke-direct {p0, p1, v2, v8}, Lcom/android/keyguard/JustifyTextView;->drawScaledText(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    .line 49
    :goto_1
    iget v9, p0, Lcom/android/keyguard/JustifyTextView;->mLineY:I

    invoke-virtual {p0}, Lcom/android/keyguard/JustifyTextView;->getLineHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/keyguard/JustifyTextView;->mLineY:I

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const/4 v9, 0x0

    iget v10, p0, Lcom/android/keyguard/JustifyTextView;->mLineY:I

    int-to-float v10, v10

    invoke-virtual {p1, v2, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 25
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "lineEnd":I
    .end local v5    # "lineStart":I
    .end local v8    # "width":F
    :cond_2
    return-void
.end method
