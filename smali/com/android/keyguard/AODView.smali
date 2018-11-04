.class public Lcom/android/keyguard/AODView;
.super Landroid/widget/FrameLayout;
.source "AODView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 16
    return-void
.end method

.method public onStopDoze()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
