.class Lcom/android/systemui/qs/QSFooterDataUsage$2;
.super Ljava/lang/Object;
.source "QSFooterDataUsage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFooterDataUsage;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooterDataUsage;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooterDataUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooterDataUsage;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$2;->this$0:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage$2;->this$0:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterDataUsage;->-get0(Lcom/android/systemui/qs/QSFooterDataUsage;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$2;->this$0:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-static {v1}, Lcom/android/systemui/qs/QSFooterDataUsage;->-get0(Lcom/android/systemui/qs/QSFooterDataUsage;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 68
    return-void
.end method
