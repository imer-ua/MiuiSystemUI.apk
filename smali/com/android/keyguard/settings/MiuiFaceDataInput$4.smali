.class Lcom/android/keyguard/settings/MiuiFaceDataInput$4;
.super Ljava/lang/Object;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataInput;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/settings/MiuiFaceDataInput;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$4;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$4;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    invoke-static {v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-get0(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->closeCamera()V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput$4;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataInput;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->-set1(Lcom/android/keyguard/settings/MiuiFaceDataInput;Z)Z

    .line 196
    return-void
.end method
