.class Lcom/android/systemui/RoundedCorners$5;
.super Lcom/android/systemui/qs/SecureSetting;
.source "RoundedCorners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/RoundedCorners;->initRoundCornerWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/RoundedCorners;


# direct methods
.method constructor <init>(Lcom/android/systemui/RoundedCorners;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/RoundedCorners;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/systemui/RoundedCorners$5;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners$5;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v0, p1}, Lcom/android/systemui/RoundedCorners;->-wrap0(Lcom/android/systemui/RoundedCorners;I)V

    .line 274
    return-void
.end method