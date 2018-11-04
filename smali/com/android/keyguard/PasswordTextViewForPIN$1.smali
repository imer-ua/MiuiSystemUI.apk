.class Lcom/android/keyguard/PasswordTextViewForPIN$1;
.super Ljava/lang/Object;
.source "PasswordTextViewForPIN.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPIN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PasswordTextViewForPIN;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPIN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextViewForPIN;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPIN$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 84
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get6(Lcom/android/keyguard/PasswordTextViewForPIN;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 86
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPIN;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextViewForPIN;->-get6(Lcom/android/keyguard/PasswordTextViewForPIN;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    .line 88
    .local v0, "charState":Lcom/android/keyguard/PasswordTextViewForPIN$CharState;
    sub-int v3, v2, v1

    int-to-long v6, v3

    .line 85
    const-wide/16 v8, 0x28

    .line 88
    mul-long v4, v6, v8

    .line 89
    .local v4, "startDelay":J
    invoke-static {v0, v4, v5}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->-wrap1(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;J)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextViewForPIN$CharState;
    .end local v4    # "startDelay":J
    :cond_0
    return-void
.end method
