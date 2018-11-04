.class public Lcom/android/systemui/statusbar/NetworkTypeUtils;
.super Ljava/lang/Object;
.source "NetworkTypeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataNetTypeFromServiceState(ILandroid/telephony/ServiceState;)I
    .locals 4
    .param p0, "srcDataNetType"    # I
    .param p1, "sState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 15
    move v0, p0

    .line 16
    .local v0, "destDataNetType":I
    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    .line 17
    const/16 v1, 0x13

    if-ne p0, v1, :cond_1

    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    const/16 v0, 0x13

    .line 25
    :cond_1
    :goto_0
    const-string/jumbo v1, "NetworkTypeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDataNetTypeFromServiceState:srcDataNetType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 26
    const-string/jumbo v3, ", destDataNetType "

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return v0

    .line 21
    :cond_2
    const/16 v0, 0xd

    goto :goto_0
.end method
