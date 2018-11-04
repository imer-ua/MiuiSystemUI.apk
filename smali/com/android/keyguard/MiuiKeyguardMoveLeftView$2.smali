.class Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;
.super Ljava/lang/Object;
.source "MiuiKeyguardMoveLeftView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiKeyguardMoveLeftView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v4, "com.android.contacts"

    goto/16 :goto_4

    :pswitch_1
    const-string v4, "com.android.mms"

    goto/16 :goto_4

    :pswitch_2
    const-string v4, "com.miui.calculator"

    goto/16 :goto_4

    :pswitch_3
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "torch_state"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 406
    .local v1, "enable":Z
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .restart local v2
    const-string/jumbo v6, "miui.intent.extra.IS_ENABLE"

    if-eqz v1, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get25(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v1, :cond_2

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    .line 405
    .end local v1    # "enable":Z
    .end local v2
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enable":Z
    goto :goto_1

    .restart local v2
    :cond_1
    move v3, v5

    .line 407
    goto :goto_2

    :cond_2
    move v4, v5

    .line 409
    goto :goto_3

    .line 413
    .end local v1    # "enable":Z
    .end local v2
    :pswitch_4
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->DEFAULT_FASHIONGALLERY_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    const-string/jumbo v3, "miui_keyguard"

    const-string/jumbo v4, "left view goto lock screen wall paper"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap2(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)V

    .line 417
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isKeyguardWallpaperPreviewAvailable()Z

    move-result v3

    invoke-static {v3}, Lcom/android/keyguard/AnalyticsHelper;->recordLeftLockscreenMagazineButton(Z)V

    .line 418
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-virtual {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->hideLockScreenInActivityManager()V

    .line 419
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "leftLockScreen"

    invoke-static {v3, v4}, Lcom/android/keyguard/MiuiKeyguardUtils;->gotoLockScreenWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :cond_3
    invoke-static {}, Lcom/android/keyguard/AnalyticsHelper;->recordDownloadLockScreenMagazine()V

    .line 423
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    const v4, 0x91201a0

    invoke-static {v3, v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap3(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;I)V

    goto/16 :goto_0

    .line 369
    nop

    :goto_4
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$2;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get23(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x912019c
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
