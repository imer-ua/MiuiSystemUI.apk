.class Lcom/android/systemui/fsgesture/GestureStubView$2;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Lcom/android/systemui/fsgesture/GesturesBackController$GesturesBackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-fsgesture-GestureBackArrowView$ReadyStateSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/GestureStubView;


# direct methods
.method private static synthetic -getcom-android-systemui-fsgesture-GestureBackArrowView$ReadyStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/fsgesture/GestureStubView$2;->-com-android-systemui-fsgesture-GestureBackArrowView$ReadyStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/fsgesture/GestureStubView$2;->-com-android-systemui-fsgesture-GestureBackArrowView$ReadyStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->values()[Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/systemui/fsgesture/GestureStubView$2;->-com-android-systemui-fsgesture-GestureBackArrowView$ReadyStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/GestureStubView;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeProcess(ZF)V
    .locals 2
    .param p1, "readyFinish"    # Z
    .param p2, "offsetX"    # F

    .prologue
    const/16 v1, 0x105

    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView$H;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendEmptyMessage(I)Z

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionMove(F)V

    .line 178
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto :goto_0
.end method

.method public onSwipeStart(ZF)V
    .locals 6
    .param p1, "needAnimation"    # Z
    .param p2, "offsetY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1, v5}, Lcom/android/systemui/fsgesture/GestureStubView;->-set2(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z

    .line 159
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap4(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 162
    const-string/jumbo v1, "GestureStubView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwipeStart: needAnimation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap8(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-get16(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1, p2}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap2(Lcom/android/systemui/fsgesture/GestureStubView;F)[I

    move-result-object v0

    .line 170
    .local v0, "params":[I
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v1

    aget v2, v0, v4

    int-to-float v2, v2

    aget v3, v0, v5

    int-to-float v3, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    .line 157
    .end local v0    # "params":[I
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, p2, v2, v3}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    goto :goto_0
.end method

.method public onSwipeStop(ZF)V
    .locals 4
    .param p1, "isFinish"    # Z
    .param p2, "offsetX"    # F

    .prologue
    .line 191
    const-string/jumbo v0, "GestureStubView"

    const-string/jumbo v1, "onSwipeStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-set2(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z

    .line 195
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v1

    const/16 v2, 0x102

    invoke-virtual {v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 196
    const-wide/16 v2, 0x1f4

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/fsgesture/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap0(Lcom/android/systemui/fsgesture/GestureStubView;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap1(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 204
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 205
    invoke-static {}, Lcom/android/systemui/fsgesture/GestureStubView$2;->-getcom-android-systemui-fsgesture-GestureBackArrowView$ReadyStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getCurrentState()Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get12(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureStubView$H;

    move-result-object v0

    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView$H;->removeMessages(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v0

    invoke-static {p2}, Lcom/android/systemui/fsgesture/GesturesBackController;->convertOffset(F)F

    move-result v1

    .line 220
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/GestureStubView;->-get0(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionUp(FLandroid/animation/Animator$AnimatorListener;)V

    .line 189
    return-void

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get9(Lcom/android/systemui/fsgesture/GestureStubView;)Lcom/android/systemui/fsgesture/GestureBackArrowView;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap6(Lcom/android/systemui/fsgesture/GestureStubView;I)V

    goto :goto_1

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get15(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/app/KeyguardManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-get1(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get2(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-get10(Lcom/android/systemui/fsgesture/GestureStubView;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_1

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-get18(Lcom/android/systemui/fsgesture/GestureStubView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSwipeStopDirect()V
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "GestureStubView"

    const-string/jumbo v1, "onSwipeStopDirect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-set2(Lcom/android/systemui/fsgesture/GestureStubView;Z)Z

    .line 230
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$2;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/GestureStubView;->-wrap6(Lcom/android/systemui/fsgesture/GestureStubView;I)V

    .line 224
    return-void
.end method
