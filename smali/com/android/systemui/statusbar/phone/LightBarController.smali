.class public Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "LightBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mDockedLight:Z

.field private mDockedStackBounds:Landroid/graphics/Rect;

.field private mDockedStackVisibility:I

.field private mDriveMode:Z

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mForceBlack:Z

.field private mFullScreenStackBounds:Landroid/graphics/Rect;

.field private mFullscreenLight:Z

.field private mFullscreenStackVisibility:I

.field private mHasLightNavigationBar:Z

.field private final mLastDockedBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenBounds:Landroid/graphics/Rect;

.field private mLastNavigationBarMode:I

.field private mLastStatusBarMode:I

.field private mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mNavigationLight:Z

.field private mScrimAlpha:F

.field private mScrimAlphaBelowThreshold:Z

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mSystemUiVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 79
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    .line 80
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method private animateChange()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-nez v3, :cond_0

    .line 167
    return v2

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    .line 170
    .local v0, "unlockMode":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 171
    if-eq v0, v1, :cond_1

    .line 170
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 171
    goto :goto_0

    :cond_2
    move v1, v2

    .line 170
    goto :goto_0
.end method

.method private isLight(III)Z
    .locals 5
    .param p1, "vis"    # I
    .param p2, "barMode"    # I
    .param p3, "flag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 158
    const/4 v4, 0x4

    if-eq p2, v4, :cond_0

    .line 159
    const/4 v4, 0x6

    if-ne p2, v4, :cond_1

    .line 160
    .local v1, "isTransparentBar":Z
    :cond_0
    :goto_0
    move v0, v1

    .line 161
    .local v0, "allowLight":Z
    and-int v4, p1, p3

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 162
    .local v2, "light":Z
    :goto_1
    if-eqz v0, :cond_3

    .end local v2    # "light":Z
    :goto_2
    return v2

    .end local v0    # "allowLight":Z
    .end local v1    # "isTransparentBar":Z
    :cond_1
    move v1, v3

    .line 159
    goto :goto_0

    .line 161
    .restart local v0    # "allowLight":Z
    .restart local v1    # "isTransparentBar":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "light":Z
    goto :goto_1

    :cond_3
    move v2, v3

    .line 162
    goto :goto_2
.end method

