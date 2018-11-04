.class public Lcom/android/systemui/statusbar/phone/BatteryIcon;
.super Ljava/lang/Object;
.source "BatteryIcon.java"


# static fields
.field private static sBatteryIcon:Lcom/android/systemui/statusbar/phone/BatteryIcon;


# instance fields
.field private final BATTERY_RANGE_LOAD:I

.field private mBatteryColumns:I

.field private mChargeDarkLevel:I

.field private mChargeLevel:I

.field private mContext:Landroid/content/Context;

.field private mDarkLevel:I

.field private mDigitalDarkLevel:I

.field private mDigitalLevel:I

.field private mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mLevel:I

.field private mPowerSaveDarkLevel:I

.field private mPowerSaveLevel:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    .line 42
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    .line 43
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    .line 44
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    .line 45
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    .line 46
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    .line 48
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->BATTERY_RANGE_LOAD:I

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x90e003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mBatteryColumns:I

    .line 59
    return-void
.end method

.method private extractDrawable(I)Ljava/util/ArrayList;
    .locals 22
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v19, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 185
    .local v18, "res":Landroid/content/res/Resources;
    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    .line 186
    .local v21, "value":Landroid/util/TypedValue;
    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v16

    .line 187
    .local v16, "is":Ljava/io/InputStream;
    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 189
    .local v3, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    if-nez v3, :cond_0

    .line 195
    return-object v19

    .line 190
    :catch_0
    move-exception v13

    .line 191
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v13    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v10, 0x0

    .line 199
    .local v10, "iconUnit":I
    move-object/from16 v0, v21

    iget v12, v0, Landroid/util/TypedValue;->density:I

    .line 200
    .local v12, "density":I
    const/16 v5, 0xf0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 201
    const/16 v5, 0xf0

    if-ne v12, v5, :cond_1

    .line 202
    const/16 v10, 0x26

    .line 212
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mBatteryColumns:I

    div-int v6, v5, v7

    .line 213
    .local v6, "iconWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int v20, v5, v10

    .line 214
    .local v20, "rowCount":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v11, v5, v6

    .line 215
    .local v11, "columnCount":I
    mul-int v5, v10, v6

    new-array v4, v5, [I

    .line 216
    .local v4, "pixels":[I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 217
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v11, :cond_4

    .line 218
    mul-int v7, v17, v6

    mul-int v8, v14, v10

    const/4 v5, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 219
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    move v7, v6

    move v8, v10

    invoke-static/range {v4 .. v9}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 220
    .local v15, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v15, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 221
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 203
    .end local v4    # "pixels":[I
    .end local v6    # "iconWidth":I
    .end local v11    # "columnCount":I
    .end local v14    # "i":I
    .end local v15    # "icon":Landroid/graphics/Bitmap;
    .end local v17    # "j":I
    .end local v20    # "rowCount":I
    :cond_1
    const/16 v5, 0x140

    if-ne v12, v5, :cond_2

    .line 204
    const/16 v10, 0x32

    goto :goto_1

    .line 205
    :cond_2
    const/16 v5, 0x280

    if-ne v12, v5, :cond_3

    .line 206
    const/16 v10, 0x48

    goto :goto_1

    .line 209
    :cond_3
    const/16 v10, 0x3c

    goto :goto_1

    .line 216
    .restart local v4    # "pixels":[I
    .restart local v6    # "iconWidth":I
    .restart local v11    # "columnCount":I
    .restart local v14    # "i":I
    .restart local v17    # "j":I
    .restart local v20    # "rowCount":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 224
    .end local v17    # "j":I
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    return-object v19
.end method

.method private generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;
    .locals 12
    .param p1, "resId"    # I
    .param p2, "level"    # I
    .param p3, "plugged"    # Z

    .prologue
    .line 154
    new-instance v7, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 156
    .local v7, "result":Landroid/graphics/drawable/LevelListDrawable;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->extractDrawable(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .local v2, "drawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 158
    .local v0, "count":I
    if-lez v0, :cond_6

    .line 160
    const v9, 0x3ecccccd    # 0.4f

    .line 161
    .local v9, "sum":F
    int-to-float v10, v0

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v1, v11, v10

    .line 162
    .local v1, "delta":F
    if-eqz p3, :cond_1

    move v8, p2

    .line 163
    .local v8, "start":I
    :goto_0
    if-eqz p3, :cond_4

    add-int/lit8 v10, p2, 0xa

    const/16 v11, 0x64

    if-le v10, v11, :cond_3

    const/16 v3, 0x64

    .line 164
    .local v3, "end":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_6

    .line 165
    float-to-int v6, v9

    .line 166
    .local v6, "low":I
    add-float v10, v9, v1

    float-to-int v4, v10

    .line 167
    .local v4, "high":I
    if-lt v4, v8, :cond_0

    if-le v6, v3, :cond_5

    .line 168
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v7, v6, v4, v10}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 173
    :goto_3
    add-float/2addr v9, v1

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 162
    .end local v3    # "end":I
    .end local v4    # "high":I
    .end local v5    # "i":I
    .end local v6    # "low":I
    .end local v8    # "start":I
    :cond_1
    add-int/lit8 v10, p2, -0xa

    if-gez v10, :cond_2

    const/4 v8, 0x0

    .restart local v8    # "start":I
    goto :goto_0

    .end local v8    # "start":I
    :cond_2
    add-int/lit8 v8, p2, -0xa

    .restart local v8    # "start":I
    goto :goto_0

    .line 163
    :cond_3
    add-int/lit8 v3, p2, 0xa

    .restart local v3    # "end":I
    goto :goto_1

    .end local v3    # "end":I
    :cond_4
    move v3, p2

    .restart local v3    # "end":I
    goto :goto_1

    .line 171
    .restart local v4    # "high":I
    .restart local v5    # "i":I
    .restart local v6    # "low":I
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6, v4, v10}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 176
    .end local v1    # "delta":F
    .end local v3    # "end":I
    .end local v4    # "high":I
    .end local v5    # "i":I
    .end local v6    # "low":I
    .end local v8    # "start":I
    .end local v9    # "sum":F
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/LevelListDrawable;->setAutoMirrored(Z)V

    .line 177
    return-object v7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->sBatteryIcon:Lcom/android/systemui/statusbar/phone/BatteryIcon;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->sBatteryIcon:Lcom/android/systemui/statusbar/phone/BatteryIcon;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->sBatteryIcon:Lcom/android/systemui/statusbar/phone/BatteryIcon;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 230
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 231
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 232
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 233
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 234
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 235
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 236
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 237
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 239
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    .line 240
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    .line 241
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    .line 242
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    .line 243
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    .line 244
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    .line 245
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    .line 246
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    .line 229
    return-void
.end method

.method public getGraphicChargeIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    sub-int v0, p1, v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 110
    :cond_0
    :goto_0
    const v0, 0x90a0007

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 111
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0

    .line 109
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public getGraphicChargeIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 118
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    sub-int v1, p1, v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 119
    :cond_0
    :goto_0
    const v1, 0x90a0008

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 120
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    .line 122
    :cond_1
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 124
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    .end local v0    # "color":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object v1

    .line 118
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    sub-int v1, p1, v1

    if-gez v1, :cond_1

    goto :goto_0

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public getGraphicDigitalIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 87
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    sub-int/2addr v0, p1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 88
    :cond_0
    :goto_0
    const v0, 0x90a000a

    invoke-direct {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 89
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0

    .line 87
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public getGraphicDigitalIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 95
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    sub-int/2addr v1, p1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 96
    :cond_0
    :goto_0
    const v1, 0x90a000b

    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 97
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    .line 99
    :cond_1
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 101
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    .end local v0    # "color":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object v1

    .line 95
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    sub-int/2addr v1, p1

    if-gez v1, :cond_1

    goto :goto_0

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public getGraphicIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    sub-int/2addr v0, p1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 66
    :cond_0
    :goto_0
    const v0, 0x90a0006

    invoke-direct {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0

    .line 65
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public getGraphicIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 73
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    sub-int/2addr v1, p1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 74
    :cond_0
    :goto_0
    const v1, 0x90a0009

    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 75
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 79
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 83
    .end local v0    # "color":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object v1

    .line 73
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    sub-int/2addr v1, p1

    if-gez v1, :cond_1

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public getGraphicPowerSaveIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 132
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    sub-int v0, p1, v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 133
    :cond_0
    :goto_0
    const v0, 0x90a000c

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    .line 134
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0

    .line 132
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public getGraphicPowerSaveIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 140
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    sub-int v1, p1, v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 141
    :cond_0
    :goto_0
    const v1, 0x90a000f

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    .line 142
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    .line 144
    :cond_1
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x90c009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 146
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 150
    .end local v0    # "color":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object v1

    .line 140
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    sub-int v1, p1, v1

    if-gez v1, :cond_1

    goto :goto_0

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method
