.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    check-cast p2, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .end local p2    # "inflated":Landroid/view/View;
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-set0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get6(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setIsLowPriority(Z)V

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onNotificationUpdated()V

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get12(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-nez v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-wrap0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1284
    :cond_0
    return-void
.end method
