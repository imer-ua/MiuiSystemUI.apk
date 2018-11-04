.class public Lcom/android/systemui/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoader$1;
    }
.end annotation


# instance fields
.field private final mActivityInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

.field private final mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultTaskBarBackgroundColor:I

.field mDefaultTaskViewBackgroundColor:I

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field private final mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field private final mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

.field private final mMaxIconCacheSize:I

.field private final mMaxThumbnailCacheSize:I

.field private mNumVisibleTasksLoaded:I

.field private mNumVisibleThumbnailsLoaded:I

.field private final mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Lcom/android/systemui/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsTaskLoader;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V

    .line 277
    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 290
    .local v9, "res":Landroid/content/res/Resources;
    const v0, 0x90c006b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 289
    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    .line 292
    const v0, 0x90c006c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 291
    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    .line 293
    const v0, 0x90e000b

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 294
    const v0, 0x90e000c

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 296
    iget v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 298
    .local v7, "iconCacheSize":I
    iget v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 301
    .local v10, "thumbnailCacheSize":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 302
    .local v6, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 303
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 304
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 306
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 309
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v8

    .line 310
    .local v8, "numRecentTasks":I
    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 311
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 312
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-direct {v0, v10}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 313
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v0, v8, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 314
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 314
    invoke-direct {v0, v8, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 316
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v8}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 317
    new-instance v0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 318
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 317
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/TaskKeyLruCache;Lcom/android/systemui/recents/model/TaskKeyLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    .line 287
    return-void
.end method

.method private stopLoader()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->stop()V

    .line 619
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->clearTasks()V

    .line 617
    return-void
.end method


# virtual methods
.method public createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    return-object v0
.end method

.method public deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "notifyTaskDataUnloaded"    # Z

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 396
    if-eqz p2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsTaskLoader"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Icon Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 658
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Thumbnail Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 652
    return-void
.end method

.method getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 588
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/app/ActivityManagerCompat;->getTaskDescriptionBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-static {p1}, Landroid/app/ActivityManagerCompat;->getTaskDescriptionBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v0

    return v0

    .line 591
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    return v0
.end method

.method getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 578
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    return v0

    .line 581
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    return v0
.end method

.method public getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "loadIfNotCached"    # Z

    .prologue
    const/4 v6, 0x0

    .line 510
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 513
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 514
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 515
    return-object v2

    .line 518
    :cond_0
    if-eqz p4, :cond_2

    .line 521
    :try_start_0
    iget v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v3, p2, v4, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 522
    if-eqz v2, :cond_1

    .line 523
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v4, p1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    return-object v2

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RecentsTaskLoader"

    const-string/jumbo v5, "getBadgedTaskDescriptionIcon error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 532
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 533
    iget v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 534
    if-eqz v2, :cond_2

    .line 535
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v4, p1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 536
    return-object v2

    .line 541
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    return-object v6
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    const/4 v6, 0x0

    .line 599
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 600
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 601
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 602
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_2

    .line 603
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 604
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 605
    :cond_0
    const-string/jumbo v3, "RecentsTaskLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected null component name or activity info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-object v6

    .line 609
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_2
    return-object v0
.end method

.method getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 457
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 460
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 461
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 464
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 466
    return-object v1

    .line 469
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 470
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 471
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v1

    .line 472
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 473
    return-object v1

    .line 477
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 485
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 488
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 489
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 490
    return-object v1

    .line 494
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 495
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    .line 496
    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v0, v3, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 497
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 498
    return-object v1

    .line 502
    :cond_1
    const-string/jumbo v3, ""

    return-object v3
.end method

.method getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "loadIfNotCached"    # Z
    .param p3, "isAccessLocked"    # Z

    .prologue
    const/4 v5, 0x0

    .line 548
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 549
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 554
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/ThumbnailData;

    .line 555
    .local v2, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    if-eqz v2, :cond_1

    .line 556
    iget-object v3, v2, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object v3

    .line 558
    :cond_1
    if-eqz p2, :cond_2

    .line 559
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 560
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 562
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v2

    .line 563
    iget-object v3, v2, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 564
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 565
    iget-object v3, v2, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object v3

    .line 570
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    :cond_2
    return-object v5
.end method

.method public getIconCacheSize()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getThumbnailCacheSize()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public loadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 8
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 363
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 364
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 365
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 366
    .local v4, "thumbnailInfo":Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v7, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/ThumbnailData;

    .line 367
    .local v3, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    if-eqz v3, :cond_0

    .line 368
    iget-object v2, v3, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 369
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v4, v3, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;

    .line 374
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v4    # "thumbnailInfo":Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;
    :cond_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_4

    :cond_1
    const/4 v1, 0x1

    .line 375
    .local v1, "requiresLoad":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 376
    :goto_1
    if-eqz v1, :cond_2

    .line 377
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v6, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 379
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v2, v6, :cond_3

    move-object v2, v5

    :cond_3
    invoke-virtual {p1, v2, v0, v4}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/proxy/ActivityManager$TaskThumbnailInfo;)V

    .line 362
    return-void

    .line 374
    .end local v1    # "requiresLoad":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "requiresLoad":Z
    goto :goto_0

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method

.method public loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p3, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    .line 346
    if-nez p3, :cond_0

    .line 347
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Requires load options"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p2, p3, p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V

    .line 350
    iget-boolean v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez v0, :cond_1

    .line 351
    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 352
    iget v0, p3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    .line 355
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->start(Landroid/content/Context;)V

    .line 345
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    .prologue
    .line 641
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 642
    .local v0, "activityInfoCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cn$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 643
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 637
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method

.method public onLanguageChange()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 631
    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 627
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x1

    .line 406
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 407
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    sparse-switch p1, :sswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 410
    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 411
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 413
    iget v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v3, v3, 0x2

    .line 412
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 419
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 420
    iget v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v3, v3, 0x2

    .line 419
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    goto :goto_0

    .line 414
    :cond_1
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-ne v1, v3, :cond_2

    .line 415
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    goto :goto_1

    .line 416
    :cond_2
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    goto :goto_1

    .line 425
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 428
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 427
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->trimToSize(I)V

    goto :goto_0

    .line 433
    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 434
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 436
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    .line 435
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->trimToSize(I)V

    goto/16 :goto_0

    .line 441
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 442
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 443
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    .line 446
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->evictAll()V

    goto/16 :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3c -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V
    .locals 0
    .param p1, "plan"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .param p2, "runningTaskId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z

    .prologue
    .line 340
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V

    .line 339
    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method
