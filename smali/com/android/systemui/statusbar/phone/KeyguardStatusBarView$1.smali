.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;
.super Landroid/database/ContentObserver;
.source "KeyguardStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->registerSosStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method
