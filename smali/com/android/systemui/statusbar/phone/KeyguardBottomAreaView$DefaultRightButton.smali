.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultRightButton"
.end annotation


# instance fields
.field private mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    .line 748
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 754
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 755
    .local v0, "resolved":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x90d000e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 755
    if-eqz v1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get15(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v1

    .line 755
    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get16(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v1

    .line 755
    :goto_0
    iput-boolean v1, v3, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    .line 759
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get6(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x902007f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 759
    :goto_1
    iput-object v1, v3, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 762
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    .line 763
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x910008a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 762
    iput-object v3, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iput-boolean v2, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    .line 765
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-object v1

    :cond_0
    move v1, v2

    .line 755
    goto :goto_0

    .line 761
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x902007e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 770
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 771
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 772
    const-string/jumbo v1, "ShowCameraWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 773
    const-string/jumbo v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 774
    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.camera"

    const-string/jumbo v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 776
    return-object v0
.end method
