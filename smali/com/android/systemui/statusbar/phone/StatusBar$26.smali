.class Lcom/android/systemui/statusbar/phone/StatusBar$26;
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
    .line 7113
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7116
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7117
    const-string/jumbo v3, "miui_optimization"

    const/4 v4, -0x2

    .line 7116
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    .line 7118
    .local v0, "disabled":Z
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/Util;->setMiuiOptimizationDisabled(Z)V

    .line 7119
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get28(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7120
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7115
    :cond_0
    return-void

    .end local v0    # "disabled":Z
    :cond_1
    move v0, v1

    .line 7116
    goto :goto_0
.end method
