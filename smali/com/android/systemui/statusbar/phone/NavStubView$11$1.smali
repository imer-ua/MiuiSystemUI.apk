.class Lcom/android/systemui/statusbar/phone/NavStubView$11$1;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView$11;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavStubView$11;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NavStubView$11;

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$11$1;->this$1:Lcom/android/systemui/statusbar/phone/NavStubView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$11$1;->this$1:Lcom/android/systemui/statusbar/phone/NavStubView$11;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavStubView$11;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v1, "startHomeAnimation"

    const/4 v2, 0x1

    invoke-static {v0, v3, v3, v2, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap2(Lcom/android/systemui/statusbar/phone/NavStubView;ZZZLjava/lang/String;)V

    .line 1687
    return-void
.end method
