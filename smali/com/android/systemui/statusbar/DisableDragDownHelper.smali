.class public Lcom/android/systemui/statusbar/DisableDragDownHelper;
.super Lcom/android/systemui/statusbar/DragDownHelper;
.source "DisableDragDownHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p4, "dragDownCallback"    # Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
