.class public Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
.super Ljava/lang/Object;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBack:I

.field private mBackAlt:I

.field private mBgColorRes:I

.field private mBgLand:I

.field private mBgLandCTS:I

.field private mBgPort:I

.field private mBgPortCTS:I

.field private mContext:Landroid/content/Context;

.field private mHome:I

.field private mRecent:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const v0, 0x90201ca

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBack:I

    .line 152
    const v0, 0x90201ce

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBackAlt:I

    .line 153
    const v0, 0x90201df

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mHome:I

    .line 154
    const v0, 0x90201ea

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mRecent:I

    .line 155
    const v0, 0x90201d4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPort:I

    .line 156
    const v0, 0x90201d7

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLand:I

    .line 157
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPortCTS:I

    .line 158
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLandCTS:I

    .line 159
    const v0, 0x90c00d3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgColorRes:I

    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mContext:Landroid/content/Context;

    .line 161
    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;
    .locals 3

    .prologue
    .line 211
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;)V

    .line 212
    .local v1, "suit":Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 213
    .local v0, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBack:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBack:Landroid/graphics/drawable/Drawable;

    .line 214
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBackAlt:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBackAlt:Landroid/graphics/drawable/Drawable;

    .line 215
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mHome:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mHome:Landroid/graphics/drawable/Drawable;

    .line 216
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mRecent:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mRecent:Landroid/graphics/drawable/Drawable;

    .line 217
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPort:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgPort:Landroid/graphics/drawable/Drawable;

    .line 218
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLand:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgLand:Landroid/graphics/drawable/Drawable;

    .line 219
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPortCTS:I

    if-eqz v2, :cond_0

    .line 220
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPortCTS:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgPortCTS:Landroid/graphics/drawable/Drawable;

    .line 222
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLandCTS:I

    if-eqz v2, :cond_1

    .line 223
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLandCTS:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgLandCTS:Landroid/graphics/drawable/Drawable;

    .line 225
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgColorRes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit;->mBgColor:I

    .line 226
    return-object v1
.end method

.method setBack(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0
    .param p1, "back"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBack:I

    .line 167
    return-object p0
.end method

.method setBackAlt(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0
    .param p1, "backAlt"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBackAlt:I

    .line 172
    return-object p0
.end method

.method setBgColorRes(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0
    .param p1, "bgColorRes"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgColorRes:I

    .line 207
    return-object p0
.end method

.method setBgLand(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0
    .param p1, "bgLand"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLand:I

    .line 192
    return-object p0
.end method

.method setBgLandCTS(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0
    .param p1, "bgLandCTS"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgLandCTS:I

    .line 202
    return-object p0
.end method

.method setBgPort(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0
    .param p1, "bgPort"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPort:I

    .line 187
    return-object p0
.end method

.method setBgPortCTS(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0
    .param p1, "bgPortCTS"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mBgPortCTS:I

    .line 197
    return-object p0
.end method

.method setHome(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0
    .param p1, "home"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mHome:I

    .line 177
    return-object p0
.end method

.method setRecent(I)Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;
    .locals 0
    .param p1, "recent"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$DrawableSuit$Builder;->mRecent:I

    .line 182
    return-object p0
.end method
