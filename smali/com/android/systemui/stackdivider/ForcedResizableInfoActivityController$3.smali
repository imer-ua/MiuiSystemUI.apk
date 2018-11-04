.class Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityDismissingDockedStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 119
    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-get0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 120
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-get2(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3$1;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void

    .line 133
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 132
    :try_start_0
    invoke-static {v4, v5, v6}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 134
    .local v2, "fullscreenStackinfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 135
    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "curFullscreenTopPackageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-get1(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    .end local v0    # "curFullscreenTopPackageName":Ljava/lang/String;
    .end local v2    # "fullscreenStackinfo":Landroid/app/ActivityManager$StackInfo;
    :cond_1
    :goto_0
    return-void

    .line 137
    .restart local v0    # "curFullscreenTopPackageName":Ljava/lang/String;
    .restart local v2    # "fullscreenStackinfo":Landroid/app/ActivityManager$StackInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4, v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-set0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->-get2(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3$2;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$3;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0    # "curFullscreenTopPackageName":Ljava/lang/String;
    .end local v2    # "fullscreenStackinfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
