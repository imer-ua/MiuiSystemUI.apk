.class Lcom/android/systemui/recents/BaseRecentsImpl$8;
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
    .line 852
    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$8;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 856
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$8;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v1, v1, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_gesture_appswitch_feature"

    .line 855
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 858
    .local v0, "isAnimDisabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$8;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get2(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$8;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get2(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/GestureStubView;->disableQuickSwitch(Z)V

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$8;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$8;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get3(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/fsgesture/GestureStubView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/fsgesture/GestureStubView;->disableQuickSwitch(Z)V

    .line 854
    :cond_1
    return-void

    .line 855
    .end local v0    # "isAnimDisabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isAnimDisabled":Z
    goto :goto_0
.end method
