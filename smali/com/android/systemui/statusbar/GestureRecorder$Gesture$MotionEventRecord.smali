.class public Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;
.super Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;
.source "GestureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MotionEventRecord"
.end annotation


# instance fields
.field public event:Landroid/view/MotionEvent;

.field final synthetic this$1:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/GestureRecorder$Gesture;JLandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
    .param p2, "when"    # J
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->this$1:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;-><init>(Lcom/android/systemui/statusbar/GestureRecorder$Gesture;)V

    .line 48
    iput-wide p2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->time:J

    .line 49
    invoke-static {p4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    .line 47
    return-void
.end method


# virtual methods
.method actionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :pswitch_0
    const-string/jumbo v0, "down"

    return-object v0

    .line 56
    :pswitch_1
    const-string/jumbo v0, "up"

    return-object v0

    .line 58
    :pswitch_2
    const-string/jumbo v0, "move"

    return-object v0

    .line 60
    :pswitch_3
    const-string/jumbo v0, "cancel"

    return-object v0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string/jumbo v0, "{\"type\":\"motion\", \"time\":%d, \"action\":\"%s\", \"x\":%.2f, \"y\":%.2f, \"s\":%.2f, \"p\":%.2f}"

    .line 66
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    iget-wide v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 70
    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->actionName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 71
    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 74
    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$MotionEventRecord;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 66
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
