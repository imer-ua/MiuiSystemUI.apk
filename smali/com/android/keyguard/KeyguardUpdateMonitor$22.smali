.class Lcom/android/keyguard/KeyguardUpdateMonitor$22;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1874
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get5(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->hasInit()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1875
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get2(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1876
    .local v0, "faceUnlockView":Landroid/view/TextureView;
    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1877
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get5(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get4(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->startFaceUnlock(Landroid/view/TextureView;Lcom/android/keyguard/faceunlock/FaceUnlockCallback;)V

    .line 1873
    .end local v0    # "faceUnlockView":Landroid/view/TextureView;
    :goto_0
    return-void

    .line 1879
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set3(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 1880
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string/jumbo v2, "in"

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap26(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto :goto_0
.end method
