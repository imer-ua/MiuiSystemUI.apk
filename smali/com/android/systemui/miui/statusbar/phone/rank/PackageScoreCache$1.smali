.class Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$1;
.super Ljava/lang/Object;
.source "PackageScoreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->asyncUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$1;->this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$1;->this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->-wrap0(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)V

    .line 57
    return-void
.end method
