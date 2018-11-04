.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;
.super Ljava/lang/Object;
.source "BuiltinVariableBinders.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fill(Lmiui/maml/data/VariableBinderManager;)V
    .locals 0
    .param p0, "m"    # Lmiui/maml/data/VariableBinderManager;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fillMissedCall(Lmiui/maml/data/VariableBinderManager;)V

    .line 10
    invoke-static {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fillUnreadSms(Lmiui/maml/data/VariableBinderManager;)V

    .line 8
    return-void
.end method

.method private static fillMissedCall(Lmiui/maml/data/VariableBinderManager;)V
    .locals 4
    .param p0, "m"    # Lmiui/maml/data/VariableBinderManager;

    .prologue
    .line 14
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 15
    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "number"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 17
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v1, "type=3 AND new=1"

    .line 18
    .local v1, "where":Ljava/lang/String;
    const-string/jumbo v2, "content://call_log/calls"

    invoke-virtual {p0, v2}, Lmiui/maml/data/VariableBinderManager;->addContentProviderBinder(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/maml/data/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/maml/data/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v2

    .line 19
    const-string/jumbo v3, "call_missed_count"

    .line 18
    invoke-virtual {v2, v3}, Lmiui/maml/data/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;

    .line 13
    return-void
.end method

.method private static fillUnreadSms(Lmiui/maml/data/VariableBinderManager;)V
    .locals 3
    .param p0, "m"    # Lmiui/maml/data/VariableBinderManager;

    .prologue
    .line 23
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 24
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 26
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v1, "content://sms/inbox"

    invoke-virtual {p0, v1}, Lmiui/maml/data/VariableBinderManager;->addContentProviderBinder(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/maml/data/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v1

    .line 27
    const-string/jumbo v2, "seen=0 AND read=0"

    .line 26
    invoke-virtual {v1, v2}, Lmiui/maml/data/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v1

    .line 27
    const-string/jumbo v2, "sms_unread_count"

    .line 26
    invoke-virtual {v1, v2}, Lmiui/maml/data/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;

    .line 22
    return-void
.end method
