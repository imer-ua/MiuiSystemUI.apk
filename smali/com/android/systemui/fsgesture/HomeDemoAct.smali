.class public Lcom/android/systemui/fsgesture/HomeDemoAct;
.super Landroid/app/Activity;
.source "HomeDemoAct.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private appBgView:Landroid/view/View;

.field private appCalculatorImg:Landroid/widget/ImageView;

.field private appNoteIconImg:Landroid/view/View;

.field private appNoteImg:Landroid/widget/ImageView;

.field private fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field private fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

.field handler:Landroid/os/Handler;

.field private homeIconImg:Landroid/widget/ImageView;

.field private navSubViewBgView:Landroid/view/View;

.field private recentsBgView:Landroid/view/View;

.field private recentsClearImg:Landroid/view/View;

.field private wallPaperImg:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fsgesture/HomeDemoAct;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->handler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method private startSwipeViewAnimation(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/HomeDemoAct$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/HomeDemoAct$2;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V

    .line 136
    const-wide/16 v2, 0x1f4

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 54
    const v8, 0x9040045

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "decorView":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/Util;->hideSystemBars(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 60
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "DEMO_TYPE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "demoType":Ljava/lang/String;
    const-string/jumbo v8, "FULLY_SHOW_STEP"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 62
    .local v7, "step":I
    const-string/jumbo v8, "IS_FROM_PROVISION"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 64
    .local v3, "isFromPro":Z
    const v8, 0x912010b

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->wallPaperImg:Landroid/widget/ImageView;

    .line 65
    const v8, 0x912010c

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->homeIconImg:Landroid/widget/ImageView;

    .line 66
    const v8, 0x912010d

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsBgView:Landroid/view/View;

    .line 67
    const v8, 0x912010e

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appCalculatorImg:Landroid/widget/ImageView;

    .line 68
    const v8, 0x9120110

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsClearImg:Landroid/view/View;

    .line 69
    const v8, 0x912010f

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteIconImg:Landroid/view/View;

    .line 70
    const v8, 0x9120111

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appBgView:Landroid/view/View;

    .line 71
    const v8, 0x9120112

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteImg:Landroid/widget/ImageView;

    .line 72
    const v8, 0x9120113

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->navSubViewBgView:Landroid/view/View;

    .line 73
    const v8, 0x91200d9

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 76
    const-string/jumbo v8, "DEMO_FULLY_SHOW"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 77
    if-ne v7, v11, :cond_1

    .line 78
    const/4 v6, 0x2

    .line 87
    .local v6, "showType":I
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v8, v6}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 88
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v9, Lcom/android/systemui/fsgesture/HomeDemoAct$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/fsgesture/HomeDemoAct$1;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    .line 94
    sget-boolean v8, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v8, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x90f02ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 97
    .local v5, "naturalBarHeight":I
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v8}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    .local v4, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v10, v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v8, v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->homeIconImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v10, v5, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    .end local v4    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "naturalBarHeight":I
    :cond_0
    const v8, 0x91200d7

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 104
    const/4 v8, 0x3

    if-ne v6, v8, :cond_4

    .line 105
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->startSwipeViewAnimation(I)V

    .line 110
    :goto_1
    const v8, 0x9120114

    invoke-virtual {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/fsgesture/NavStubDemoView;

    iput-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 111
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v8, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setCurActivity(Landroid/app/Activity;)V

    .line 112
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v8, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDemoType(Ljava/lang/String;)V

    .line 113
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setFullyShowStep(I)V

    .line 114
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v8, v3}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setIsFromPro(Z)V

    .line 115
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->homeIconImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setHomeIconImg(Landroid/widget/ImageView;)V

    .line 116
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsBgView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsBgView(Landroid/view/View;)V

    .line 117
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsClearImg:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsClearImg(Landroid/view/View;)V

    .line 118
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appCalculatorImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppCalculatorImg(Landroid/widget/ImageView;)V

    .line 119
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteIconImg:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppNoteIconImg(Landroid/view/View;)V

    .line 120
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appBgView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppBgView(Landroid/view/View;)V

    .line 121
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteImg:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppNoteImg(Landroid/widget/ImageView;)V

    .line 122
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDemoTitleView(Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 123
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setSwipeView(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)V

    .line 124
    iget-object v8, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->navSubViewBgView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setBgView(Landroid/view/View;)V

    .line 51
    return-void

    .line 80
    .end local v6    # "showType":I
    :cond_1
    const/4 v6, 0x3

    .restart local v6    # "showType":I
    goto/16 :goto_0

    .line 82
    .end local v6    # "showType":I
    :cond_2
    const-string/jumbo v8, "DEMO_TO_HOME"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 83
    const/4 v6, 0x2

    .restart local v6    # "showType":I
    goto/16 :goto_0

    .line 85
    .end local v6    # "showType":I
    :cond_3
    const/4 v6, 0x3

    .restart local v6    # "showType":I
    goto/16 :goto_0

    .line 107
    :cond_4
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/systemui/fsgesture/HomeDemoAct;->startSwipeViewAnimation(I)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 145
    return-void
.end method
