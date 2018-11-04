.class Lcom/android/systemui/util/leak/GarbageMonitor$2;
.super Ljava/lang/Object;
.source "GarbageMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;->inspectGarbage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/util/leak/GarbageMonitor;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$2;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$2;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->-wrap1(Lcom/android/systemui/util/leak/GarbageMonitor;)V

    .line 70
    return-void
.end method
