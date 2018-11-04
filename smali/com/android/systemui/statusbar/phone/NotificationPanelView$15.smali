.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->releaseLiveWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$wallPaperPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p2, "val$wallPaperPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$wallPaperPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$wallPaperPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 525
    return-void
.end method
