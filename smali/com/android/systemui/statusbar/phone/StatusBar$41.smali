.class Lcom/android/systemui/statusbar/phone/StatusBar$41;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->start()V
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
    .line 1209
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1226
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1218
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get25(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set13(Lcom/android/systemui/statusbar/phone/StatusBar;I)I

    .line 1220
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get16(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1221
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$41;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateStatusBarPading()V

    .line 1216
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1212
    return-void
.end method
