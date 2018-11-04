.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;
.super Lmiui/maml/ActionCommand;
.source "UnlockVerifyPasswordCommand.java"


# instance fields
.field private mDelayExp:Lmiui/maml/data/Expression;

.field private mEnable:Z

.field private mEnableExp:Lmiui/maml/data/Expression;

.field private mPasswordExp:Lmiui/maml/data/Expression;

.field private mTriggers:Lmiui/maml/CommandTriggers;


# direct methods
.method static synthetic -get0(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;)Lmiui/maml/data/Expression;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mPasswordExp:Lmiui/maml/data/Expression;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;)Lmiui/maml/CommandTriggers;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;)Lmiui/maml/ScreenElementRoot;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mPasswordExp:Lmiui/maml/data/Expression;

    .line 49
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mPasswordExp:Lmiui/maml/data/Expression;

    if-nez v1, :cond_0

    .line 50
    const-string/jumbo v1, "UnlockVerifyPasswordCommand"

    const-string/jumbo v2, "no password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "unlockDelay"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mDelayExp:Lmiui/maml/data/Expression;

    .line 54
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "enable"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnableExp:Lmiui/maml/data/Expression;

    .line 56
    const-string/jumbo v1, "Triggers"

    invoke-static {p2, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 57
    .local v0, "triggers":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_1

    .line 58
    new-instance v1, Lmiui/maml/CommandTriggers;

    invoke-direct {v1, v0, p1}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 64
    iget-boolean v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnable:Z

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mDelayExp:Lmiui/maml/data/Expression;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    double-to-int v0, v2

    .line 66
    .local v0, "delay":I
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand$1;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;I)V

    .line 84
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    .end local v0    # "delay":I
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :goto_1
    return-void

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mDelayExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v2, v3, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->unlocked(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lmiui/maml/ActionCommand;->finish()V

    .line 117
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->finish()V

    .line 115
    :cond_0
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-super {p0}, Lmiui/maml/ActionCommand;->init()V

    .line 94
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->init()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mPasswordExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnableExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnableExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->getPasswordMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 97
    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnable:Z

    .line 100
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mEnable:Z

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    .line 107
    const/4 v1, 0x7

    .line 106
    invoke-virtual {v0, v1, v2}, Lmiui/maml/ScreenElementRoot;->setCapability(IZ)V

    .line 92
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 99
    goto :goto_0

    :cond_4
    move v0, v2

    .line 97
    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lmiui/maml/ActionCommand;->pause()V

    .line 124
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    .line 122
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lmiui/maml/ActionCommand;->resume()V

    .line 131
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    .line 129
    :cond_0
    return-void
.end method
