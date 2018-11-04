.class Lcom/android/systemui/statusbar/StatusBarIconView$7;
.super Ljava/lang/Object;
.source "StatusBarIconView.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/function/Consumer",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$7;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Float;)V
    .locals 2
    .param p1, "f"    # Ljava/lang/Float;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$7;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->-set2(Lcom/android/systemui/statusbar/StatusBarIconView;F)F

    .line 734
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$7;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->-wrap4(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 735
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$7;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->-wrap2(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 736
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$7;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->-wrap3(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 732
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "f"    # Ljava/lang/Object;

    .prologue
    .line 732
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "f":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView$7;->accept(Ljava/lang/Float;)V

    return-void
.end method
