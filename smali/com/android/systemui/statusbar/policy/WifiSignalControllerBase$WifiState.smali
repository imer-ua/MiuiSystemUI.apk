.class Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;
.super Lcom/android/systemui/statusbar/policy/SignalController$State;
.source "WifiSignalControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiState"
.end annotation


# instance fields
.field badgeEnum:I

.field isTransient:Z

.field noNetwork:Z

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/systemui/statusbar/policy/SignalController$State;

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    move-object v0, p1

    .line 199
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    .line 200
    .local v0, "state":Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    .line 201
    iget v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    .line 202
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    .line 203
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    .line 197
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 218
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 217
    if-eqz v0, :cond_1

    move-object v0, p1

    .line 219
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    .line 220
    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    if-ne v0, v2, :cond_1

    .line 221
    check-cast p1, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    .end local p1    # "o":Ljava/lang/Object;
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 221
    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v1

    .line 217
    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2c

    .line 208
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    .line 209
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "badgeEnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "isTransient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "noNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    return-void
.end method
