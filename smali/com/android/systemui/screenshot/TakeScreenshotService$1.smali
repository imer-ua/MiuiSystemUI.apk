.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/TakeScreenshotService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 44
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-virtual {v5}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "all"

    invoke-static {v5, v6}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iget-object v5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-static {v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->beforeTakeScreenshot(Landroid/content/Context;)V

    .line 48
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 49
    .local v2, "newMsg":Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, v2, Landroid/os/Message;->what:I

    .line 50
    const-wide/16 v6, 0x96

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 54
    .end local v2    # "newMsg":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-set0(I)I

    .line 55
    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v3, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    .line 56
    .local v3, "screenshot":Lcom/android/systemui/screenshot/GlobalScreenshot;
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 57
    .local v1, "callback":Landroid/os/Messenger;
    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 67
    .local v0, "animationFinisher":Ljava/lang/Runnable;
    new-instance v4, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;)V

    .line 76
    .local v4, "totalFinisher":Ljava/lang/Runnable;
    iget v5, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_0

    move v5, v6

    :goto_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_1

    :goto_2
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZ)V

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_2

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
