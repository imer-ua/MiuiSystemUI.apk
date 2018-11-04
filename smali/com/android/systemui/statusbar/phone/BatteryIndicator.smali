.class public Lcom/android/systemui/statusbar/phone/BatteryIndicator;
.super Landroid/widget/ImageView;
.source "BatteryIndicator.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mClipWidth:I

.field private mDemoMode:Z

.field protected mDisabled:Z

.field protected mDisplayWidth:I

.field protected mIsCharging:Z

.field protected mIsExtremePowerSave:Z

.field protected mIsPowerSave:Z

.field protected final mLowLevel:I

.field protected mPowerLevel:I

.field private mShowBatteryIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisabled:Z

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    const v1, 0x11080003

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLowLevel:I

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateDisplaySize()V

    .line 32
    return-void
.end method

.method private postUpdate()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator$1;-><init>(Lcom/android/systemui/statusbar/phone/BatteryIndicator;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    .line 183
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setVisibility(I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 42
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsCharging:Z

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mPowerLevel:I

    if-eq v0, p1, :cond_1

    .line 70
    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsCharging:Z

    .line 71
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mPowerLevel:I

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    .line 68
    :cond_1
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1
    .param p1, "batteryStyle"    # I

    .prologue
    .line 78
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mShowBatteryIndicator:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    .line 77
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateDisplaySize()V

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->postUpdate()V

    .line 129
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 48
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateCanvas(Landroid/graphics/Canvas;)V

    .line 139
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 136
    return-void
.end method

.method public onExtremePowerSaveChanged(Z)V
    .locals 1
    .param p1, "isExtremePowerSave"    # Z

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsExtremePowerSave:Z

    if-eq p1, v0, :cond_0

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsExtremePowerSave:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    .line 60
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 121
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateDisplaySize()V

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->postUpdate()V

    .line 120
    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsPowerSave:Z

    if-eq p1, v0, :cond_0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsPowerSave:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->update()V

    .line 52
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateVisibility()V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->updateDrawable()V

    .line 82
    return-void
.end method

.method protected updateCanvas(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLeft:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mTop:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLeft:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 143
    :goto_0
    return-void

    .line 147
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mRight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mTop:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mRight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0
.end method

.method updateDisplaySize()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisplayWidth:I

    .line 115
    return-void
.end method

.method protected updateDrawable()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    if-eqz v4, :cond_0

    return-void

    .line 90
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisplayWidth:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mPowerLevel:I

    mul-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x64

    .line 91
    .local v2, "newClipWidth":I
    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    if-eq v4, v2, :cond_1

    .line 92
    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mClipWidth:I

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->invalidate()V

    .line 95
    :cond_1
    const v3, 0x902005f

    .line 96
    .local v3, "resId":I
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsCharging:Z

    if-nez v4, :cond_3

    .line 97
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsPowerSave:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mIsExtremePowerSave:Z

    if-eqz v4, :cond_5

    .line 98
    :cond_2
    const v3, 0x9020061

    .line 103
    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setImageResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 106
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x90c009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 108
    .local v0, "color":I
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 88
    .end local v0    # "color":I
    :cond_4
    :goto_1
    return-void

    .line 99
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mPowerLevel:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mLowLevel:I

    if-ge v4, v5, :cond_3

    .line 100
    const v3, 0x9020060

    goto :goto_0

    .line 110
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method protected updateVisibility()V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mShowBatteryIndicator:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->mDisabled:Z

    if-eqz v0, :cond_2

    .line 164
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setVisibility(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->clearAnimation()V

    .line 158
    :goto_0
    return-void

    .line 160
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-nez v0, :cond_1

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryIndicator;->setVisibility(I)V

    goto :goto_0
.end method
