.class Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper$1;
.super Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
.source "NotificationMediaTemplateViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationMediaTemplateViewWrapper;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 2
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "actions":Landroid/view/View;
    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 60
    const/4 v1, 0x1

    return v1
.end method

.method public transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 2
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p3, "transformationAmount"    # F

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "actions":Landroid/view/View;
    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 53
    const/4 v1, 0x1

    return v1
.end method
