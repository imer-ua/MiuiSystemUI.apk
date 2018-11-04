.class public final Lcom/android/systemui/recents/model/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"


# instance fields
.field public value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    .line 6
    return-void
.end method
