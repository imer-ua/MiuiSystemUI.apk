.class Lcom/android/systemui/DependencyUI$40;
.super Ljava/lang/Object;
.source "DependencyUI.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DependencyUI;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DependencyUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/DependencyUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/DependencyUI;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/systemui/DependencyUI$40;->this$0:Lcom/android/systemui/DependencyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDependency()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;-><init>()V

    return-object v0
.end method
