.class Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;
.super Landroid/os/AsyncTask;
.source "KeyguardWallpaperCarouselController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->updateWallpaperPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

.field final synthetic val$maybeQueryWallpaperInfo:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;
    .param p2, "val$maybeQueryWallpaperInfo"    # Z

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->val$maybeQueryWallpaperInfo:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 187
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    sget-boolean v2, Lcom/android/systemui/Constants;->IS_TABLET:Z

    if-nez v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->useSystemLiveWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-set1(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;Z)Z

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get7(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Z

    move-result v0

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isKeyguardWallpaperPreviewAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get7(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->setKeyguardWallpaperPreviewAvailability(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get7(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    const-string/jumbo v0, "keyguard_close_lockscreen_magazine"

    invoke-static {v0}, Lcom/android/keyguard/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get7(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->val$maybeQueryWallpaperInfo:Z

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canDisplayOfWallpaperInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    :cond_2
    :goto_1
    return-object v6

    .line 190
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardUtils;->useLockLiveWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    const-string/jumbo v2, "com.miui.gallery.cloud.baby.wallpaper_provider"

    .line 192
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 193
    const-string/jumbo v4, "lock_wallpaper_provider_authority"

    .line 194
    const/4 v5, -0x2

    .line 191
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/content/Context;

    move-result-object v2

    .line 196
    sget-object v3, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->DEFAULT_FASHIONGALLERY_PACKAGE_NAME:Ljava/lang/String;

    .line 195
    invoke-static {v2, v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 188
    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v2

    .line 188
    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-wrap0(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->queryWallpaperInfo()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 217
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get7(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->val$maybeQueryWallpaperInfo:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canDisplayOfWallpaperInfo()Z

    move-result v0

    .line 218
    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->isLockScreenMagazine:Z

    .line 218
    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;->-get5(Lcom/android/systemui/statusbar/KeyguardWallpaperCarouselController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyWallpaperInfoChanged()V

    .line 217
    :cond_0
    return-void
.end method