.method private reevaluate()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 141
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 142
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 143
    iget v7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    move-object v0, p0

    .line 141
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    .line 144
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 145
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    .line 144
    invoke-virtual {p0, v0, v3, v6, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    .line 140
    return-void
.end method

.method private updateNavigation()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 215
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v2

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 212
    :cond_0
    return-void
.end method

.method private updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p2, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 175
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    .line 176
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 177
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 179
    .local v1, "hasDockedStack":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDriveMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceBlack:Z

    if-eqz v2, :cond_2

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 174
    :goto_1
    return-void

    .line 177
    .end local v1    # "hasDockedStack":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "hasDockedStack":Z
    goto :goto_0

    .line 184
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-nez v2, :cond_7

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_4

    if-eqz v1, :cond_7

    .line 193
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-eqz v2, :cond_8

    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_6

    if-eqz v1, :cond_8

    .line 201
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_9

    move-object v0, p1

    .line 202
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 207
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setDarkMode(Z)V

    goto :goto_1

    .line 185
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setDarkMode(Z)V

    goto :goto_1

    .line 194
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    .line 194
    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setDarkMode(Z)V

    goto :goto_1

    :cond_9
    move-object v0, p2

    .line 201
    goto :goto_2

    .line 205
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    goto :goto_3
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 249
    const-string/jumbo v0, "LightBarController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v0, " mSystemUiVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, " mFullscreenStackVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v0, " mDockedStackVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v0, " mFullscreenLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 258
    const-string/jumbo v0, " mDockedLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 260
    const-string/jumbo v0, " mLastFullscreenBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 261
    const-string/jumbo v0, " mLastDockedBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 263
    const-string/jumbo v0, " mNavigationLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 264
    const-string/jumbo v0, " mHasLightNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 266
    const-string/jumbo v0, " mLastStatusBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 267
    const-string/jumbo v0, " mLastNavigationBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 269
    const-string/jumbo v0, " mScrimAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 270
    const-string/jumbo v0, " mScrimAlphaBelowThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 271
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 272
    const-string/jumbo v0, " StatusBarTransitionsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 275
    const-string/jumbo v0, " NavigationBarTransitionsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 248
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 220
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 0
    .param p1, "batteryStyle"    # I

    .prologue
    .line 235
    return-void
.end method

.method public onExtremePowerSaveChanged(Z)V
    .locals 0
    .param p1, "isExtremePowerSave"    # Z

    .prologue
    .line 230
    return-void
.end method

.method public onNavigationVisibilityChanged(IIZI)V
    .locals 7
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "nbModeChanged"    # Z
    .param p4, "navigationBarMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 123
    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 124
    .local v3, "oldVis":I
    not-int v5, p2

    and-int/2addr v5, v3

    and-int v6, p1, p2

    or-int v2, v5, v6

    .line 125
    .local v2, "newVis":I
    xor-int v0, v2, v3

    .line 126
    .local v0, "diffVis":I
    and-int/lit8 v5, v0, 0x10

    if-nez v5, :cond_0

    if-eqz p3, :cond_2

    .line 128
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 130
    .local v1, "last":Z
    const/16 v5, 0x10

    .line 129
    invoke-direct {p0, p1, p4, v5}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 131
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v5, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 132
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eq v4, v1, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 136
    .end local v1    # "last":Z
    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 137
    iput p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    .line 122
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 225
    return-void
.end method

.method public onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 8
    .param p1, "fullscreenStackVis"    # I
    .param p2, "dockedStackVis"    # I
    .param p3, "mask"    # I
    .param p4, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p5, "dockedStackBounds"    # Landroid/graphics/Rect;
    .param p6, "sbModeChanged"    # Z
    .param p7, "statusBarMode"    # I

    .prologue
    .line 96
    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 97
    .local v5, "oldFullscreen":I
    not-int v6, p3

    and-int/2addr v6, v5

    and-int v7, p1, p3

    or-int v3, v6, v7

    .line 98
    .local v3, "newFullscreen":I
    xor-int v1, v3, v5

    .line 99
    .local v1, "diffFullscreen":I
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 100
    .local v4, "oldDocked":I
    not-int v6, p3

    and-int/2addr v6, v4

    and-int v7, p2, p3

    or-int v2, v6, v7

    .line 101
    .local v2, "newDocked":I
    xor-int v0, v2, v4

    .line 102
    .local v0, "diffDocked":I
    and-int/lit16 v6, v1, 0x2000

    if-nez v6, :cond_0

    .line 103
    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_1

    .line 109
    :cond_0
    const/16 v6, 0x2000

    .line 108
    invoke-direct {p0, v3, p7, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    .line 110
    const/16 v6, 0x2000

    invoke-direct {p0, v2, p7, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    .line 111
    invoke-direct {p0, p4, p5}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 114
    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 115
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 116
    iput p7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    .line 117
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 118
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 95
    return-void

    .line 102
    :cond_1
    if-nez p6, :cond_0

    .line 105
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public setDriveMode(Z)V
    .locals 0
    .param p1, "driveMode"    # Z

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDriveMode:Z

    .line 238
    return-void
.end method

.method public setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p1, "fingerprintUnlockController"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 89
    return-void
.end method

.method public setForceBlack(Z)V
    .locals 2
    .param p1, "forceBlack"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceBlack:Z

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 242
    return-void
.end method

.method public setScrimAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 149
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    .line 151
    .local v0, "belowThresholdBefore":Z
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    .line 152
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    if-eq v0, v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 148
    :cond_0
    return-void

    .line 151
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
