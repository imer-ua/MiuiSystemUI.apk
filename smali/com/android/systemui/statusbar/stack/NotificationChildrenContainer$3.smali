.class Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;
.super Ljava/lang/Object;
.source "NotificationChildrenContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;->this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;->this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->-wrap0(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Z)V

    .line 922
    return-void
.end method
