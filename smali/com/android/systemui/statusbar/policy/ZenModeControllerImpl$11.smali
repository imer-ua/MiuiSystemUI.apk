.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$11;
.super Ljava/lang/Object;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConfigChanged(Landroid/service/notification/ZenModeConfig;)V
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

.field final synthetic val$config:Landroid/service/notification/ZenModeConfig;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p2, "val$config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$11;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$11;->val$config:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$11;->val$config:Landroid/service/notification/ZenModeConfig;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConfigChanged(Landroid/service/notification/ZenModeConfig;)V

    .line 232
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/Object;

    .prologue
    .line 232
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .end local p1    # "c":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$11;->accept(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method
