.class Lcom/android/systemui/statusbar/phone/NavStubView$StubViewDisplayListener;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubViewDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$StubViewDisplayListener;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;Lcom/android/systemui/statusbar/phone/NavStubView$StubViewDisplayListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView$StubViewDisplayListener;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1033
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$StubViewDisplayListener;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap6(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    .line 1039
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1036
    return-void
.end method
