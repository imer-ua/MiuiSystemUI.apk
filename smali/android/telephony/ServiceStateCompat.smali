.class public Landroid/telephony/ServiceStateCompat;
.super Ljava/lang/Object;
.source "ServiceStateCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUsingCarrierAggregation(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p0, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 8
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    return v0
.end method
