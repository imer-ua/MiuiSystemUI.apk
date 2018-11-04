.class public Lcom/android/systemui/fsgesture/DrawerDemoAct;
.super Landroid/app/Activity;
.source "DrawerDemoAct.java"


# static fields
.field private static final IS_DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private drawerImg:Landroid/widget/ImageView;

.field private drawerImgMain:Landroid/widget/ImageView;

.field private fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field handler:Landroid/os/Handler;

.field private initTranslateWidht:I

.field private maxTranslateWidth:I

.field private shelterView:Landroid/view/View;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->IS_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->initTranslateWidht:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->maxTranslateWidth:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->initTranslateWidht:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->maxTranslateWidth:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->startSwipeViewAnimation(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->TAG:Ljava/lang/String;

    .line 29
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    sput-boolean v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->IS_DEBUG:Z

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method private startSwipeViewAnimation(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)V

    .line 144
    const-wide/16 v2, 0x1f4

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 51
    const v3, 0x9040031

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "decorView":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/Util;->hideSystemBars(Landroid/view/View;)V

    .line 56
    const v3, 0x91200d6

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 57
    const v3, 0x91200d8

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    .line 58
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 114
    const v3, 0x91200d5

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImgMain:Landroid/widget/ImageView;

    .line 115
    const v3, 0x91200d9

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 116
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 117
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v4, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    .line 123
    sget-boolean v3, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f02ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 126
    .local v2, "naturalBarHeight":I
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v3}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 127
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "naturalBarHeight":I
    :cond_0
    const v3, 0x91200d7

    invoke-virtual {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 132
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->startSwipeViewAnimation(I)V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    .line 148
    return-void
.end method
