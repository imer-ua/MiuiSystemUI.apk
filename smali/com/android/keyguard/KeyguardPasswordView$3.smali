.class Lcom/android/keyguard/KeyguardPasswordView$3;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPasswordView;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardDelete()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 185
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPasswordView;->-get0(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 186
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 183
    :cond_0
    return-void
.end method

.method public onKeyBoardOK()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPasswordView;->verifyPasswordAndUnlock()V

    .line 192
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPasswordView;->-get0(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPasswordView;->-get0(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x91003d9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPasswordView;->-get0(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method
