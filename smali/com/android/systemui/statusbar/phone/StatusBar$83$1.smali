.class Lcom/android/systemui/statusbar/phone/StatusBar$83$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$83;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$83;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$83;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$83;
    .param p2, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "val$guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 8006
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$83;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 8009
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 8011
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    .line 8012
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$83$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setIsAnimating(Z)V

    .line 8008
    return-void
.end method