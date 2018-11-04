.class Lcom/android/systemui/fsgesture/HomeDemoAct$2;
.super Ljava/lang/Object;
.source "HomeDemoAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/HomeDemoAct;->startSwipeViewAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/HomeDemoAct;
    .param p2, "val$status"    # I

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    iput p2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->-get0(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$2;->val$status:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->prepare(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->-get0(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$2;->val$status:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->startAnimation(I)V

    .line 132
    return-void
.end method
