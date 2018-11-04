.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$1;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;)V
    .locals 0

    .prologue
    .line 93
    .local p1, "this$1":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<TT;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$1;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer",
            "<TT;>;",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p1, "o1":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer<TT;>;"
    .local p2, "o2":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer<TT;>;"
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 96
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_1

    .line 97
    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_0

    .line 98
    return v1

    .line 100
    :cond_0
    return v2

    .line 103
    :cond_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;

    if-eqz v0, :cond_4

    .line 104
    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_2

    .line 105
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_2
    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;

    if-eqz v0, :cond_3

    .line 107
    return v1

    .line 109
    :cond_3
    return v2

    .line 112
    :cond_4
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$1;->compare(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;)I

    move-result v0

    return v0
.end method
