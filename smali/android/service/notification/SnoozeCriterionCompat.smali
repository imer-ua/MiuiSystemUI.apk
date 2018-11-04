.class public final Landroid/service/notification/SnoozeCriterionCompat;
.super Ljava/lang/Object;
.source "SnoozeCriterionCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnoozeCriteria(Landroid/service/notification/NotificationListenerService$Ranking;)Ljava/util/List;
    .locals 1
    .param p0, "ranking"    # Landroid/service/notification/NotificationListenerService$Ranking;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/NotificationListenerService$Ranking;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/SnoozeCriterionCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getConfirmation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExplanation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method
