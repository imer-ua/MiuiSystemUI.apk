.class Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
.super Ljava/lang/Object;
.source "MiuiLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualViewContainer"
.end annotation


# instance fields
.field description:Ljava/lang/CharSequence;

.field final synthetic this$1:Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->this$1:Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1291
    iput-object p2, p0, Lcom/android/keyguard/MiuiLockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    .line 1290
    return-void
.end method
