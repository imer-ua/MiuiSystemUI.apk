.class public Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiFaceDataIntroduction.java"


# instance fields
.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-super {p0, p1, p2, p3}, Lmiui/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 50
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;->setResult(I)V

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;->finish()V

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;->setResult(I)V

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x904006a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;->setContentView(I)V

    .line 30
    const v0, 0x9120176

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;->mNextButton:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;->mNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/settings/MiuiFaceDataIntroduction$1;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataIntroduction;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
