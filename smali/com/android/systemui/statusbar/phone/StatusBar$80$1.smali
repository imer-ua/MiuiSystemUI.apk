.class Lcom/android/systemui/statusbar/phone/StatusBar$80$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$80;->onClickCheckSave(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$80;

.field final synthetic val$saveImportance:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$80;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$80;
    .param p2, "val$saveImportance"    # Ljava/lang/Runnable;

    .prologue
    .line 7841
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$80;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80$1;->val$saveImportance:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 1

    .prologue
    .line 7843
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$80$1;->val$saveImportance:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7844
    const/4 v0, 0x1

    return v0
.end method
