.class public Lcom/android/systemui/fsgesture/FsGestureService;
.super Landroid/app/Service;
.source "FsGestureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/FsGestureService$1;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/systemui/fsgesture/IFsGestureService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lcom/android/systemui/fsgesture/FsGestureService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureService$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureService;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureService;->mBinder:Lcom/android/systemui/fsgesture/IFsGestureService$Stub;

    .line 17
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureService;->mBinder:Lcom/android/systemui/fsgesture/IFsGestureService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    return-void
.end method
