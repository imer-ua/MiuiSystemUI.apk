.class final synthetic Lcom/android/keyguard/LockPatternUtilsWrapper$-boolean_checkPassword_java_lang_String_password_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LockPatternUtilsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-boolean_checkPassword_java_lang_String_password_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Lcom/android/keyguard/OnCheckForUsersCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/OnCheckForUsersCallback;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/LockPatternUtilsWrapper$-boolean_checkPassword_java_lang_String_password_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0;->val$-lambdaCtx:Lcom/android/keyguard/OnCheckForUsersCallback;

    return-void
.end method


# virtual methods
.method public onEarlyMatched()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/LockPatternUtilsWrapper$-boolean_checkPassword_java_lang_String_password_int_userId_com_android_keyguard_OnCheckForUsersCallback_callback_LambdaImpl0;->val$-lambdaCtx:Lcom/android/keyguard/OnCheckForUsersCallback;

    invoke-static {v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->-com_android_keyguard_LockPatternUtilsWrapper-mthref-1(Lcom/android/keyguard/OnCheckForUsersCallback;)V

    return-void
.end method
