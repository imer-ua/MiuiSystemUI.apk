.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22$1;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap4(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$22;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    .line 891
    :cond_0
    return-void
.end method