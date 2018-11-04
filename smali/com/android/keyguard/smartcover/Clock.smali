.class public Lcom/android/keyguard/smartcover/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;
    }
.end annotation


# static fields
.field private static sCalendar:Ljava/util/Calendar;

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mShowDate:Z

.field private mShowHour:Z

.field private mShowMinute:Z


# direct methods
.method static synthetic -set0(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    sput-object p0, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/keyguard/smartcover/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/smartcover/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/smartcover/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v0, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 89
    sget-object v1, Lcom/android/keyguard/smartcover/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    .line 90
    .local v0, "ri":Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    .end local v0    # "ri":Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;
    invoke-direct {v0, v2}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;-><init>(Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;)V

    .line 92
    .restart local v0    # "ri":Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;
    sget-object v1, Lcom/android/keyguard/smartcover/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 94
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->addView(Lcom/android/keyguard/smartcover/Clock;)V

    .line 87
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 100
    sget-object v1, Lcom/android/keyguard/smartcover/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;

    .line 101
    .local v0, "ri":Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->removeView(Lcom/android/keyguard/smartcover/Clock;)V

    .line 98
    :cond_0
    return-void
.end method

.method public setShowDate(Z)V
    .locals 1
    .param p1, "showDate"    # Z

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/Clock;->mShowDate:Z

    if-eq v0, p1, :cond_0

    .line 67
    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/Clock;->mShowDate:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/Clock;->updateClock()V

    .line 65
    :cond_0
    return-void
.end method

.method public setShowHour(Z)V
    .locals 1
    .param p1, "showHour"    # Z

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/Clock;->mShowHour:Z

    if-eq v0, p1, :cond_0

    .line 74
    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/Clock;->mShowHour:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/Clock;->updateClock()V

    .line 72
    :cond_0
    return-void
.end method

.method public setShowMinute(Z)V
    .locals 1
    .param p1, "showMinute"    # Z

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/Clock;->mShowMinute:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/Clock;->mShowMinute:Z

    .line 82
    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/Clock;->updateClock()V

    .line 79
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v6, 0xc

    .line 107
    sget-object v7, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 108
    iget-object v7, p0, Lcom/android/keyguard/smartcover/Clock;->mContext:Landroid/content/Context;

    const/4 v8, -0x2

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v4

    .line 109
    .local v4, "is24HourFormat":Z
    iget-boolean v7, p0, Lcom/android/keyguard/smartcover/Clock;->mShowDate:Z

    if-eqz v7, :cond_1

    .line 110
    if-eqz v4, :cond_0

    const v1, 0x91003b0

    .line 111
    .local v1, "dateResId":I
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/smartcover/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    .local v0, "date":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v0    # "date":Ljava/lang/CharSequence;
    .end local v1    # "dateResId":I
    :goto_1
    return-void

    .line 110
    :cond_0
    const v1, 0x91003b1

    .restart local v1    # "dateResId":I
    goto :goto_0

    .line 113
    .end local v1    # "dateResId":I
    :cond_1
    iget-boolean v7, p0, Lcom/android/keyguard/smartcover/Clock;->mShowHour:Z

    if-eqz v7, :cond_4

    .line 114
    sget-object v7, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 115
    .local v3, "hour":I
    if-nez v4, :cond_2

    if-le v3, v6, :cond_2

    add-int/lit8 v3, v3, -0xc

    .line 116
    :cond_2
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    move v3, v6

    .line 117
    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/smartcover/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 118
    .end local v3    # "hour":I
    :cond_4
    iget-boolean v7, p0, Lcom/android/keyguard/smartcover/Clock;->mShowMinute:Z

    if-eqz v7, :cond_5

    .line 119
    sget-object v7, Lcom/android/keyguard/smartcover/Clock;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 120
    .local v5, "minute":I
    const-string/jumbo v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/smartcover/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 122
    .end local v5    # "minute":I
    :cond_5
    if-eqz v4, :cond_6

    const/16 v2, 0x20

    .line 124
    .local v2, "flags":I
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    or-int/lit8 v8, v2, 0xc

    or-int/lit8 v8, v8, 0x40

    invoke-static {v6, v7, v8}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/smartcover/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 123
    .end local v2    # "flags":I
    :cond_6
    const/16 v2, 0x10

    .restart local v2    # "flags":I
    goto :goto_2
.end method
