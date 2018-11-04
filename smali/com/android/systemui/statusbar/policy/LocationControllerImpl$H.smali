.class final Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;
.super Landroid/os/Handler;
.source "LocationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    return-void
.end method

.method private locationActiveChanged()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$1;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Lcom/android/systemui/util/function/Consumer;)V

    .line 362
    return-void
.end method

.method private locationSettingsChanged()V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v0

    .line 373
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$2;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;Z)V

    invoke-static {v1, v2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Lcom/android/systemui/util/function/Consumer;)V

    .line 371
    return-void
.end method

.method private locationStatusChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 382
    move-object v0, p1

    .line 383
    .local v0, "fintent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$3;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;Landroid/content/Intent;)V

    invoke-static {v1, v2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Lcom/android/systemui/util/function/Consumer;)V

    .line 381
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 348
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 347
    :goto_0
    return-void

    .line 350
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationSettingsChanged()V

    goto :goto_0

    .line 353
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationActiveChanged()V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationStatusChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
