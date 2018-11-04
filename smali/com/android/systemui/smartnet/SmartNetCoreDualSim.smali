.class public Lcom/android/systemui/smartnet/SmartNetCoreDualSim;
.super Ljava/lang/Object;
.source "SmartNetCoreDualSim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;
    }
.end annotation


# static fields
.field private static mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;


# instance fields
.field private imeiSIM1:Ljava/lang/String;

.field private imeiSIM2:Ljava/lang/String;

.field private isSIM1Ready:Z

.field private isSIM2Ready:Z

.field private mSubscriptionId:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "predictedMethodName"    # Ljava/lang/String;
    .param p2, "slotID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "imei":Ljava/lang/String;
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 132
    .local v6, "telephony":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 133
    .local v7, "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Class;

    .line 134
    .local v5, "parameter":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    .line 135
    invoke-virtual {v7, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 136
    .local v1, "getSimID":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/Object;

    .line 137
    .local v3, "obParameter":[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    .line 138
    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 139
    .local v4, "ob_phone":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 140
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    :cond_0
    return-object v2

    .line 142
    .end local v1    # "getSimID":Ljava/lang/reflect/Method;
    .end local v3    # "obParameter":[Ljava/lang/Object;
    .end local v4    # "ob_phone":Ljava/lang/Object;
    .end local v5    # "parameter":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    new-instance v8, Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;

    invoke-direct {v8, p1}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/smartnet/SmartNetCoreDualSim;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 48
    new-instance v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    invoke-direct {v3}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;-><init>()V

    sput-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    .line 50
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 53
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    iput-object v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->imeiSIM1:Ljava/lang/String;

    .line 54
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    iput-object v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->imeiSIM2:Ljava/lang/String;

    .line 57
    :try_start_0
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    const-string v4, "getDeviceId"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->imeiSIM1:Ljava/lang/String;

    .line 58
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    const-string v4, "getDeviceId"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->imeiSIM2:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    iput-boolean v6, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready:Z

    .line 74
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    iput-boolean v6, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready:Z

    .line 77
    :try_start_1
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    const-string v4, "getSimState"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready:Z

    .line 78
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    const-string v4, "getSimState"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready:Z
    :try_end_1
    .catch Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 93
    :goto_1
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    return-object v3

    .line 60
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;
    :try_start_2
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    const-string v4, "getDeviceIdGemini"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->imeiSIM1:Ljava/lang/String;

    .line 65
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    const-string v4, "getDeviceIdGemini"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getDeviceIdBySlot(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->imeiSIM2:Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 66
    :catch_1
    move-exception v3

    goto :goto_0

    .line 80
    .end local v0    # "e":Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;
    :catch_2
    move-exception v0

    .line 83
    .restart local v0    # "e":Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;
    :try_start_3
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    const-string v4, "getSimStateGemini"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready:Z

    .line 84
    sget-object v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->mSmartNetCoreDualSim:Lcom/android/systemui/smartnet/SmartNetCoreDualSim;

    const-string v4, "getSimStateGemini"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready:Z

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 87
    :catch_3
    move-exception v1

    .line 89
    .local v1, "e1":Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;
    invoke-virtual {v1}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getSIMStateBySlot(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "predictedMethodName"    # Ljava/lang/String;
    .param p2, "slotID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "isReady":Z
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 153
    .local v7, "telephony":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 154
    .local v8, "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Class;

    .line 155
    .local v5, "parameter":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v5, v9

    .line 156
    invoke-virtual {v8, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 157
    .local v1, "getSimStateGemini":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Object;

    .line 158
    .local v3, "obParameter":[Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    .line 159
    invoke-virtual {v1, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 160
    .local v4, "ob_phone":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 162
    .local v6, "simState":I
    const/4 v9, 0x5

    if-ne v6, v9, :cond_0

    .line 163
    const/4 v2, 0x1

    .line 171
    .end local v6    # "simState":I
    :cond_0
    return v2

    .line 166
    .end local v1    # "getSimStateGemini":Ljava/lang/reflect/Method;
    .end local v3    # "obParameter":[Ljava/lang/Object;
    .end local v4    # "ob_phone":Ljava/lang/Object;
    .end local v5    # "parameter":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "telephonyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    new-instance v9, Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;

    invoke-direct {v9, p1}, Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public getImeiSIM1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->imeiSIM1:Ljava/lang/String;

    return-object v0
.end method

.method public getImeiSIM2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->imeiSIM2:Ljava/lang/String;

    return-object v0
.end method

.method public getSubId(Landroid/content/Context;)[I
    .locals 7
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 98
    .local v0, "SubId":[I
    const/4 v1, 0x0

    .line 99
    .local v1, "i":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v4, v5, :cond_3

    .line 100
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, "mSubscriptionInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_4

    .line 102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 103
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    iget-boolean v5, p0, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready:Z

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    aput v5, v0, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    goto :goto_0

    .line 108
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 109
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    aput v5, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    goto :goto_0

    .line 114
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready:Z

    if-eqz v5, :cond_2

    .line 115
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    aput v6, v0, v5

    goto :goto_0

    .line 118
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 119
    goto :goto_0

    .line 122
    .end local v2    # "mSubscriptionInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    aput v1, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 125
    :cond_4
    return-object v0
.end method

.method public isDualSIM()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->imeiSIM2:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSIM1Ready()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM1Ready:Z

    return v0
.end method

.method public isSIM2Ready()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/smartnet/SmartNetCoreDualSim;->isSIM2Ready:Z

    return v0
.end method
