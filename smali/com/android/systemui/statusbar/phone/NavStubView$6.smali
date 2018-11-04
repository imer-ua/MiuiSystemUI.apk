.class Lcom/android/systemui/statusbar/phone/NavStubView$6;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->writeRotationForBsp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

.field final synthetic val$finalRotaion:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavStubView;
    .param p2, "val$finalRotaion"    # I

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$6;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$6;->val$finalRotaion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1065
    const-string/jumbo v0, "sys.tp.grip_enable"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$6;->val$finalRotaion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    return-void
.end method
