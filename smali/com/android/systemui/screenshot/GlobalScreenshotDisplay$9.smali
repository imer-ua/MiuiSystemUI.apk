.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$9;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const-string/jumbo v1, "edit"

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-wrap6(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Ljava/lang/String;)V

    .line 283
    return-void
.end method
