.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendar:Lmiui/date/Calendar;

.field private mClockMode:I

.field private mDemoMode:Z

.field public mForceHideAmPm:Z

.field private mShowAmPm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowAmPm:Z

    .line 66
    return-void
.end method

.method private showDemoModeClock()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 252
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    if-nez v3, :cond_0

    .line 253
    new-instance v3, Lmiui/date/Calendar;

    invoke-direct {v3}, Lmiui/date/Calendar;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v6}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 257
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    const/16 v4, 0x14

    const/16 v5, 0x24

    invoke-virtual {v3, v4, v5}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 258
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    if-ne v3, v6, :cond_2

    .line 259
    const v1, 0x910048b

    .line 260
    .local v1, "resId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .end local v1    # "resId":I
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 262
    const v1, 0x9100489

    .line 263
    .restart local v1    # "resId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    .end local v1    # "resId":I
    :cond_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    .line 266
    .local v2, "ri":Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;
    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->getTimeFormat()I

    move-result v0

    .line 268
    .local v0, "flags":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v3}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0xc

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 241
    const-string/jumbo v0, "demo_mode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Clock mDemoMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->showDemoModeClock()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 80
    sget-object v1, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    .line 81
    .local v0, "ri":Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    .end local v0    # "ri":Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;-><init>(Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;)V

    .line 83
    .restart local v0    # "ri":Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;
    sget-object v1, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const/16 v1, 0x20

    .line 85
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->setTimeFormat(I)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->addView(Lcom/android/systemui/statusbar/policy/Clock;)V

    .line 78
    return-void

    .line 86
    :cond_1
    const/16 v1, 0x10

    goto :goto_0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 3
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    const v0, 0x90c0140

    .line 152
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const v0, 0x90c009c

    .line 153
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    .line 151
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 158
    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    const v0, 0x90c0141

    .line 157
    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 93
    sget-object v1, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    .line 94
    .local v0, "ri":Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->removeView(Lcom/android/systemui/statusbar/policy/Clock;)V

    .line 91
    :cond_0
    return-void
.end method

.method public setClockMode(I)V
    .locals 1
    .param p1, "clockMode"    # I

    .prologue
    .line 71
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    if-eq v0, p1, :cond_0

    .line 72
    iput p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 70
    :cond_0
    return-void
.end method

.method public setShowAmPm(Z)V
    .locals 0
    .param p1, "showAmPm"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowAmPm:Z

    .line 100
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 146
    return-void
.end method

.method final updateClock()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 106
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v3, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->showDemoModeClock()V

    .line 108
    return-void

    .line 110
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/Clock;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    .line 111
    .local v2, "ri":Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 112
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    if-nez v3, :cond_1

    .line 113
    new-instance v3, Lmiui/date/Calendar;

    invoke-direct {v3}, Lmiui/date/Calendar;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 116
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 117
    const v1, 0x910048b

    .line 118
    .local v1, "resId":I
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->getTimeFormat()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 119
    const v1, 0x910048c

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .end local v1    # "resId":I
    :cond_3
    :goto_0
    return-void

    .line 122
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 123
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    if-nez v3, :cond_5

    .line 124
    new-instance v3, Lmiui/date/Calendar;

    invoke-direct {v3}, Lmiui/date/Calendar;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    .line 126
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 128
    const v1, 0x9100489

    .line 129
    .restart local v1    # "resId":I
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->getTimeFormat()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 130
    const v1, 0x910048a

    .line 132
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Lmiui/date/Calendar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 134
    .end local v1    # "resId":I
    :cond_7
    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->getTimeFormat()I

    move-result v0

    .line 136
    .local v0, "flags":I
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowAmPm:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mForceHideAmPm:Z

    if-eqz v3, :cond_9

    .line 139
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0xc

    or-int/lit8 v3, v3, 0x40

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0xc

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
