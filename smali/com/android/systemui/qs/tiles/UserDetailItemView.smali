.class public Lcom/android/systemui/qs/tiles/UserDetailItemView;
.super Landroid/widget/LinearLayout;
.source "UserDetailItemView.java"


# static fields
.field protected static layoutResId:I


# instance fields
.field private mActivatedTypeface:Landroid/graphics/Typeface;

.field private mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

.field private mName:Landroid/widget/TextView;

.field private mRegularTypeface:Landroid/graphics/Typeface;

.field private mRestrictedPadlock:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x90400cc

    sput v0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->layoutResId:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    sget-object v4, Lcom/android/systemui/R$styleable;->UserDetailItemView:[I

    .line 66
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 68
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 69
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 70
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 71
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 69
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    .line 76
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    .line 80
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/tiles/UserDetailItemView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 85
    instance-of v0, p1, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    if-nez v0, :cond_0

    .line 86
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    sget v1, Lcom/android/systemui/qs/tiles/UserDetailItemView;->layoutResId:I

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    :cond_0
    check-cast p1, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    .end local p1    # "convertView":Landroid/view/View;
    return-object p1
.end method

.method private updateTypeface()V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->getDrawableState()[I

    move-result-object v1

    const v2, 0x10102fe

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 145
    .local v0, "activated":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/Bitmap;
    .param p3, "userId"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setAvatarWithBadge(Landroid/graphics/Bitmap;I)V

    .line 92
    return-void
.end method

.method public bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userId"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    .line 97
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->updateTypeface()V

    .line 138
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    const v1, 0x90f00ff

    invoke-static {v0, v1}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 132
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 119
    const v0, 0x9120169

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 120
    const v0, 0x91200bc

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRegularTypeface:Landroid/graphics/Typeface;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mActivatedTypeface:Landroid/graphics/Typeface;

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->updateTypeface()V

    .line 128
    const v0, 0x912025a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRestrictedPadlock:Landroid/view/View;

    .line 118
    return-void
.end method

.method public setAvatarEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setEnabled(Z)V

    .line 102
    return-void
.end method

.method public setDisabledByAdmin(Z)V
    .locals 4
    .param p1, "disabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mRestrictedPadlock:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setEnabled(Z)V

    .line 106
    return-void

    .line 107
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v2

    .line 108
    goto :goto_1

    :cond_2
    move v1, v2

    .line 109
    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setEnabled(Z)V

    .line 112
    return-void
.end method
