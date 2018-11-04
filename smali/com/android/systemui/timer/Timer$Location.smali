.class Lcom/android/systemui/timer/Timer$Location;
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
    iput-object p1, p0, Lcom/android/systemui/timer/Timer$Location;->this$0:Lcom/android/systemui/timer/Timer$Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/timer/Timer$Location;->this$0:Lcom/android/systemui/timer/Timer$Main;

    invoke-virtual {v0}, Lcom/android/systemui/timer/Timer;->getLocationState()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/timer/Timer$Main;->isDisabledLastLocation:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/timer/Timer$Main;->setLocationState(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/timer/Timer;->releaseTimerWakeLock(I)V

    return-void
.end method
