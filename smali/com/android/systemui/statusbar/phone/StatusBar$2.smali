.class Lcom/android/systemui/statusbar/phone/StatusBar$2;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    .line 663
    sget-boolean v2, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 664
    .local v0, "default_value":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 665
    const-string/jumbo v3, "upload_log_pref"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    .line 664
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 666
    .local v1, "enable":Z
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/Util;->setUserExperienceProgramEnabled(Z)V

    .line 662
    return-void

    .line 663
    .end local v0    # "default_value":I
    .end local v1    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "default_value":I
    goto :goto_0

    .line 664
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
