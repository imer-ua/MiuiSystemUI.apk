.class Lcom/android/systemui/statusbar/policy/CallbackHandler$1;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIn:Z

.field final synthetic val$activityOut:Z

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$enabled:Z

.field final synthetic val$isTransient:Z

.field final synthetic val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p2, "val$enabled"    # Z
    .param p3, "val$statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "val$qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p5, "val$activityIn"    # Z
    .param p6, "val$activityOut"    # Z
    .param p7, "val$description"    # Ljava/lang/String;
    .param p8, "val$isTransient"    # Z

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$enabled:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityIn:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityOut:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$description:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$isTransient:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->-get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 163
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$enabled:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityIn:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$activityOut:Z

    .line 164
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$description:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$1;->val$isTransient:Z

    .line 163
    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V

    goto :goto_0

    .line 161
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    :cond_0
    return-void
.end method
