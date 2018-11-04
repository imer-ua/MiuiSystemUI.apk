.class Lcom/android/keyguard/KeyguardPINView$1;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPINView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPINView;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 120
    return-void
.end method
