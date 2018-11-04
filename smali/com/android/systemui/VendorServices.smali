.class public Lcom/android/systemui/VendorServices;
.super Lcom/android/systemui/SystemUI;
.source "VendorServices.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/systemui/vendor/HeadsetPolicy;

    iget-object v1, p0, Lcom/android/systemui/VendorServices;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vendor/HeadsetPolicy;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method
