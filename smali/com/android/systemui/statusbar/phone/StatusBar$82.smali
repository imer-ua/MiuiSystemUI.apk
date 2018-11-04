.class Lcom/android/systemui/statusbar/phone/StatusBar$82;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$MenuPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationMenuClicker()Lcom/android/systemui/SwipeHelper$MenuPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 7903
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    move-object v0, p1

    .line 7905
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 7906
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap3(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result v1

    return v1
.end method
