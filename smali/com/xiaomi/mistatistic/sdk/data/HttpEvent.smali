.class public Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;
.super Ljava/lang/Object;
.source "HttpEvent.java"


# instance fields
.field private exceptionName:Ljava/lang/String;

.field private firstPacketCost:J

.field private flowStatus:I

.field private ip:Ljava/lang/String;

.field private net:Ljava/lang/String;

.field private netFlow:J

.field private operator:Ljava/lang/String;

.field private reqId:Ljava/lang/String;

.field private responseCode:I

.field private time:J

.field private timeCost:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v7, p5

    .line 48
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    .line 52
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    .line 54
    iput p6, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    .line 55
    iput-object p7, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    .line 56
    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    .line 57
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setNet()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 157
    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    if-eqz v1, :cond_1

    .line 160
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    .line 161
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    return v0

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    .line 162
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    .line 165
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFirstPacketCost(J)V
    .locals 1

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    .line 78
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setNet()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    const-string/jumbo v1, "WIFI"

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NULL"

    .line 87
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "NULL"

    .line 92
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 99
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->operator:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "net"

    .line 115
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_5

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    const-string/jumbo v2, "cost"

    .line 117
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    :cond_0
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_6

    move v2, v1

    :goto_1
    if-nez v2, :cond_1

    const-string/jumbo v2, "first_byte_t"

    .line 121
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    :cond_1
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    .line 127
    :goto_2
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 131
    :goto_3
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->operator:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 135
    :goto_4
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v0, "flow"

    .line 136
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 139
    :cond_3
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    if-ne v0, v1, :cond_a

    :cond_4
    const-string/jumbo v0, "flow_status"

    .line 140
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    :goto_5
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    :goto_6
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_7
    const-string/jumbo v0, "t"

    .line 151
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    return-object v3

    :cond_5
    move v2, v0

    .line 116
    goto :goto_0

    :cond_6
    move v2, v0

    .line 120
    goto :goto_1

    :cond_7
    const-string/jumbo v2, "code"

    .line 125
    iget v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "exception"

    .line 128
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_9
    const-string/jumbo v2, "op"

    .line 132
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->operator:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 139
    :cond_a
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_5

    :cond_b
    const-string/jumbo v0, "rid"

    .line 144
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_c
    const-string/jumbo v0, "dns"

    .line 148
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7
.end method
