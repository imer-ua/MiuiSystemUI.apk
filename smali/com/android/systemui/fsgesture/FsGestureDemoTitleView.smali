.class public Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;
.super Landroid/widget/FrameLayout;
.source "FsGestureDemoTitleView.java"


# instance fields
.field private mSkipView:Landroid/widget/TextView;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x904003f

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    const v1, 0x91200e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    .line 51
    const v1, 0x91200e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    .line 52
    const v1, 0x91200ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    .line 48
    return-void
.end method


# virtual methods
.method notifyFinish()V
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90200b4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTranslationX()F

    move-result v0

    .line 112
    .local v0, "transY":F
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    const v2, 0x910058d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    return-void
.end method

.method prepareTitleView(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90200b5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "titleRes":I
    const/4 v0, 0x0

    .line 76
    .local v0, "summaryRes":I
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :cond_0
    return-void

    .line 78
    :pswitch_0
    const v1, 0x9100589

    .line 79
    const v0, 0x910058a

    .line 80
    goto :goto_0

    .line 82
    :pswitch_1
    const v1, 0x9100589

    .line 83
    const v0, 0x910058b

    .line 84
    goto :goto_0

    .line 86
    :pswitch_2
    const v1, 0x9100581

    .line 87
    const v0, 0x9100585

    .line 88
    goto :goto_0

    .line 90
    :pswitch_3
    const v1, 0x9100582

    .line 91
    const v0, 0x9100586

    .line 92
    goto :goto_0

    .line 94
    :pswitch_4
    const v1, 0x9100587

    .line 95
    const v0, 0x9100588

    .line 96
    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method registerSkipEvent(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_0
    return-void
.end method

.method setRTLParams()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 60
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 61
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 62
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f024b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    .local v0, "paddingRight":I
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f024a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 67
    .local v1, "paddingTop":I
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v1, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 58
    .end local v0    # "paddingRight":I
    .end local v1    # "paddingTop":I
    :cond_0
    return-void
.end method
