.class Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;
.super Landroid/util/LruCache;
.source "PackageScoreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;
    .param p2, "maxSize"    # I

    .prologue
    .line 344
    .local p0, "this":Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;, "Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache<TK;TV;>;"
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    .line 345
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 344
    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;, "Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    instance-of v1, p3, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 351
    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    .line 352
    .local v0, "entity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->-get0(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache$1;-><init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    .end local v0    # "entity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    :cond_0
    return-void
.end method
