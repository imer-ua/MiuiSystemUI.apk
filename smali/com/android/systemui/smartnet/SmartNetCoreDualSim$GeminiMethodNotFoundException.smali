.class Lcom/android/systemui/smartnet/SmartNetCoreDualSim$GeminiMethodNotFoundException;
.super Ljava/lang/Exception;
.source "SmartNetCoreDualSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/smartnet/SmartNetCoreDualSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeminiMethodNotFoundException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xdd5638ea8e5679cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 181
    return-void
.end method
