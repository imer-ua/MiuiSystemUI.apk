.class Lcom/android/systemui/statusbar/phone/StatusBar$39;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/service/vr/IVrManagerCompat$IVrManagerCompatCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVrMode:Z

    .line 1112
    return-void
.end method
