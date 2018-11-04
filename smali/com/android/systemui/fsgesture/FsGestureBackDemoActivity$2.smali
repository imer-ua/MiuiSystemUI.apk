.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;
.super Ljava/lang/Object;
.source "FsGestureBackDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finish()V

    .line 170
    return-void
.end method
