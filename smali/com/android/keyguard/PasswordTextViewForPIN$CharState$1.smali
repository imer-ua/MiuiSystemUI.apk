.class Lcom/android/keyguard/PasswordTextViewForPIN$CharState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextViewForPIN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPIN$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 389
    return-void
.end method
