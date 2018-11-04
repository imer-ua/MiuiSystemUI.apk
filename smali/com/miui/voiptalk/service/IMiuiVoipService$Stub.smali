.class public abstract Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;
.super Landroid/os/Binder;
.source "IMiuiVoipService.java"

# interfaces
.implements Lcom/miui/voiptalk/service/IMiuiVoipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voiptalk/service/IMiuiVoipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voiptalk/service/IMiuiVoipService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/voiptalk/service/IMiuiVoipService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/voiptalk/service/IMiuiVoipService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/voiptalk/service/IMiuiVoipService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 42
    :sswitch_0
    const-string/jumbo v5, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v6

    .line 47
    :sswitch_1
    const-string/jumbo v5, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->endCall()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    return v6

    .line 54
    :sswitch_2
    const-string/jumbo v5, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->answerRingingCall()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v6

    .line 61
    :sswitch_3
    const-string/jumbo v5, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->silenceRinger()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v6

    .line 68
    :sswitch_4
    const-string/jumbo v5, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->getCallState()I

    move-result v0

    .line 70
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return v6

    .line 76
    .end local v0    # "_result":I
    :sswitch_5
    const-string/jumbo v7, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->isCallingOut()Z

    move-result v4

    .line 78
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return v6

    .line 84
    .end local v4    # "_result":Z
    :sswitch_6
    const-string/jumbo v5, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->getCallBaseTime()J

    move-result-wide v2

    .line 86
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    return v6

    .line 92
    .end local v2    # "_result":J
    :sswitch_7
    const-string/jumbo v5, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->getExtraCallState()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v6

    .line 100
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v7, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->isVoipCallUiOnBack()Z

    move-result v4

    .line 102
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return v6

    .line 108
    .end local v4    # "_result":Z
    :sswitch_9
    const-string/jumbo v7, "com.miui.voiptalk.service.IMiuiVoipService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/miui/voiptalk/service/IMiuiVoipService$Stub;->isVideoCall()Z

    move-result v4

    .line 110
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v6

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
