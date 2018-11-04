.class public Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;
.super Ljava/lang/Object;
.source "KeyguardNotificationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;


# instance fields
.field private mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

.field private mNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    .line 13
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 32
    .local v1, "num":Ljava/lang/Integer;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 33
    .local v0, "count":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NotificationChangeListener;->onChange(Ljava/util/Map;)V

    .line 30
    :cond_0
    return-void

    .line 32
    .end local v0    # "count":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0
.end method

.method public clearAll()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NotificationChangeListener;->onChange(Ljava/util/Map;)V

    .line 22
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 42
    .local v1, "num":Ljava/lang/Integer;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 43
    .local v0, "count":I
    :goto_0
    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/NotificationChangeListener;->onChange(Ljava/util/Map;)V

    .line 40
    :cond_0
    return-void

    .line 42
    .end local v0    # "count":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 46
    .restart local v0    # "count":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationMap:Ljava/util/Map;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public update(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 18
    return-void
.end method
