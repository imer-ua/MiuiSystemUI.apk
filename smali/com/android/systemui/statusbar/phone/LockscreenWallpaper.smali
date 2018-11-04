.class public Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "LockscreenWallpaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    }
.end annotation


# instance fields
.field private final mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mCache:Landroid/graphics/Bitmap;

.field private mCached:Z

.field private mCurrentUserId:I

.field private final mH:Landroid/os/Handler;

.field private mLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedUser:Landroid/os/UserHandle;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private postUpdateWallpaper()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method


# virtual methods
.method public loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .locals 7
    .param p1, "currentUserId"    # I
    .param p2, "selectedUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v6, 0x0

    .line 109
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 110
    .local v2, "lockWallpaperUserId":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 111
    const/4 v5, 0x2

    .line 110
    invoke-static {v4, v5, v2}, Landroid/app/WallpaperManagerCompat;->getWallpaperFile(Landroid/app/WallpaperManager;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 113
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 115
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    .line 116
    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 122
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 116
    return-object v4

    .line 109
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "lockWallpaperUserId":I
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    move v2, p1

    .restart local v2    # "lockWallpaperUserId":I
    goto :goto_0

    .line 118
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string/jumbo v4, "LockscreenWallpaper"

    const-string/jumbo v5, "Can\'t decode file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->fail()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 122
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 120
    return-object v4

    .line 121
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 122
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 121
    throw v4

    .line 125
    :cond_1
    if-eqz p2, :cond_2

    .line 130
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v4

    return-object v4

    .line 133
    :cond_2
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v4

    return-object v4
.end method

.method public onWallpaperChanged()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->postUpdateWallpaper()V

    .line 156
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 174
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    .line 175
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    .line 176
    .local v1, "selectedUser":Landroid/os/UserHandle;
    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;ILandroid/os/UserHandle;)V

    .line 197
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 176
    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    .line 167
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "user"    # I

    .prologue
    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    if-eq p1, v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 141
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    .line 143
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    .line 138
    :cond_2
    return-void
.end method
