.class public abstract Lcom/android/systemui/fsgesture/IFsGestureService$Stub;
.super Landroid/os/Binder;
.source "IFsGestureService.java"

# interfaces
.implements Lcom/android/systemui/fsgesture/IFsGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/IFsGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 45
    :sswitch_0
    const-string/jumbo v4, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v3

    .line 50
    :sswitch_1
    const-string/jumbo v4, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v2

    .line 55
    .local v2, "_arg1":Lcom/android/systemui/fsgesture/IFsGestureCallback;
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->registerCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v3

    .line 61
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/systemui/fsgesture/IFsGestureCallback;
    :sswitch_2
    const-string/jumbo v4, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v2

    .line 66
    .restart local v2    # "_arg1":Lcom/android/systemui/fsgesture/IFsGestureCallback;
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->unregisterCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v3

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/android/systemui/fsgesture/IFsGestureCallback;
    :sswitch_3
    const-string/jumbo v4, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 75
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->notifyHomeStatus(Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v3

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
