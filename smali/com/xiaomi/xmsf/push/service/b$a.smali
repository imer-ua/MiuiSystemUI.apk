.class public abstract Lcom/xiaomi/xmsf/push/service/b$a;
.super Landroid/os/Binder;
.source "IStatService.java"

# interfaces
.implements Lcom/xiaomi/xmsf/push/service/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/xmsf/push/service/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/xmsf/push/service/b$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/xmsf/push/service/b;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.xiaomi.xmsf.push.service.IStatService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 30
    :cond_0
    new-instance v0, Lcom/xiaomi/xmsf/push/service/b$a$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/xmsf/push/service/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 24
    :cond_1
    return-object v0

    .line 27
    :cond_2
    instance-of v1, v0, Lcom/xiaomi/xmsf/push/service/b;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lcom/xiaomi/xmsf/push/service/b;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.xiaomi.xmsf.push.service.IStatService"

    .line 42
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    :sswitch_1
    const-string/jumbo v0, "com.xiaomi.xmsf.push.service.IStatService"

    .line 47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/xiaomi/xmsf/push/service/b$a;->a(Ljava/lang/String;)V

    .line 51
    return v1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
