.class Lcom/android/systemui/statusbar/phone/NavStubView$20;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

.field final synthetic val$finalSize:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;
    .param p2, "val$finalSize"    # I

    .prologue
    .line 2073
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$20;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$20;->val$finalSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2076
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$20;->val$finalSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$20;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 2077
    .local v0, "stubSize":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$20;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap5(Lcom/android/systemui/statusbar/phone/NavStubView;I)V

    .line 2075
    return-void
.end method
