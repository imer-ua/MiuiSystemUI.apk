.class Lcom/miui/systemui/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatApi21Impl;
.super Lcom/miui/systemui/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;
.source "LayoutInflaterCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemui/support/v4/view/LayoutInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutInflaterCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 135
    invoke-virtual {p1, p2}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 134
    return-void
.end method
