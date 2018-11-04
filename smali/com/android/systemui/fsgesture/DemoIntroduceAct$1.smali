.class Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;
.super Ljava/lang/Object;
.source "DemoIntroduceAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/DemoIntroduceAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->finish()V

    .line 41
    return-void
.end method
