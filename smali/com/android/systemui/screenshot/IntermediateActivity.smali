.class public Lcom/android/systemui/screenshot/IntermediateActivity;
.super Landroid/app/Activity;
.source "IntermediateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/IntermediateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "Intent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 30
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 33
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.miui.gallery"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string/jumbo v2, "com.miui.gallery.extra.show_bars_when_enter"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/IntermediateActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/IntermediateActivity;->finish()V

    .line 26
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/IntermediateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "Intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 19
    .local v0, "newIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 20
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/IntermediateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 14
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
