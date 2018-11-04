.class public Lcom/android/systemui/stackdivider/Divider;
.super Lcom/android/systemui/SystemUI;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;,
        Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;
    }
.end annotation


# instance fields
.field private mAdjustedForIme:Z

.field private final mDividerState:Lcom/android/systemui/stackdivider/DividerState;

.field private mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

.field private mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

.field private mMinimized:Z

.field private mView:Lcom/android/systemui/stackdivider/DividerView;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/Divider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/Divider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0
    .param p1, "exists"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/Divider;ZJ)V
    .locals 0
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/Divider;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 45
    new-instance v0, Lcom/android/systemui/stackdivider/DividerState;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    .line 47
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    .line 41
    return-void
.end method

.method private addDivider(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 78
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x904002e

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/systemui/stackdivider/DividerView;

    iput-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    .line 79
    iget-object v6, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v6, v4}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    .line 80
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 81
    const v6, 0x90f0237

    .line 80
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 82
    .local v2, "size":I
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    const/4 v1, 0x1

    .line 83
    .local v1, "landscape":Z
    :goto_1
    if-eqz v1, :cond_2

    move v3, v2

    .line 84
    .local v3, "width":I
    :goto_2
    if-eqz v1, :cond_3

    const/4 v0, -0x1

    .line 85
    .local v0, "height":I
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v4, v5, v3, v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->add(Lcom/android/systemui/stackdivider/DividerView;II)V

    .line 86
    iget-object v4, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/Divider;->mDividerState:Lcom/android/systemui/stackdivider/DividerState;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/stackdivider/DividerView;->injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V

    .line 76
    return-void

    .line 79
    .end local v0    # "height":I
    .end local v1    # "landscape":Z
    .end local v2    # "size":I
    .end local v3    # "width":I
    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    .restart local v2    # "size":I
    :cond_1
    move v1, v5

    .line 82
    goto :goto_1

    .line 83
    .restart local v1    # "landscape":Z
    :cond_2
    const/4 v3, -0x1

    .restart local v3    # "width":I
    goto :goto_2

    .line 84
    :cond_3
    move v0, v2

    .restart local v0    # "height":I
    goto :goto_3
.end method

.method private notifyDockedStackExistsChanged(Z)V
    .locals 2
    .param p1, "exists"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$3;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method private removeDivider()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->remove()V

    .line 89
    return-void
.end method

.method private update(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->removeDivider()V

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->addDivider(Landroid/content/res/Configuration;)V

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(Z)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/Divider;->updateTouchable()V

    .line 93
    :cond_0
    return-void
.end method

.method private updateMinimizedDockedStack(ZJ)V
    .locals 2
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider$2;-><init>(Lcom/android/systemui/stackdivider/Divider;ZJ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;->onDockedStackMinimizedChanged(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method private updateTouchable()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setTouchable(Z)V

    .line 152
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/Divider$1;-><init>(Lcom/android/systemui/stackdivider/Divider;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 158
    const-string/jumbo v0, "  mVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 159
    const-string/jumbo v0, "  mMinimized="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 160
    const-string/jumbo v0, "  mAdjustedForIme="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mAdjustedForIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 157
    return-void
.end method

.method public getView()Lcom/android/systemui/stackdivider/DividerView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider;->mView:Lcom/android/systemui/stackdivider/DividerView;

    return-object v0
.end method

.method public isMinimized()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider;->mMinimized:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 67
    return-void
.end method

.method public registerDockedStackExistsChangedListener(Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockedStackExistsChangedListener:Lcom/android/systemui/stackdivider/Divider$DockedStackExistsChangedListener;

    .line 137
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 55
    new-instance v1, Lcom/android/systemui/stackdivider/DividerWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/Divider;->update(Landroid/content/res/Configuration;)V

    .line 57
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v1, p0}, Lcom/android/systemui/stackdivider/Divider;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 58
    new-instance v1, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    .line 59
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 60
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mDockDividerVisibilityListener:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 62
    new-instance v1, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/Divider;->mForcedResizableController:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .line 54
    return-void
.end method
