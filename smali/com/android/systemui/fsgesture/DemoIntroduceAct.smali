.class public Lcom/android/systemui/fsgesture/DemoIntroduceAct;
.super Landroid/app/Activity;
.source "DemoIntroduceAct.java"


# instance fields
.field backBtn:Landroid/widget/TextView;

.field nextBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 30
    const v3, 0x904002c

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "decorView":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/Util;->hideSystemBars(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "IS_FROM_PROVISION"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 38
    .local v2, "isFromPro":Z
    const v3, 0x91200d0

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->backBtn:Landroid/widget/TextView;

    .line 39
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->backBtn:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;-><init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v3, 0x91200d1

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->nextBtn:Landroid/widget/TextView;

    .line 46
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->nextBtn:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;-><init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 61
    return-void
.end method
