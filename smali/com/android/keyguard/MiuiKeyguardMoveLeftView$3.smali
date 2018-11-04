.class Lcom/android/keyguard/MiuiKeyguardMoveLeftView$3;
.super Landroid/database/ContentObserver;
.source "MiuiKeyguardMoveLeftView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->onFinishInflate()V
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
    .line 134
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$3;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 138
    if-nez p2, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get2()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$3;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    const v1, 0x912019d

    invoke-static {v0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;I)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$3;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    const v1, 0x912019e

    invoke-static {v0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;I)V

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-get1()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardMoveLeftView$3;->this$0:Lcom/android/keyguard/MiuiKeyguardMoveLeftView;

    const v1, 0x912019f

    invoke-static {v0, v1}, Lcom/android/keyguard/MiuiKeyguardMoveLeftView;->-wrap5(Lcom/android/keyguard/MiuiKeyguardMoveLeftView;I)V

    goto :goto_0
.end method
