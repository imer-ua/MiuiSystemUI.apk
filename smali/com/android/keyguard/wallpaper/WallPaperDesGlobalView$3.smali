.class Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;
.super Landroid/os/AsyncTask;
.source "WallPaperDesGlobalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;->reportEvent(Landroid/content/Context;Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;I)V
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
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$eventCode:I

.field final synthetic val$wallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;ILandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;
    .param p2, "val$wallpaperInfo"    # Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;
    .param p3, "val$eventCode"    # I
    .param p4, "val$applicationContext"    # Landroid/content/Context;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->this$0:Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->val$wallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iput p3, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->val$eventCode:I

    iput-object p4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 465
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v2, "requestJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "wallpaperId"

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->val$wallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v5, v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v4, "eventCode"

    iget v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->val$eventCode:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 471
    const-string/jumbo v4, "request_json"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->val$wallpaperInfo:Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;

    iget-object v5, v5, Lcom/android/keyguard/wallpaper/mode/WallpaperInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 473
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/WallPaperDesGlobalView$3;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "threadRecordEvent"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v2    # "requestJson":Lorg/json/JSONObject;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v7

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
