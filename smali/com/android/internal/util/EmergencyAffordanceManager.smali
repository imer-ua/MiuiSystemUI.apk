.class public Lcom/android/internal/util/EmergencyAffordanceManager;
.super Ljava/lang/Object;
.source "EmergencyAffordanceManager.java"


# instance fields
.field private mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/android/internal/policy/EmergencyAffordanceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    .line 8
    return-void
.end method


# virtual methods
.method public needsEmergencyAffordance()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    return v0
.end method

.method public final performEmergencyCall()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 13
    return-void
.end method
