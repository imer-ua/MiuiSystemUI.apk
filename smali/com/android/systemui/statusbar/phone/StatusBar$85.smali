.class Lcom/android/systemui/statusbar/phone/StatusBar$85;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field final synthetic val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "val$entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "val$sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 8371
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85;->val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflationFinished(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 8373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap5(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 8374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85;->val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap39(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 8372
    return-void
.end method
