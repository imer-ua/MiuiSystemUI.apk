.class public Lcom/android/keyguard/KeyguardTextViewDrawable;
.super Landroid/widget/TextView;
.source "KeyguardTextViewDrawable.java"


# instance fields
.field private mAliganCenter:Z

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardTextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardTextViewDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mAliganCenter:Z

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardTextViewDrawable;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;III)V
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tag"    # I
    .param p3, "drawableWidth"    # I
    .param p4, "drawableHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 72
    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 73
    .local v5, "width":I
    :goto_0
    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 74
    .local v1, "height":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v4, 0x0

    .local v4, "top":I
    const/4 v3, 0x0

    .local v3, "right":I
    const/4 v0, 0x0

    .line 75
    .local v0, "bottom":I
    packed-switch p2, :pswitch_data_0

    .line 91
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    return-void

    .line 72
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    .end local v5    # "width":I
    :cond_0
    move v5, p3

    .restart local v5    # "width":I
    goto :goto_0

    .line 73
    :cond_1
    move v1, p4

    .restart local v1    # "height":I
    goto :goto_1

    .line 78
    .restart local v0    # "bottom":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    .restart local v4    # "top":I
    :pswitch_0
    const/4 v2, 0x0

    .line 79
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mAliganCenter:Z

    if-eqz v7, :cond_2

    move v4, v6

    .line 80
    :goto_3
    move v3, v5

    .line 81
    add-int v0, v4, v1

    .line 82
    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->getLineCount()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->getLineHeight()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->getLineHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    goto :goto_3

    .line 85
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mAliganCenter:Z

    if-eqz v7, :cond_3

    move v2, v6

    .line 86
    :goto_4
    const/4 v4, 0x0

    .line 87
    add-int v3, v2, v5

    .line 88
    add-int/lit8 v0, v1, 0x0

    .line 89
    goto :goto_2

    .line 85
    :cond_3
    iget v6, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mWidth:I

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v5, 0x2

    add-int v2, v6, v7

    goto :goto_4

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 49
    iput p1, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mWidth:I

    .line 50
    iput p2, p0, Lcom/android/keyguard/KeyguardTextViewDrawable;->mHeight:I

    .line 51
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 52
    .local v4, "drawables":[Landroid/graphics/drawable/Drawable;
    aget-object v1, v4, v5

    .line 53
    .local v1, "drawableLeft":Landroid/graphics/drawable/Drawable;
    aget-object v3, v4, v6

    .line 54
    .local v3, "drawableTop":Landroid/graphics/drawable/Drawable;
    aget-object v2, v4, v7

    .line 55
    .local v2, "drawableRight":Landroid/graphics/drawable/Drawable;
    aget-object v0, v4, v8

    .line 56
    .local v0, "drawableBottom":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0, v1, v5, v5, v5}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;III)V

    .line 59
    :cond_0
    if-eqz v3, :cond_1

    .line 60
    invoke-direct {p0, v3, v6, v5, v5}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;III)V

    .line 62
    :cond_1
    if-eqz v2, :cond_2

    .line 63
    invoke-direct {p0, v2, v7, v5, v5}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;III)V

    .line 65
    :cond_2
    if-eqz v0, :cond_3

    .line 66
    invoke-direct {p0, v0, v8, v5, v5}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;III)V

    .line 68
    :cond_3
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/keyguard/KeyguardTextViewDrawable;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method
