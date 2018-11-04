.class Lcom/android/systemui/statusbar/phone/StatusBar$48;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
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
    .line 1897
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap8(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/MotionEvent;)V

    .line 1901
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
