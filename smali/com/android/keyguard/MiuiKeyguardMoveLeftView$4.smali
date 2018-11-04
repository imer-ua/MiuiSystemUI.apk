.class Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;
.super Landroid/os/AsyncTask;
.source "MiuiKeyguardMoveLeftView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->initLeftView()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 186
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get4(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/hardware/ConsumerIrManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 187
    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v5, "consumer_ir"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ConsumerIrManager;

    invoke-static {v4, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-set0(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Landroid/hardware/ConsumerIrManager;)Landroid/hardware/ConsumerIrManager;

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get4(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/hardware/ConsumerIrManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get4(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/hardware/ConsumerIrManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-set1(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Z)Z

    .line 193
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v5, "com.miui.tsmclient"

    invoke-static {v1, v5}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v5, "com.miui.tsmclient"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v5, 0x12

    if-lt v1, v5, :cond_2

    move v1, v2

    .line 193
    :goto_0
    invoke-static {v4, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-set6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_2
    move v1, v3

    .line 194
    goto :goto_0

    :cond_3
    move v1, v3

    .line 193
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MiuiKeyguardMoveLeftView"

    const-string/jumbo v3, "cannot find TSMClient Package"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    .line 201
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2, v5}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-set2(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;I)I

    .line 202
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get8(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get15(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;ZLandroid/view/View;)V

    .line 203
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get24(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get14(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;ZLandroid/view/View;)V

    .line 204
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap0(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get20(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;ZLandroid/view/View;)V

    .line 205
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap1(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get10(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;ZLandroid/view/View;)V

    .line 207
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get3(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get3(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 210
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get26(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I

    move-result v3

    .line 211
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get9(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I

    move-result v2

    const/4 v4, 0x2

    if-gt v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get28(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I

    move-result v2

    .line 212
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get27(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I

    move-result v4

    .line 210
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 213
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get3(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get8(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get0()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/database/ContentObserver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get24(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get1()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/database/ContentObserver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap0(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get2()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/database/ContentObserver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_3
    :goto_1
    return-void

    .line 211
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get7(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)I

    move-result v2

    goto/16 :goto_0

    .line 227
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 200
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
