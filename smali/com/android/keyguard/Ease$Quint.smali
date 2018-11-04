.class public Lcom/android/keyguard/Ease$Quint;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/Ease$Quint$1;,
        Lcom/android/keyguard/Ease$Quint$2;,
        Lcom/android/keyguard/Ease$Quint$3;
    }
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/android/keyguard/Ease$Quint$1;

    invoke-direct {v0}, Lcom/android/keyguard/Ease$Quint$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/Ease$Quint;->easeIn:Landroid/animation/TimeInterpolator;

    .line 99
    new-instance v0, Lcom/android/keyguard/Ease$Quint$2;

    invoke-direct {v0}, Lcom/android/keyguard/Ease$Quint$2;-><init>()V

    sput-object v0, Lcom/android/keyguard/Ease$Quint;->easeOut:Landroid/animation/TimeInterpolator;

    .line 104
    new-instance v0, Lcom/android/keyguard/Ease$Quint$3;

    invoke-direct {v0}, Lcom/android/keyguard/Ease$Quint$3;-><init>()V

    sput-object v0, Lcom/android/keyguard/Ease$Quint;->easeInOut:Landroid/animation/TimeInterpolator;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
