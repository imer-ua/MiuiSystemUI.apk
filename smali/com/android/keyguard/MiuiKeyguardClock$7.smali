.class Lcom/android/keyguard/MiuiKeyguardClock$7;
.super Ljava/lang/Object;
.source "MiuiKeyguardClock.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardClock;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/MiuiKeyguardClock;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$7;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 204
    sub-int v0, p5, p9

    .line 205
    .local v0, "height":I
    if-lez v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock$7;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lcom/android/keyguard/MiuiKeyguardClock;->-set4(Lcom/android/keyguard/MiuiKeyguardClock;F)F

    .line 207
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardClock;->-get4()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 203
    :cond_0
    return-void
.end method
