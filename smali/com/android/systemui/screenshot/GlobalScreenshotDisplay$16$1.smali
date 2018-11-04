.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16$1;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$16;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 551
    return-void
.end method
