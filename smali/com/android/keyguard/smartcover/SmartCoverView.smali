.class public abstract Lcom/android/keyguard/smartcover/SmartCoverView;
.super Landroid/widget/RelativeLayout;
.source "SmartCoverView.java"

# interfaces
.implements Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;


# instance fields
.field private SMS_INBOX_URI:Landroid/net/Uri;

.field private mBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/smartcover/ContentProviderBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected mCharging:Z

.field protected mFull:Z

.field protected mLevel:I

.field protected mLowBatteryWarningLevel:I

.field protected mMissCallNum:I

.field protected mShowMissCall:Z

.field protected mShowSms:Z

.field protected mSmsNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->SMS_INBOX_URI:Landroid/net/Uri;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->SMS_INBOX_URI:Landroid/net/Uri;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private fillMissedCall()V
    .locals 4

    .prologue
    .line 58
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 59
    const-string/jumbo v2, "number"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 61
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v1, "type=3 AND new=1"

    .line 62
    .local v1, "where":Ljava/lang/String;
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/smartcover/SmartCoverView;->addContentProviderBinder(Landroid/net/Uri;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v2

    .line 63
    const-string/jumbo v3, "call_missed_count"

    .line 62
    invoke-virtual {v2, v3}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    .line 57
    return-void
.end method

.method private fillUnreadSms()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->SMS_INBOX_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/SmartCoverView;->addContentProviderBinder(Landroid/net/Uri;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "seen=0 AND read=0"

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "sms_unread_count"

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    .line 66
    return-void
.end method


# virtual methods
.method public addContentProviderBinder(Landroid/net/Uri;)Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 72
    new-instance v0, Lcom/android/keyguard/smartcover/ContentProviderBinder;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/smartcover/ContentProviderBinder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "binder":Lcom/android/keyguard/smartcover/ContentProviderBinder;
    invoke-virtual {v0, p0}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->setQueryCompleteListener(Lcom/android/keyguard/smartcover/ContentProviderBinder$QueryCompleteListener;)V

    .line 74
    invoke-virtual {v0, p1}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->setUri(Landroid/net/Uri;)V

    .line 75
    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;

    invoke-direct {v1, v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder$Builder;-><init>(Lcom/android/keyguard/smartcover/ContentProviderBinder;)V

    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 50
    invoke-direct {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->fillMissedCall()V

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->fillUnreadSms()V

    .line 52
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cpb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/ContentProviderBinder;

    .line 53
    .local v0, "cpb":Lcom/android/keyguard/smartcover/ContentProviderBinder;
    invoke-virtual {v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->init()V

    goto :goto_0

    .line 48
    .end local v0    # "cpb":Lcom/android/keyguard/smartcover/ContentProviderBinder;
    :cond_0
    return-void
.end method

.method public onBatteryInfoRefresh(ZZI)V
    .locals 0
    .param p1, "charging"    # Z
    .param p2, "full"    # Z
    .param p3, "level"    # I

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mCharging:Z

    .line 102
    iput-boolean p2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mFull:Z

    .line 103
    iput p3, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mLevel:I

    .line 104
    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->refresh()V

    .line 100
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 82
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cpb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/ContentProviderBinder;

    .line 83
    .local v0, "cpb":Lcom/android/keyguard/smartcover/ContentProviderBinder;
    invoke-virtual {v0}, Lcom/android/keyguard/smartcover/ContentProviderBinder;->finish()V

    goto :goto_0

    .line 80
    .end local v0    # "cpb":Lcom/android/keyguard/smartcover/ContentProviderBinder;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    const v1, 0x11080003

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mLowBatteryWarningLevel:I

    .line 41
    return-void
.end method

.method public onQueryCompleted(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "num"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    if-lez p2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mShowMissCall:Z

    .line 91
    iput p2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mMissCallNum:I

    .line 97
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->refresh()V

    .line 88
    return-void

    :cond_1
    move v0, v1

    .line 90
    goto :goto_0

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->SMS_INBOX_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    if-lez p2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mShowSms:Z

    .line 95
    iput p2, p0, Lcom/android/keyguard/smartcover/SmartCoverView;->mSmsNum:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 94
    goto :goto_2
.end method

.method protected abstract refresh()V
.end method
