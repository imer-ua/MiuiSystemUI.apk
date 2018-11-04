.class Lcom/android/systemui/qs/QSDetailItems$1;
.super Ljava/lang/Object;
.source "QSDetailItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic val$icon:I

.field final synthetic val$text:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailItems;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetailItems;
    .param p2, "val$icon"    # I
    .param p3, "val$text"    # I

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$1;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iput p2, p0, Lcom/android/systemui/qs/QSDetailItems$1;->val$icon:I

    iput p3, p0, Lcom/android/systemui/qs/QSDetailItems$1;->val$text:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$1;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/QSDetailItems$1;->val$icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$1;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get3(Lcom/android/systemui/qs/QSDetailItems;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/QSDetailItems$1;->val$text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    return-void
.end method
