.class public Lcom/android/keyguard/BackButton;
.super Landroid/widget/Button;
.source "BackButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/BackButton$BackButtonCallback;
    }
.end annotation


# instance fields
.field private mBackButtonCallback:Lcom/android/keyguard/BackButton$BackButtonCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/BackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 27
    new-instance v0, Lcom/android/keyguard/BackButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/BackButton$1;-><init>(Lcom/android/keyguard/BackButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/BackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method

.method public setCallback(Lcom/android/keyguard/BackButton$BackButtonCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/BackButton$BackButtonCallback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/keyguard/BackButton;->mBackButtonCallback:Lcom/android/keyguard/BackButton$BackButtonCallback;

    .line 40
    return-void
.end method

.method public takeBackAction()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/BackButton;->mBackButtonCallback:Lcom/android/keyguard/BackButton$BackButtonCallback;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/keyguard/BackButton;->mBackButtonCallback:Lcom/android/keyguard/BackButton$BackButtonCallback;

    invoke-interface {v0}, Lcom/android/keyguard/BackButton$BackButtonCallback;->onBackButtonClicked()V

    .line 34
    :cond_0
    return-void
.end method
