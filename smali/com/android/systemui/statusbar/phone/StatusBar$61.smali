.class Lcom/android/systemui/statusbar/phone/StatusBar$61;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->onHeadsUpPinnedModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 3825
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceWindowCollapsed(Z)V

    .line 3827
    return-void
.end method
