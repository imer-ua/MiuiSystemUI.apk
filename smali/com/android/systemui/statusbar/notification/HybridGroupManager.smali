.class public Lcom/android/systemui/statusbar/notification/HybridGroupManager;
.super Ljava/lang/Object;
.source "HybridGroupManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDarkAmount:F

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field private mOverflowNumberColor:I

.field private mOverflowNumberColorDark:I

.field private final mOverflowNumberPadding:I

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/notification/HybridGroupManager;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/notification/HybridGroupManager;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "numberView"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    .line 50
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x90f009c

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    .line 47
    return-void
.end method

.method private bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 2
    .param p1, "reusableView"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "style"    # I

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object p1

    .line 112
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 113
    .local v1, "titleText":Ljava/lang/CharSequence;
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    .local v0, "contentText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 115
    return-object p1
.end method

.method private inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 6
    .param p1, "style"    # I

    .prologue
    const/4 v5, 0x0

    .line 58
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 59
    const-class v3, Landroid/view/LayoutInflater;

    .line 58
    invoke-virtual {v2, v3}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 61
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v3, 0x9040047

    .line 60
    invoke-virtual {v1, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .line 62
    .local v0, "hybrid":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    sget-boolean v2, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f0468

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 66
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90f0469

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 63
    invoke-virtual {v0, v2, v5, v3, v5}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->setPaddingRelative(IIII)V

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    return-object v0
.end method

.method private inflateOverflowNumber()Landroid/widget/TextView;
    .locals 5

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const v3, 0x9040048

    const/4 v4, 0x0

    .line 75
    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    .local v1, "numberView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    .line 79
    return-object v1
.end method

.method private resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 119
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 120
    .local v0, "contentText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 121
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.bigText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 123
    :cond_0
    return-object v0
.end method

.method private resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 127
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 128
    .local v0, "titleText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 129
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 131
    :cond_0
    return-object v0
.end method

.method private updateOverFlowNumberColor(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "numberView"    # Landroid/widget/TextView;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColorDark:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDarkAmount:F

    .line 83
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public bindAmbientFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1
    .param p1, "reusableView"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 104
    const v0, 0x9110187

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public bindFromNotification(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1
    .param p1, "reusableView"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 98
    const v0, 0x9110186

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;
    .locals 7
    .param p1, "reusableView"    # Landroid/widget/TextView;
    .param p2, "number"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    if-nez p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->inflateOverflowNumber()Landroid/widget/TextView;

    move-result-object p1

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x910012d

    .line 138
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 144
    const v3, 0x9140001

    .line 143
    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 143
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "contentDescription":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    return-object p1
.end method

.method public getOverflowNumberPadding()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberPadding:I

    return v0
.end method

.method public setOverflowNumberColor(Landroid/widget/TextView;II)V
    .locals 0
    .param p1, "numberView"    # Landroid/widget/TextView;
    .param p2, "colorRegular"    # I
    .param p3, "colorDark"    # I

    .prologue
    .line 88
    iput p2, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColor:I

    .line 89
    iput p3, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mOverflowNumberColorDark:I

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setOverflowNumberDark(Landroid/widget/TextView;ZZJ)V
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "dark"    # Z
    .param p3, "fade"    # Z
    .param p4, "delay"    # J

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/HybridGroupManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager$1;-><init>(Lcom/android/systemui/statusbar/notification/HybridGroupManager;Landroid/widget/TextView;)V

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->setIntensityDark(Lcom/android/systemui/util/function/Consumer;ZZJ)V

    .line 150
    return-void
.end method
