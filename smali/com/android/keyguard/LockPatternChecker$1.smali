.class final Lcom/android/keyguard/LockPatternChecker$1;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/LockPatternChecker;->checkPatternForUsers(Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Landroid/content/Context;Lcom/android/keyguard/OnCheckForUsersCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field private mUserIdMatched:I

.field final synthetic val$callback:Lcom/android/keyguard/OnCheckForUsersCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$lockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/keyguard/OnCheckForUsersCallback;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p2, "val$lockPatternUtilsWrapper"    # Lcom/android/keyguard/LockPatternUtilsWrapper;
    .param p3, "val$callback"    # Lcom/android/keyguard/OnCheckForUsersCallback;
    .param p4, "val$context"    # Landroid/content/Context;
    .param p5, "val$lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 38
    .local p1, "val$pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iput-object p1, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    iput-object p2, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$lockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    iput-object p3, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$callback:Lcom/android/keyguard/OnCheckForUsersCallback;

    iput-object p4, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/keyguard/LockPatternChecker$1;->mUserIdMatched:I

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 44
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 45
    .local v0, "currentUserId":I
    iput v0, p0, Lcom/android/keyguard/LockPatternChecker$1;->mUserIdMatched:I

    .line 47
    :try_start_0
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 57
    :cond_0
    const-string/jumbo v8, "miui_keyguard"

    const-string/jumbo v9, "pattern is null when check pattern for currentUserId"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/keyguard/KeyguardRequestThrottledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    :goto_0
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/MiuiKeyguardUtils;->getUserList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 67
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 68
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    .line 69
    .local v6, "userId":I
    if-eq v6, v0, :cond_1

    .line 73
    :try_start_1
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 87
    :cond_2
    const-string/jumbo v8, "miui_keyguard"

    const-string/jumbo v9, "pattern is null when check pattern foe other user"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/keyguard/KeyguardRequestThrottledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 89
    :catch_0
    move-exception v1

    .local v1, "ex":Lcom/android/keyguard/KeyguardRequestThrottledException;
    goto :goto_1

    .line 48
    .end local v1    # "ex":Lcom/android/keyguard/KeyguardRequestThrottledException;
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v6    # "userId":I
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$lockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v9, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    iget-object v10, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$callback:Lcom/android/keyguard/OnCheckForUsersCallback;

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/keyguard/LockPatternUtilsWrapper;->checkPattern(Ljava/util/List;ILcom/android/keyguard/OnCheckForUsersCallback;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 49
    iput v0, p0, Lcom/android/keyguard/LockPatternChecker$1;->mUserIdMatched:I

    .line 50
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$context:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v0, v9}, Lcom/android/keyguard/LockPatternChecker;->-wrap4(Landroid/content/Context;IZ)V

    .line 51
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 53
    :cond_4
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v0, v9}, Lcom/android/keyguard/LockPatternChecker;->-wrap4(Landroid/content/Context;IZ)V

    .line 54
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v8, v9, v0}, Lcom/android/keyguard/LockPatternChecker;->-wrap3(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->mThrottleTimeout:I
    :try_end_2
    .catch Lcom/android/keyguard/KeyguardRequestThrottledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 59
    :catch_1
    move-exception v1

    .line 60
    .restart local v1    # "ex":Lcom/android/keyguard/KeyguardRequestThrottledException;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardRequestThrottledException;->getTimeoutMs()I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->mThrottleTimeout:I

    goto :goto_0

    .line 61
    .end local v1    # "ex":Lcom/android/keyguard/KeyguardRequestThrottledException;
    :catch_2
    move-exception v2

    .line 62
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/keyguard/LockPatternChecker;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "checkPatternForUsers failed"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/keyguard/AnalyticsHelper;->trackCheckPasswordFailedException(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "info":Landroid/content/pm/UserInfo;
    .restart local v4    # "info$iterator":Ljava/util/Iterator;
    .restart local v6    # "userId":I
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    :try_start_3
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$lockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-static {v8, v6}, Lcom/android/keyguard/LockPatternChecker;->-wrap1(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 75
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v6, v8}, Lcom/android/keyguard/LockPatternChecker;->-wrap2(ILcom/android/internal/widget/LockPatternUtils;)Z

    move-result v8

    .line 74
    if-eqz v8, :cond_1

    .line 76
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$lockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v9, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    invoke-virtual {v8, v9, v6}, Lcom/android/keyguard/LockPatternUtilsWrapper;->checkPattern(Ljava/util/List;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 77
    iput v6, p0, Lcom/android/keyguard/LockPatternChecker$1;->mUserIdMatched:I

    .line 78
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$context:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v6, v9}, Lcom/android/keyguard/LockPatternChecker;->-wrap4(Landroid/content/Context;IZ)V

    .line 79
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 81
    :cond_6
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v6, v9}, Lcom/android/keyguard/LockPatternChecker;->-wrap4(Landroid/content/Context;IZ)V

    .line 82
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v8, v9, v6}, Lcom/android/keyguard/LockPatternChecker;->-wrap3(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v5

    .line 83
    .local v5, "timeout":I
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J
    :try_end_3
    .catch Lcom/android/keyguard/KeyguardRequestThrottledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 91
    .end local v5    # "timeout":I
    :catch_3
    move-exception v2

    .line 92
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/keyguard/LockPatternChecker;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "checkPatternForUsers other users failed"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/keyguard/AnalyticsHelper;->trackCheckPasswordFailedException(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 96
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    :cond_7
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/LockPatternChecker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/keyguard/LockPatternChecker$1;->val$callback:Lcom/android/keyguard/OnCheckForUsersCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/android/keyguard/LockPatternChecker$1;->mUserIdMatched:I

    iget v3, p0, Lcom/android/keyguard/LockPatternChecker$1;->mThrottleTimeout:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/OnCheckForUsersCallback;->onChecked(ZII)V

    .line 100
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/LockPatternChecker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
