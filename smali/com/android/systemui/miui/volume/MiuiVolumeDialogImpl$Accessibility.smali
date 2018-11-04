.class final Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessibility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility$1;
    }
.end annotation


# instance fields
.field private final mAttachListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mFeedbackEnabled:Z

.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 1250
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility$1;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->mAttachListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 1247
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    return-void
.end method

.method private computeFeedbackEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1293
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 1294
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "asi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1295
    .local v0, "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 1296
    const/4 v3, 0x1

    return v3

    .line 1299
    .end local v0    # "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return v5
.end method

.method private updateFeedbackEnabled()V
    .locals 1

    .prologue
    .line 1287
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->computeFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    .line 1286
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->mAttachListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1275
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1273
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->mAttachListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1265
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1267
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    .line 1270
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-static {v1}, Landroid/view/AccessibilityManagerCompat;->isAccessibilityVolumeStreamActive(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z

    .line 1263
    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1304
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    .line 1303
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1283
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
