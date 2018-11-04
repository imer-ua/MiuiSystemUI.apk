.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final UNDARK_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final mTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mActualLayoutWidth:I

.field private mActualPaddingEnd:F

.field private mActualPaddingStart:F

.field private mAddAnimationStartIndex:I

.field private mAnimationsEnabled:Z

.field private mCannedAnimationStartIndex:I

.field private mChangingViewPositions:Z

.field private mDark:Z

.field private mDisallowNextAnimation:Z

.field private mDotPadding:I

.field private mIconSize:I

.field private final mIconStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenedAmount:F

.field private mReplacingIcons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowAllIcons:Z

.field private mSpeedBumpIndex:I

.field private mStaticDotRadius:I

.field private mVisualOverflowAdaption:F


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get3()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNDARK_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    return v0
.end method

.method static synthetic -get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;-><init>()V

    .line 76
    const-wide/16 v2, 0x64

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    .line 77
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v2, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    .line 95
    const-wide/16 v2, 0x32

    .line 88
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNDARK_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, -0x31000000

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 112
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 113
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 114
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 117
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 118
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 119
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 124
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setWillNotDraw(Z)V

    .line 127
    return-void
.end method

.method private findFirstViewIndexAfter(F)I
    .locals 3
    .param p1, "translationX"    # F

    .prologue
    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 272
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    .line 273
    return v0

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    return v2
.end method

.method private getActualPaddingEnd()F
    .locals 2

    .prologue
    .line 404
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 407
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return v0
.end method

.method private getActualPaddingStart()F
    .locals 2

    .prologue
    .line 411
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 414
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return v0
.end method

.method private getLayoutEnd()F
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private initDimens()V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90f00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    .line 133
    return-void
.end method

