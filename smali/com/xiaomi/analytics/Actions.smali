.class public Lcom/xiaomi/analytics/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/xiaomi/analytics/AdAction;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/AdAction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
