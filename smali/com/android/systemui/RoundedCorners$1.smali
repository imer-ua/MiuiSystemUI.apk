.class Lcom/android/systemui/RoundedCorners$1;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/RoundedCorners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/RoundedCorners;


# direct methods
.method constructor <init>(Lcom/android/systemui/RoundedCorners;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/RoundedCorners;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 321
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v0}, Lcom/android/systemui/RoundedCorners;->-get1(Lcom/android/systemui/RoundedCorners;)Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get0(Lcom/android/systemui/RoundedCorners;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get8(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v2, v2, Lcom/android/systemui/RoundedCorners;->mTopCorner:[Lcom/android/systemui/RoundedCorners$RoundCornerData;

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v3}, Lcom/android/systemui/RoundedCorners;->-get6(Lcom/android/systemui/RoundedCorners;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2, v4}, Lcom/android/systemui/RoundedCorners;->-wrap2(Lcom/android/systemui/RoundedCorners;Landroid/view/View;Lcom/android/systemui/RoundedCorners$RoundCornerData;Z)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get7(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v2, v2, Lcom/android/systemui/RoundedCorners;->mBottomCorner:[Lcom/android/systemui/RoundedCorners$RoundCornerData;

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v3}, Lcom/android/systemui/RoundedCorners;->-get6(Lcom/android/systemui/RoundedCorners;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2, v4}, Lcom/android/systemui/RoundedCorners;->-wrap2(Lcom/android/systemui/RoundedCorners;Landroid/view/View;Lcom/android/systemui/RoundedCorners$RoundCornerData;Z)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get5(Lcom/android/systemui/RoundedCorners;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v2, v2, Lcom/android/systemui/RoundedCorners;->mNotchCorner:[Lcom/android/systemui/RoundedCorners$RoundCornerData;

    iget-object v3, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v3}, Lcom/android/systemui/RoundedCorners;->-get6(Lcom/android/systemui/RoundedCorners;)I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/RoundedCorners;->-wrap2(Lcom/android/systemui/RoundedCorners;Landroid/view/View;Lcom/android/systemui/RoundedCorners$RoundCornerData;Z)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v0}, Lcom/android/systemui/RoundedCorners;->-wrap1(Lcom/android/systemui/RoundedCorners;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v0}, Lcom/android/systemui/RoundedCorners;->-get9(Lcom/android/systemui/RoundedCorners;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    iget-object v1, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v1}, Lcom/android/systemui/RoundedCorners;->-get9(Lcom/android/systemui/RoundedCorners;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/RoundedCorners;->-wrap0(Lcom/android/systemui/RoundedCorners;I)V

    .line 320
    :cond_0
    return-void
.end method
