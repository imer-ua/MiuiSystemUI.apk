.class Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$2;
.super Ljava/lang/Object;
.source "BrightnessMirrorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$2;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$2;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->-get1(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$2;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->-get0(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$2;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->-get2(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFadingOut(Z)V

    .line 87
    return-void
.end method
