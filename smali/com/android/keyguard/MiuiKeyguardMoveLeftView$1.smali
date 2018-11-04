.class Lcom/android/keyguard/MiuiKeyguardMoveLeftView$1;
.super Landroid/database/ContentObserver;
.source "MiuiKeyguardMoveLeftView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiKeyguardMoveLeftView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiKeyguardMoveLeftView;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$1;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$1;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get6(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "torch_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 178
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$1;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get25(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 176
    return-void

    .line 177
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method
