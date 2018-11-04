.class Lcom/android/systemui/statusbar/phone/StatusBar$63;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$callback"    # Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .prologue
    .line 4819
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 4822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 4823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$intent:Landroid/content/Intent;

    .line 4824
    const/high16 v1, 0x14000000

    .line 4823
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4825
    const/4 v14, -0x6

    .line 4826
    .local v14, "result":I
    new-instance v13, Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 4827
    .local v13, "options":Landroid/app/ActivityOptions;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$intent:Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v1, :cond_0

    .line 4836
    const/4 v0, 0x3

    invoke-static {v13, v0}, Landroid/app/ActivityOptionsCompat;->setRotationAnimationHint(Landroid/app/ActivityOptions;I)V

    .line 4840
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4841
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 4842
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$intent:Landroid/content/Intent;

    .line 4843
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 4845
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 4841
    const/4 v1, 0x0

    .line 4844
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    .line 4840
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 4849
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    if-eqz v0, :cond_1

    .line 4850
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-interface {v0, v14}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 4821
    :cond_1
    return-void

    .line 4846
    :catch_0
    move-exception v12

    .line 4847
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "Unable to start activity"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
