.class Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;
.super Ljava/lang/Object;
.source "HookViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/statusbar/notification/HookViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnClickListenerProxy"
.end annotation


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;->mListener:Landroid/view/View$OnClickListener;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;->mRunnable:Ljava/lang/Runnable;

    .line 15
    return-void
.end method

.method private hook()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;->hook()V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 21
    :cond_0
    return-void
.end method
