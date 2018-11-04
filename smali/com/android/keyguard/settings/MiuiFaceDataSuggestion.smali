.class public Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiFaceDataSuggestion.java"


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->finish()V

    .line 67
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x904006b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->setContentView(I)V

    .line 25
    const v0, 0x9120177

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 26
    .local v6, "next":Landroid/widget/Button;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 28
    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$1;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;JJLandroid/widget/Button;)V

    invoke-virtual {v0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 21
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 57
    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 53
    :cond_0
    return-void
.end method
