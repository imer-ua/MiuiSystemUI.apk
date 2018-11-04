.class public Landroid/metrics/LogMakerCompat;
.super Ljava/lang/Object;
.source "LogMakerCompat.java"


# instance fields
.field private mCategory:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Landroid/metrics/LogMakerCompat;->mCategory:I

    .line 11
    return-void
.end method

.method public static write(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Landroid/metrics/LogMakerCompat;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metricsLogger"    # Lcom/android/internal/logging/MetricsLogger;
    .param p2, "logMakerCompat"    # Landroid/metrics/LogMakerCompat;

    .prologue
    .line 37
    iget v0, p2, Landroid/metrics/LogMakerCompat;->mCategory:I

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMakerCompat;
    .locals 0
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 33
    return-object p0
.end method

.method public setCategory(I)Landroid/metrics/LogMakerCompat;
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 16
    iput p1, p0, Landroid/metrics/LogMakerCompat;->mCategory:I

    .line 17
    return-object p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMakerCompat;
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 21
    return-object p0
.end method

.method public setSubtype(I)Landroid/metrics/LogMakerCompat;
    .locals 0
    .param p1, "subtype"    # I

    .prologue
    .line 29
    return-object p0
.end method

.method public setType(I)Landroid/metrics/LogMakerCompat;
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 25
    return-object p0
.end method
