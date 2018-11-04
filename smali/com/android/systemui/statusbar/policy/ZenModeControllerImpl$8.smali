.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$8;
.super Ljava/lang/Object;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenAvailableChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/function/Consumer",
        "<",
        "Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

.field final synthetic val$available:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p2, "val$available"    # Z

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$8;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$8;->val$available:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$8;->val$available:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenAvailableChanged(Z)V

    .line 204
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/Object;

    .prologue
    .line 204
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .end local p1    # "c":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$8;->accept(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method
