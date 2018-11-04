.class public Lcom/android/internal/policy/EmergencyAffordanceManager;
.super Ljava/lang/Object;
.source "EmergencyAffordanceManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/internal/policy/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public needsEmergencyAffordance()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public final performEmergencyCall()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "tel:112"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lcom/android/internal/policy/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 16
    return-void
.end method
