.class Lcom/android/keyguard/faceunlock/Camera1Util$1;
.super Ljava/lang/Object;
.source "Camera1Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/faceunlock/Camera1Util;->openCamera(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/faceunlock/Camera1Util;

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/faceunlock/Camera1Util;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/faceunlock/Camera1Util;
    .param p2, "val$rotation"    # I

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera1Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera1Util;

    iput p2, p0, Lcom/android/keyguard/faceunlock/Camera1Util$1;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera1Util;

    iget v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util$1;->val$rotation:I

    invoke-static {v0, v1}, Lcom/android/keyguard/faceunlock/Camera1Util;->-wrap0(Lcom/android/keyguard/faceunlock/Camera1Util;I)V

    .line 88
    return-void
.end method
