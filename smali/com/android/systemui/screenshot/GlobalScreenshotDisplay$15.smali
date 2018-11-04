.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap7(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V

    .line 532
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "indeed_deleted"

    .line 533
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get10(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "longscreenshot"

    .line 532
    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$15;)V

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-set2(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    .line 533
    :cond_1
    const-string/jumbo v0, "normal"

    goto :goto_1
.end method
