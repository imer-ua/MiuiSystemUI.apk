.class public abstract Lcom/android/systemui/statusbar/phone/StatusBarIconControllerHelper;
.super Ljava/lang/Object;
.source "StatusBarIconControllerHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 6
    .param p0, "blackListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .local v1, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 10
    const-string/jumbo p0, "rotate,ime"

    .line 12
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "blacklist":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 14
    .local v2, "slot":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 15
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    .end local v2    # "slot":Ljava/lang/String;
    :cond_2
    return-object v1
.end method
