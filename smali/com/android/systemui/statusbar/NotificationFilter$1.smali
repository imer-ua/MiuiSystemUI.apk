.class Lcom/android/systemui/statusbar/NotificationFilter$1;
.super Ljava/lang/Object;
.source "NotificationFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationFilter;->bindNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationFilter;

.field final synthetic val$listener:Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationFilter;Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationFilter;
    .param p2, "val$listener"    # Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationFilter$1;->this$0:Lcom/android/systemui/statusbar/NotificationFilter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationFilter$1;->val$listener:Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationFilter$1;->val$listener:Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;->onClickCancel(Landroid/view/View;)V

    .line 42
    return-void
.end method
