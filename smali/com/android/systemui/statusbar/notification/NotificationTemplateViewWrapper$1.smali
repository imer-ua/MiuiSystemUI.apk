.class Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;
.super Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
.source "NotificationTemplateViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;-><init>()V

    return-void
.end method

.method private getTransformationY(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)F
    .locals 5
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    const/4 v4, 0x1

    .line 148
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v0

    .line 149
    .local v0, "otherStablePosition":[I
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v1

    .line 150
    .local v1, "ownStablePosition":[I
    aget v2, v0, v4

    .line 151
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 150
    add-int/2addr v2, v3

    .line 152
    aget v3, v1, v4

    .line 150
    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 152
    const v3, 0x3ea8f5c3    # 0.33f

    .line 150
    mul-float/2addr v2, v3

    return v2
.end method


# virtual methods
.method public customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 2
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;->getTransformationY(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)F

    move-result v0

    .line 116
    .local v0, "endY":F
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationEndY(F)V

    .line 117
    const/4 v1, 0x1

    return v1
.end method

.method public initTransformation(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 2
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;->getTransformationY(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)F

    move-result v0

    .line 142
    .local v0, "startY":F
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 143
    const/4 v1, 0x1

    return v1
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 4
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p3, "transformationAmount"    # F

    .prologue
    const/4 v3, 0x1

    .line 123
    instance-of v2, p2, Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v2, :cond_0

    .line 124
    const/4 v2, 0x0

    return v2

    .line 126
    :cond_0
    invoke-interface {p2, v3}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 128
    .local v0, "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "text":Landroid/view/View;
    invoke-static {v1, p3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 130
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p1, v0, p0, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 133
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 135
    :cond_1
    return v3
.end method

.method public transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 4
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p3, "transformationAmount"    # F

    .prologue
    const/4 v3, 0x1

    .line 97
    instance-of v2, p2, Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    return v2

    .line 100
    :cond_0
    invoke-interface {p2, v3}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 102
    .local v0, "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "text":Landroid/view/View;
    invoke-static {v1, p3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 104
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p1, v0, p0, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 107
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 109
    :cond_1
    return v3
.end method
