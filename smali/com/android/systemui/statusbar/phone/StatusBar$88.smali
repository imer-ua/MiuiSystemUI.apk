.class Lcom/android/systemui/statusbar/phone/StatusBar$88;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->logNotificationExpansion(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$expanded:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$userAction:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "val$key"    # Ljava/lang/String;
    .param p3, "val$userAction"    # Z
    .param p4, "val$expanded"    # Z

    .prologue
    .line 9261
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->val$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->val$userAction:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->val$expanded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 9264
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->val$key:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->val$userAction:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$88;->val$expanded:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9262
    :goto_0
    return-void

    .line 9265
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
