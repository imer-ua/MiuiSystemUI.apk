.class final Lcom/android/systemui/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/Util;->playRingtoneAsync(Landroid/content/Context;Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$streamType:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$uri"    # Landroid/net/Uri;
    .param p3, "val$streamType"    # I

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/systemui/Util$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/Util$2;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/android/systemui/Util$2;->val$streamType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/Util$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/Util$2;->val$uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 180
    .local v1, "ringtone":Landroid/media/Ringtone;
    if-eqz v1, :cond_1

    .line 181
    iget v2, p0, Lcom/android/systemui/Util$2;->val$streamType:I

    if-ltz v2, :cond_0

    .line 182
    iget v2, p0, Lcom/android/systemui/Util$2;->val$streamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 184
    :cond_0
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "ringtone":Landroid/media/Ringtone;
    :cond_1
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error playing ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/Util$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
