.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15$1;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap7(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 527
    return-void
.end method
