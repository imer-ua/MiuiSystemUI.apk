.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshotDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;
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
    .line 112
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0, p2}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap12(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Landroid/content/Intent;)V

    .line 113
    return-void
.end method
