.class Lcom/android/systemui/recents/BaseRecentsImpl$7;
.super Landroid/database/ContentObserver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/BaseRecentsImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$7;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$7;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get7(Lcom/android/systemui/recents/BaseRecentsImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$7;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap8(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    .line 811
    :cond_0
    return-void
.end method
