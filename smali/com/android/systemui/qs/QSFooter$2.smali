.class Lcom/android/systemui/qs/QSFooter$2;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFooter;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
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
    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    sub-int v1, p4, p2

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSFooter;->-wrap0(Lcom/android/systemui/qs/QSFooter;I)V

    .line 165
    return-void
.end method
