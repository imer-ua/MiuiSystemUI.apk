.class Lcom/android/systemui/qs/QSSecurityFooter$2;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get5(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get4(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->-get5(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get8(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get7(Lcom/android/systemui/qs/QSSecurityFooter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 396
    return-void

    .line 400
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
