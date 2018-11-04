.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 406
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 407
    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;)V

    .line 412
    const/4 v7, 0x0

    move-wide v4, v2

    .line 406
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;JJLjava/lang/Runnable;Z)V

    .line 405
    return-void
.end method
