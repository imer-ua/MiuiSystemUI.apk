.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->finishTakingLongScreenshot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

.field final synthetic val$isCancel:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;
    .param p2, "val$isCancel"    # Z

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iput-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$isCancel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$20;->val$isCancel:Z

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V

    .line 796
    return-void
.end method