.class public abstract Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;
.super Landroid/os/Binder;
.source "IFsGestureCallback.java"

# interfaces
.implements Lcom/android/systemui/fsgesture/IFsGestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/IFsGestureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 45
    :sswitch_0
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    return v0

    .line 50
    :sswitch_1
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 54
    .local v1, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 56
    .local v2, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 62
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 64
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .local v7, "_arg6":Z
    :goto_0
    move-object v0, p0

    .line 65
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->changeAlphaScale(FFIIIIZ)V

    .line 66
    const/4 v0, 0x1

    return v0

    .line 64
    .end local v7    # "_arg6":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 70
    .end local v1    # "_arg0":F
    .end local v2    # "_arg1":F
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :sswitch_2
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 75
    .local v9, "_arg1":I
    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object v10

    .line 76
    .local v10, "_result":Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v10, :cond_1

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 88
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v10    # "_result":Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    :sswitch_3
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyMiuiAnimationStart()V

    .line 90
    const/4 v0, 0x1

    return v0

    .line 94
    :sswitch_4
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyMiuiAnimationEnd()V

    .line 96
    const/4 v0, 0x1

    return v0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
