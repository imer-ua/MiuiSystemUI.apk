.class Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiVolumeTimerDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->updateDrawables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->-get3(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "ongoing":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->-get2(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/miui/volume/Util;->setVisOrInvis(Landroid/graphics/drawable/Drawable;Z)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-static {v2, v1}, Lcom/android/systemui/miui/volume/Util;->setVisOrInvis(Landroid/graphics/drawable/Drawable;Z)V

    .line 167
    return-void

    .line 170
    .end local v0    # "ongoing":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "ongoing":Z
    goto :goto_0

    .line 172
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
