.class Lcom/xiaomi/xmsf/push/service/a$a$a;
.super Ljava/lang/Object;
.source "IHttpService.java"

# interfaces
.implements Lcom/xiaomi/xmsf/push/service/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/xmsf/push/service/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/xiaomi/xmsf/push/service/a$a$a;->a:Landroid/os/IBinder;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.xiaomi.xmsf.push.service.IHttpService"

    .line 86
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 89
    iget-object v0, p0, Lcom/xiaomi/xmsf/push/service/a$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 90
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 91
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 94
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    .line 94
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 96
    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xiaomi/xmsf/push/service/a$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
