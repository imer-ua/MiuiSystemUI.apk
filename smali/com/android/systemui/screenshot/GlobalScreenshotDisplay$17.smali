.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->clickActionBtn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

.field final synthetic val$btnType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;
    .param p2, "val$btnType"    # Ljava/lang/String;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;->val$btnType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$17;->val$btnType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap14(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V

    .line 572
    return-void
.end method
