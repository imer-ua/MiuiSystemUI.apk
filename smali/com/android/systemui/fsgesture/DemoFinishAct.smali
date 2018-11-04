.class public Lcom/android/systemui/fsgesture/DemoFinishAct;
.super Landroid/app/Activity;
.source "DemoFinishAct.java"


# instance fields
.field finishView:Landroid/widget/TextView;

.field private isFromPro:Z

.field replayView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/DemoFinishAct;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->isFromPro:Z

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DemoFinishAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 33
    const v3, 0x904003d

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DemoFinishAct;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DemoFinishAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "decorView":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/Util;->hideSystemBars(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DemoFinishAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 39
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "DEMO_TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "demoType":Ljava/lang/String;
    const-string/jumbo v3, "IS_FROM_PROVISION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->isFromPro:Z

    .line 42
    const v3, 0x91200e6

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DemoFinishAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->replayView:Landroid/widget/TextView;

    .line 43
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->replayView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/fsgesture/DemoFinishAct$1;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/fsgesture/DemoFinishAct$1;-><init>(Lcom/android/systemui/fsgesture/DemoFinishAct;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v3, 0x91200e7

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DemoFinishAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->finishView:Landroid/widget/TextView;

    .line 66
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->finishView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/fsgesture/DemoFinishAct$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/DemoFinishAct$2;-><init>(Lcom/android/systemui/fsgesture/DemoFinishAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 82
    return-void
.end method
