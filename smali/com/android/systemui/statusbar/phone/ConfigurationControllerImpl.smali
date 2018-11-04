.class public Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "ConfigurationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController;
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# instance fields
.field private mDensity:I

.field private mFontScale:F

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 37
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    .line 38
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    .line 39
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mPreviousConfig:Landroid/content/res/Configuration;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mPreviousConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 35
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    .line 63
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 45
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 46
    .local v3, "l":Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
    invoke-interface {v3, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 48
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 49
    .local v2, "fontScale":F
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 50
    .local v1, "density":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mPreviousConfig:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 51
    .local v0, "changes":I
    const/high16 v6, -0x80000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_2

    .line 52
    iget-object v6, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-wide v6, v6, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-static {v6, v7}, Landroid/content/res/MiuiConfiguration;->needRestartStatusBar(J)Z

    move-result v5

    .line 53
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    if-ne v1, v6, :cond_1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_3

    .line 54
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 55
    .restart local v3    # "l":Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onDensityOrFontScaleChanged()V

    goto :goto_2

    .line 51
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
    :cond_2
    const/4 v5, 0x0

    .local v5, "themeChange":Z
    goto :goto_1

    .line 53
    .end local v5    # "themeChange":Z
    :cond_3
    if-nez v5, :cond_1

    .line 44
    :goto_3
    return-void

    .line 57
    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mDensity:I

    .line 58
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mFontScale:F

    goto :goto_3
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method
