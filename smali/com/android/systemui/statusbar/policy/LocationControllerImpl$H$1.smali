.class Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$1;
.super Ljava/lang/Object;
.source "LocationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationActiveChanged()V
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
        "Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$1;->this$1:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$1;->this$1:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationActiveChanged(Z)V

    .line 365
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cb"    # Ljava/lang/Object;

    .prologue
    .line 365
    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .end local p1    # "cb":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$1;->accept(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method