.method private isReplacingIcon(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 216
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/util/ArrayMap;

    if-nez v5, :cond_0

    .line 217
    return v6

    .line 219
    :cond_0
    instance-of v5, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v5, :cond_1

    .line 220
    return v6

    :cond_1
    move-object v1, p1

    .line 222
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 223
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 224
    .local v3, "sourceIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "groupKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 226
    .local v4, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    if-eqz v4, :cond_2

    .line 227
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 228
    .local v2, "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v5, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-static {v3, v5}, Landroid/graphics/drawable/IconCompat;->sameAs(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    const/4 v5, 0x1

    return v5

    .line 232
    .end local v2    # "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_2
    return v6
.end method


# virtual methods
.method public applyIconStates()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 180
    .local v1, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 177
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    :cond_1
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 185
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 186
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 176
    return-void
.end method

.method public calculateIconTranslations()V
    .locals 29

    .prologue
    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v23

    .line 296
    .local v23, "translationX":F
    const/4 v8, -0x1

    .line 297
    .local v8, "firstOverflowIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    .line 298
    .local v3, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    const/4 v15, 0x5

    .line 299
    .local v15, "maxVisibleIcons":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v14

    .line 300
    .local v14, "layoutEnd":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x400ccccd    # 2.2f

    mul-float v26, v26, v27

    sub-float v19, v14, v26

    .line 301
    .local v19, "overflowStart":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    const/4 v11, 0x1

    .line 302
    .local v11, "hasAmbient":Z
    :goto_1
    const/16 v25, 0x0

    .line 303
    .local v25, "visualOverflowStart":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v3, :cond_10

    .line 304
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 305
    .local v24, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 306
    .local v13, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move/from16 v0, v23

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v12, v0, :cond_7

    .line 308
    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_7

    .line 307
    const/4 v10, 0x1

    .line 309
    .local v10, "forceOverflow":Z
    :goto_3
    add-int/lit8 v26, v3, -0x1

    move/from16 v0, v26

    if-ne v12, v0, :cond_9

    const/16 v17, 0x1

    .line 310
    .local v17, "noOverflowAfter":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    move/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    move/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v26, v24

    .line 311
    check-cast v26, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleFullyDark()F

    move-result v7

    .line 313
    .local v7, "drawingScale":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_1

    .line 314
    if-eqz v17, :cond_0

    if-eqz v11, :cond_b

    :cond_0
    const/16 v17, 0x0

    .line 316
    :cond_1
    :goto_6
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 317
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_4

    if-nez v10, :cond_2

    .line 318
    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v14, v26

    :goto_7
    cmpl-float v26, v23, v26

    if-ltz v26, :cond_4

    .line 319
    :cond_2
    if-eqz v17, :cond_3

    if-eqz v10, :cond_d

    :cond_3
    move v8, v12

    .line 320
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    add-int v22, v26, v27

    .line 321
    .local v22, "totalDotLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x3f99999a    # 1.2f

    mul-float v26, v26, v27

    add-float v26, v26, v19

    .line 322
    div-int/lit8 v27, v22, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 321
    sub-float v26, v26, v27

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    .line 321
    sub-float v26, v26, v27

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 321
    add-float v25, v26, v27

    .line 324
    if-eqz v10, :cond_e

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    .line 325
    add-float v26, v26, v25

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 325
    add-float v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .line 331
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 334
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 335
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_4

    .line 336
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 337
    .local v9, "firstOverflowView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 338
    .local v20, "overflowState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v26, v0

    sub-float v21, v14, v26

    .line 339
    .local v21, "totalAmount":F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v27, v21, v27

    add-float v26, v26, v27

    .line 340
    div-int/lit8 v27, v22, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 339
    sub-float v26, v26, v27

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    .line 339
    sub-float v26, v26, v27

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 339
    add-float v16, v26, v27

    .line 342
    .local v16, "newPosition":F
    sub-float v26, v16, v25

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 343
    move/from16 v25, v16

    .line 349
    .end local v9    # "firstOverflowView":Landroid/view/View;
    .end local v16    # "newPosition":F
    .end local v20    # "overflowState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v21    # "totalAmount":F
    .end local v22    # "totalDotLength":I
    :cond_4
    :goto_a
    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, v7

    add-float v23, v23, v26

    .line 303
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 298
    .end local v7    # "drawingScale":F
    .end local v10    # "forceOverflow":Z
    .end local v11    # "hasAmbient":Z
    .end local v12    # "i":I
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v14    # "layoutEnd":F
    .end local v15    # "maxVisibleIcons":I
    .end local v17    # "noOverflowAfter":Z
    .end local v19    # "overflowStart":F
    .end local v24    # "view":Landroid/view/View;
    .end local v25    # "visualOverflowStart":F
    :cond_5
    move v15, v3

    .restart local v15    # "maxVisibleIcons":I
    goto/16 :goto_0

    .line 301
    .restart local v14    # "layoutEnd":F
    .restart local v19    # "overflowStart":F
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "hasAmbient":Z
    goto/16 :goto_1

    .line 308
    .restart local v12    # "i":I
    .restart local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .restart local v24    # "view":Landroid/view/View;
    .restart local v25    # "visualOverflowStart":F
    :cond_7
    if-lt v12, v15, :cond_8

    const/4 v10, 0x1

    .restart local v10    # "forceOverflow":Z
    goto/16 :goto_3

    .end local v10    # "forceOverflow":Z
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "forceOverflow":Z
    goto/16 :goto_3

    .line 309
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "noOverflowAfter":Z
    goto/16 :goto_4

    .line 312
    :cond_a
    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v7    # "drawingScale":F
    goto/16 :goto_5

    .line 314
    :cond_b
    if-nez v10, :cond_0

    const/16 v17, 0x1

    goto/16 :goto_6

    :cond_c
    move/from16 v26, v19

    .line 318
    goto/16 :goto_7

    .line 319
    :cond_d
    add-int/lit8 v8, v12, -0x1

    goto/16 :goto_8

    .line 328
    .restart local v22    # "totalDotLength":I
    :cond_e
    sub-float v26, v23, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 328
    mul-float v26, v26, v27

    add-float v25, v25, v26

    goto/16 :goto_9

    .line 346
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v27, v28, v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    goto :goto_a

    .line 351
    .end local v7    # "drawingScale":F
    .end local v10    # "forceOverflow":Z
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v17    # "noOverflowAfter":Z
    .end local v22    # "totalDotLength":I
    .end local v24    # "view":Landroid/view/View;
    :cond_10
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_14

    .line 352
    const/16 v18, 0x1

    .line 353
    .local v18, "numDots":I
    move/from16 v23, v25

    .line 354
    move v12, v8

    :goto_b
    if-ge v12, v3, :cond_14

    .line 355
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 356
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 357
    .restart local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v27, v0

    add-int v6, v26, v27

    .line 358
    .local v6, "dotWidth":I
    move/from16 v0, v23

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 359
    const/16 v26, 0x3

    move/from16 v0, v18

    move/from16 v1, v26

    if-gt v0, v1, :cond_13

    .line 360
    const/16 v26, 0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v26, v0

    const v27, 0x3f4ccccd    # 0.8f

    cmpg-float v26, v26, v27

    if-gez v26, :cond_12

    .line 361
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 362
    add-int/lit8 v18, v18, -0x1

    .line 366
    :goto_c
    const/16 v26, 0x3

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    mul-int/lit8 v6, v6, 0x3

    .end local v6    # "dotWidth":I
    :cond_11
    int-to-float v0, v6

    move/from16 v26, v0

    .line 367
    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v27, v0

    .line 366
    mul-float v26, v26, v27

    add-float v23, v23, v26

    .line 371
    :goto_d
    add-int/lit8 v18, v18, 0x1

    .line 354
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 364
    .restart local v6    # "dotWidth":I
    :cond_12
    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_c

    .line 369
    :cond_13
    const/16 v26, 0x2

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_d

    .line 374
    .end local v6    # "dotWidth":I
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v18    # "numDots":I
    .end local v24    # "view":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 375
    .local v2, "center":Z
    if-eqz v2, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v26

    cmpg-float v26, v23, v26

    if-gez v26, :cond_16

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v26

    sub-float v26, v26, v23

    const/high16 v27, 0x40000000    # 2.0f

    div-float v4, v26, v27

    .line 377
    .local v4, "delta":F
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_15

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v26

    sub-float v26, v26, v25

    const/high16 v27, 0x40000000    # 2.0f

    div-float v5, v26, v27

    .line 381
    .local v5, "deltaIgnoringOverflow":F
    add-float v26, v5, v4

    const/high16 v27, 0x40000000    # 2.0f

    div-float v4, v26, v27

    .line 383
    .end local v5    # "deltaIgnoringOverflow":F
    :cond_15
    const/4 v12, 0x0

    :goto_e
    if-ge v12, v3, :cond_16

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 385
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 386
    .restart local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v26, v0

    add-float v26, v26, v4

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 383
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 390
    .end local v4    # "delta":F
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v24    # "view":Landroid/view/View;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isLayoutRtl()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 391
    const/4 v12, 0x0

    :goto_f
    if-ge v12, v3, :cond_17

    .line 392
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 393
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 394
    .restart local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 391
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 294
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v24    # "view":Landroid/view/View;
    :cond_17
    return-void
.end method

.method public getActualWidth()I
    .locals 2

    .prologue
    .line 449
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    return v0

    .line 452
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    return v0
.end method

.method public getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    return-object v0
.end method

.method public getVisualOverflowAdaption()F
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    return v0
.end method

.method public hasOverflow()Z
    .locals 3

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 495
    .local v0, "width":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 148
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 142
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 139
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 156
    .local v0, "centerY":F
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 157
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 162
    .local v5, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 163
    .local v2, "height":I
    int-to-float v6, v2

    div-float/2addr v6, v8

    sub-float v6, v0, v6

    float-to-int v4, v6

    .line 164
    .local v4, "top":I
    add-int v6, v4, v2

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 165
    if-nez v3, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 157
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "height":I
    .end local v4    # "top":I
    .end local v5    # "width":I
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    if-eqz v6, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 153
    :cond_2
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v1

    .line 193
    .local v1, "isReplacingIcon":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v3, :cond_1

    .line 194
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    .line 195
    .local v2, "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-eqz v1, :cond_0

    .line 196
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 197
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v2    # "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 202
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    if-eqz v1, :cond_4

    .line 210
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v3, :cond_3

    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_3

    .line 211
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local p1    # "child":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v6, v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 190
    :cond_3
    return-void

    .line 203
    .restart local p1    # "child":Landroid/view/View;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 204
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_5

    .line 205
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    .line 207
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 237
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 238
    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_1

    .line 239
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v2

    .local v2, "isReplacingIcon":Z
    move-object v1, p1

    .line 240
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 241
    .local v1, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 241
    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->findFirstViewIndexAfter(F)I

    move-result v0

    .line 244
    .local v0, "animationStartIndex":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_2

    .line 245
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 250
    .end local v0    # "animationStartIndex":I
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    if-nez v2, :cond_1

    .line 253
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addTransientView(Landroid/view/View;I)V

    .line 255
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 254
    const/4 v4, 0x1

    invoke-virtual {v1, v5, v4, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    .line 236
    .end local v1    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v2    # "isReplacingIcon":Z
    :cond_1
    return-void

    .line 247
    .restart local v0    # "animationStartIndex":I
    .restart local v1    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v2    # "isReplacingIcon":Z
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0
.end method

.method public resetViewStates()V
    .locals 4

    .prologue
    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 282
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 283
    .local v1, "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 284
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 285
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setActualLayoutWidth(I)V
    .locals 0
    .param p1, "actualLayoutWidth"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 427
    return-void
.end method

.method public setActualPaddingEnd(F)V
    .locals 0
    .param p1, "paddingEnd"    # F

    .prologue
    .line 435
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 434
    return-void
.end method

.method public setActualPaddingStart(F)V
    .locals 0
    .param p1, "paddingStart"    # F

    .prologue
    .line 442
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 441
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 503
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    .line 504
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 505
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 506
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 507
    .local v1, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 509
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 504
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    .end local v2    # "i":I
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 502
    return-void
.end method

.method public setChangingViewPositions(Z)V
    .locals 0
    .param p1, "changingViewPositions"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    .line 455
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 5
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    const/4 v3, 0x1

    .line 460
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 461
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 463
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 464
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 465
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 466
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 467
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    .line 462
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_1
    move v2, v3

    .line 461
    goto :goto_0

    .line 459
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setOpenedAmount(F)V
    .locals 0
    .param p1, "expandAmount"    # F

    .prologue
    .line 482
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 481
    return-void
.end method

.method public setReplacingIcons(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "replacingIcons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/util/ArrayMap;

    .line 516
    return-void
.end method

.method public setShowAllIcons(Z)V
    .locals 0
    .param p1, "showAllIcons"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    .line 423
    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0
    .param p1, "speedBumpIndex"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 477
    return-void
.end method

.method public setVisualOverflowAdaption(F)V
    .locals 0
    .param p1, "visualOverflowAdaption"    # F

    .prologue
    .line 490
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 489
    return-void
.end method
