.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChange(Z)V
    .locals 2
    .param p1, "succeed"    # Z

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V

    .line 387
    :cond_0
    return-void
.end method
