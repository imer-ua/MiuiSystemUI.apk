.class Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;
.super Landroid/os/Handler;
.source "KeyguardNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardNotificationHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardNotificationHelper;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;->this$0:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;->this$0:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentValues;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->-wrap2(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;->this$0:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentValues;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->-wrap3(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;->this$0:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_0
    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->-wrap1(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;ILjava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardNotificationHelper$1;->this$0:Lcom/android/systemui/statusbar/KeyguardNotificationHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardNotificationHelper;->-wrap0(Lcom/android/systemui/statusbar/KeyguardNotificationHelper;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
