.class Lcom/android/systemui/timer/Timer$WiFi;
.super Ljava/lang/Object;
.source "Timer$Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/timer/Timer$Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/timer/Timer$Main;


# direct methods
.method constructor <init>(Lcom/android/systemui/timer/Timer$Main;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/timer/Timer$WiFi;->this$0:Lcom/android/systemui/timer/Timer$Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer$WiFi;->this$0:Lcom/android/systemui/timer/Timer$Main;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/timer/Timer$Main;->isDisabledWifi:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/timer/Timer;->setWifiState(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/timer/Timer;->releaseTimerWakeLock(I)V

    return-void
.end method
