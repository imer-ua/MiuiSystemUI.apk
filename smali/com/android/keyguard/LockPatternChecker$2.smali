.class final Lcom/android/keyguard/LockPatternChecker$2;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/LockPatternChecker;->checkPasswordForUsers(Lcom/android/keyguard/LockPatternUtilsWrapper;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Landroid/content/Context;Lcom/android/keyguard/OnCheckForUsersCallback;)Landroid/os/AsyncTask;
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

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LockPatternUtilsWrapper;Ljava/lang/String;Lcom/android/keyguard/OnCheckForUsersCallback;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "val$lockPatternUtilsWrapper"    # Lcom/android/keyguard/LockPatternUtilsWrapper;
    .param p2, "val$password"    # Ljava/lang/String;
    .param p3, "val$callback"    # Lcom/android/keyguard/OnCheckForUsersCallback;
    .param p4, "val$context"    # Landroid/content/Context;
    .param p5, "val$lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$lockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    iput-object p2, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$callback:Lcom/android/keyguard/OnCheckForUsersCallback;

    iput-object p4, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 115
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/keyguard/LockPatternChecker$2;->mUserIdMatched:I

    .line 113
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 119
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 120
    .local v0, "currentUserId":I
    iput v0, p0, Lcom/android/keyguard/LockPatternChecker$2;->mUserIdMatched:I

    .line 122
    :try_start_0
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$lockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v9, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$password:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$callback:Lcom/android/keyguard/OnCheckForUsersCallback;

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/keyguard/LockPatternUtilsWrapper;->checkPassword(Ljava/lang/String;ILcom/android/keyguard/OnCheckForUsersCallback;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 123
    iput v0, p0, Lcom/android/keyguard/LockPatternChecker$2;->mUserIdMatched:I

    .line 124
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$context:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v0, v9}, Lcom/android/keyguard/LockPatternChecker;->-wrap4(Landroid/content/Context;IZ)V

    .line 125
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 127
    :cond_0
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v0, v9}, Lcom/android/keyguard/LockPatternChecker;->-wrap4(Landroid/content/Context;IZ)V

    .line 128
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v8, v9, v0}, Lcom/android/keyguard/LockPatternChecker;->-wrap3(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->mThrottleTimeout:I
    :try_end_0
    .catch Lcom/android/keyguard/KeyguardRequestThrottledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/MiuiKeyguardUtils;->getUserList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 138
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 139
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    .line 140
    .local v6, "userId":I
    if-eq v6, v0, :cond_1

    .line 144
    :try_start_1
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$lockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-static {v8, v6}, Lcom/android/keyguard/LockPatternChecker;->-wrap0(Lcom/android/keyguard/LockPatternUtilsWrapper;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 145
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v6, v8}, Lcom/android/keyguard/LockPatternChecker;->-wrap2(ILcom/android/internal/widget/LockPatternUtils;)Z

    move-result v8

    .line 144
    if-eqz v8, :cond_1

    .line 146
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$lockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v9, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$password:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lcom/android/keyguard/LockPatternUtilsWrapper;->checkPassword(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 147
    iput v6, p0, Lcom/android/keyguard/LockPatternChecker$2;->mUserIdMatched:I

    .line 148
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$context:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v0, v9}, Lcom/android/keyguard/LockPatternChecker;->-wrap4(Landroid/content/Context;IZ)V

    .line 149
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/android/keyguard/KeyguardRequestThrottledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    return-object v8

    .line 132
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v6    # "userId":I
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v2

    .line 133
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/keyguard/LockPatternChecker;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "checkPasswordForUsers failed"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/keyguard/AnalyticsHelper;->trackCheckPasswordFailedException(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 131
    .local v1, "ex":Lcom/android/keyguard/KeyguardRequestThrottledException;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardRequestThrottledException;->getTimeoutMs()I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->mThrottleTimeout:I

    goto :goto_0

    .line 151
    .end local v1    # "ex":Lcom/android/keyguard/KeyguardRequestThrottledException;
    .restart local v3    # "info":Landroid/content/pm/UserInfo;
    .restart local v4    # "info$iterator":Ljava/util/Iterator;
    .restart local v6    # "userId":I
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    :try_start_2
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v0, v9}, Lcom/android/keyguard/LockPatternChecker;->-wrap4(Landroid/content/Context;IZ)V

    .line 152
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v8, v9, v6}, Lcom/android/keyguard/LockPatternChecker;->-wrap3(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)I

    move-result v5

    .line 153
    .local v5, "timeout":I
    iget-object v8, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J
    :try_end_2
    .catch Lcom/android/keyguard/KeyguardRequestThrottledException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 156
    .end local v5    # "timeout":I
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Lcom/android/keyguard/KeyguardRequestThrottledException;
    goto :goto_1

    .line 158
    .end local v1    # "ex":Lcom/android/keyguard/KeyguardRequestThrottledException;
    :catch_3
    move-exception v2

    .line 159
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/keyguard/LockPatternChecker;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "checkPasswordForUsers other users failed"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/keyguard/AnalyticsHelper;->trackCheckPasswordFailedException(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    :cond_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/LockPatternChecker$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/keyguard/LockPatternChecker$2;->val$callback:Lcom/android/keyguard/OnCheckForUsersCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/android/keyguard/LockPatternChecker$2;->mUserIdMatched:I

    iget v3, p0, Lcom/android/keyguard/LockPatternChecker$2;->mThrottleTimeout:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/OnCheckForUsersCallback;->onChecked(ZII)V

    .line 167
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/LockPatternChecker$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
