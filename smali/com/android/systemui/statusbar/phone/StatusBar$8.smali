.class Lcom/android/systemui/statusbar/phone/StatusBar$8;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFoldViewVisible:Z

.field private final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 815
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 818
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 817
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 820
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 819
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 814
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 825
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set11(Lcom/android/systemui/statusbar/phone/StatusBar;J)J

    .line 826
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v7

    .line 836
    .local v7, "mediaKey":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 837
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 838
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 839
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 840
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v11}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 841
    .local v6, "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v12, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 842
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    const/4 v5, 0x1

    .line 843
    .local v5, "isVisible":Z
    :goto_1
    invoke-static {v6, v4, v0, v5}, Lcom/android/internal/statusbar/NotificationVisibilityCompat;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v9

    .line 844
    .local v9, "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/ArraySet;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 845
    .local v8, "previouslyVisible":Z
    if-eqz v5, :cond_3

    .line 847
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 848
    if-nez v8, :cond_0

    .line 849
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v5    # "isVisible":Z
    .end local v8    # "previouslyVisible":Z
    .end local v9    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_1
    move v5, v10

    .line 842
    goto :goto_1

    :cond_2
    move v5, v10

    .line 841
    goto :goto_1

    .line 853
    .restart local v5    # "isVisible":Z
    .restart local v8    # "previouslyVisible":Z
    .restart local v9    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    goto :goto_2

    .line 856
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v5    # "isVisible":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "previouslyVisible":Z
    .end local v9    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/ArraySet;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 857
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 859
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 860
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 859
    invoke-static {v10, v11, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap15(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 862
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/ArraySet;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap23(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/util/ArraySet;)V

    .line 863
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get7(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/ArraySet;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 865
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap23(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/util/ArraySet;)V

    .line 866
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->clear()V

    .line 867
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->clear()V

    .line 868
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->clear()V

    .line 870
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isFoldFooterViewInVisibleLocation()Z

    move-result v3

    .line 871
    .local v3, "foldViewVisible":Z
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mFoldViewVisible:Z

    if-eq v3, v10, :cond_5

    .line 872
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mFoldViewVisible:Z

    .line 873
    const-class v10, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->mFoldViewVisible:Z

    invoke-virtual {v10, v11}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onFoldViewVisibilityChanged(Z)V

    .line 824
    :cond_5
    return-void
.end method
