.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmiui/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 660
    check-cast p1, Lmiui/telephony/SubscriptionInfo;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lmiui/telephony/SubscriptionInfo;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I
    .locals 2
    .param p1, "lhs"    # Lmiui/telephony/SubscriptionInfo;
    .param p2, "rhs"    # Lmiui/telephony/SubscriptionInfo;

    .prologue
    .line 661
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 662
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    sub-int/2addr v0, v1

    .line 661
    :goto_0
    return v0

    .line 663
    :cond_0
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method
