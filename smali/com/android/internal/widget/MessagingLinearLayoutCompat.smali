.class public Lcom/android/internal/widget/MessagingLinearLayoutCompat;
.super Ljava/lang/Object;
.source "MessagingLinearLayoutCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContractedChildId(Lcom/android/internal/widget/MessagingLinearLayout;)I
    .locals 1
    .param p0, "messagingContainer"    # Lcom/android/internal/widget/MessagingLinearLayout;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getContractedChildId()I

    move-result v0

    return v0
.end method

.method public static setNumIndentLines(Lcom/android/internal/widget/MessagingLinearLayout;I)V
    .locals 0
    .param p0, "layout"    # Lcom/android/internal/widget/MessagingLinearLayout;
    .param p1, "num"    # I

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->setNumIndentLines(I)V

    .line 7
    return-void
.end method
