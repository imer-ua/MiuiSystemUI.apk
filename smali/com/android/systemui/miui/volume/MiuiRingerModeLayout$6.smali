.class Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;
.super Ljava/lang/Object;
.source "MiuiRingerModeLayout.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->getTimerLayoutTransition()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-set0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;Z)Z

    .line 326
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-set0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;Z)Z

    .line 321
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 331
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 335
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;->this$0:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->-set0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;Z)Z

    .line 316
    return-void
.end method
