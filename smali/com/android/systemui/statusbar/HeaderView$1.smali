.class Lcom/android/systemui/statusbar/HeaderView$1;
.super Ljava/lang/Object;
.source "HeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/HeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/HeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/HeaderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/HeaderView;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeaderView$1;->this$0:Lcom/android/systemui/statusbar/HeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView$1;->this$0:Lcom/android/systemui/statusbar/HeaderView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/HeaderView;->-get1(Lcom/android/systemui/statusbar/HeaderView;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v3, "com.android.deskclock"

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 270
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 271
    const/high16 v3, 0x10000000

    :try_start_2
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView$1;->this$0:Lcom/android/systemui/statusbar/HeaderView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/HeaderView;->-get0(Lcom/android/systemui/statusbar/HeaderView;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 258
    :cond_1
    :goto_1
    return-void

    .line 264
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView$1;->this$0:Lcom/android/systemui/statusbar/HeaderView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/HeaderView;->-get2(Lcom/android/systemui/statusbar/HeaderView;)Lcom/android/systemui/statusbar/policy/Clock;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 265
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    .restart local v2    # "intent":Landroid/content/Intent;
    :try_start_3
    const-string/jumbo v3, "com.android.calendar"

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView$1;->this$0:Lcom/android/systemui/statusbar/HeaderView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/HeaderView;->-get3(Lcom/android/systemui/statusbar/HeaderView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView$1;->this$0:Lcom/android/systemui/statusbar/HeaderView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/HeaderView;->-wrap0(Lcom/android/systemui/statusbar/HeaderView;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 274
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method
