.class Lcom/android/systemui/keyguard/KeyguardViewMediator$16;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$soundId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p2, "val$soundId"    # I

    .prologue
    .line 2073
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->val$soundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get1(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get24(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get15(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->val$soundId:I

    .line 2080
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get14(Lcom/android/systemui/keyguard/KeyguardViewMediator;)F

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2079
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 2081
    .local v7, "id":I
    monitor-enter p0

    .line 2082
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$16;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-set4(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2075
    return-void

    .line 2081
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
