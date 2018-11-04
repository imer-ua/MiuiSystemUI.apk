.class public Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;
.super Lcom/android/systemui/recents/events/RecentsEventBus$Event;
.source "FsGestureRecentsViewWrapperEvent.java"


# instance fields
.field public final mBackGround:Landroid/view/View;

.field public final mDockBtn:Landroid/widget/TextView;

.field public final mMemoryAndClearContainer:Landroid/view/ViewGroup;

.field public final mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field public final mTipView:Landroid/widget/TextView;

.field public final mTxtMemoryContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "recentsView"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "backGround"    # Landroid/view/View;
    .param p3, "dockBtn"    # Landroid/widget/TextView;
    .param p4, "memoryAndClearContainer"    # Landroid/view/ViewGroup;
    .param p5, "tipView"    # Landroid/widget/TextView;
    .param p6, "txtMemoryContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/systemui/recents/events/RecentsEventBus$Event;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mBackGround:Landroid/view/View;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mDockBtn:Landroid/widget/TextView;

    .line 24
    iput-object p4, p0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    .line 25
    iput-object p5, p0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mTipView:Landroid/widget/TextView;

    .line 26
    iput-object p6, p0, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    .line 20
    return-void
.end method
