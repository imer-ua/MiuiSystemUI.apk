.class Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->-get1(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->-wrap0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->-get1(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->-get0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->-set0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;Z)Z

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    goto :goto_0
.end method
