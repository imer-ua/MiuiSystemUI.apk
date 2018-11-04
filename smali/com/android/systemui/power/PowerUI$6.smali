.class Lcom/android/systemui/power/PowerUI$6;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 336
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 337
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelImageView:Landroid/widget/ImageView;

    .line 338
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->hideLowBatteryNotification(Landroid/content/Context;)V

    .line 334
    return-void
.end method
