.class public Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
    }
.end annotation


# static fields
.field private static final mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private static final sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private static final sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

.field private static final sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;


# instance fields
.field private final mComparators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDividers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 7
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 102
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 104
    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 105
    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 106
    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    .line 103
    const v2, 0x1020006

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 110
    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 111
    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 112
    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .line 109
    const v2, 0x10203ca

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 117
    new-instance v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil;)V

    .line 132
    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    .line 115
    const v2, 0x10203be

    .line 116
    const/4 v3, 0x0

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v2, 0x10203b9

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v2, 0x10203bf

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const v1, 0x10203cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const v1, 0x10203cd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method private sanitizeChild(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findNotificationHeaderView(Landroid/view/View;)Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 183
    .local v0, "header":Landroid/view/NotificationHeaderView;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeader(Landroid/view/NotificationHeaderView;)V

    .line 180
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    return-void
.end method

.method private sanitizeHeader(Landroid/view/NotificationHeaderView;)V
    .locals 13
    .param p1, "rowHeader"    # Landroid/view/NotificationHeaderView;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 188
    if-nez p1, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v1

    .line 192
    .local v1, "childCount":I
    const v11, 0x1020099

    invoke-virtual {p1, v11}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 193
    .local v6, "time":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, "hasVisibleText":Z
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    add-int/lit8 v11, v1, -0x1

    if-ge v3, v11, :cond_3

    .line 196
    invoke-virtual {p1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "child":Landroid/view/View;
    instance-of v11, v0, Landroid/widget/TextView;

    if-eqz v11, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v9, :cond_1

    .line 199
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 195
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_2
    if-eq v0, v6, :cond_1

    .line 201
    const/4 v2, 0x1

    .line 206
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    if-eqz v2, :cond_4

    .line 207
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-static {v11}, Landroid/app/NotificationCompat;->showsTime(Landroid/app/Notification;)Z

    move-result v11

    .line 206
    if-eqz v11, :cond_8

    :cond_4
    move v7, v10

    .line 209
    .local v7, "timeVisibility":I
    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .end local v2    # "hasVisibleText":Z
    .end local v3    # "i":I
    .end local v7    # "timeVisibility":I
    :cond_5
    const/4 v4, 0x0

    .line 213
    .local v4, "left":Landroid/view/View;
    const/4 v3, 0x1

    .end local v4    # "left":Landroid/view/View;
    .restart local v3    # "i":I
    :goto_2
    add-int/lit8 v11, v1, -0x1

    if-ge v3, v11, :cond_e

    .line 214
    invoke-virtual {p1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .restart local v0    # "child":Landroid/view/View;
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 216
    const/4 v8, 0x0

    .line 218
    .local v8, "visible":Z
    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v11, v1, -0x1

    if-ge v3, v11, :cond_6

    .line 219
    invoke-virtual {p1, v3}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 220
    .local v5, "right":Landroid/view/View;
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 222
    add-int/lit8 v3, v3, -0x1

    .line 230
    .end local v5    # "right":Landroid/view/View;
    :cond_6
    :goto_4
    if-eqz v8, :cond_c

    move v11, v10

    :goto_5
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .end local v8    # "visible":Z
    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "child":Landroid/view/View;
    .restart local v2    # "hasVisibleText":Z
    :cond_8
    move v7, v9

    .line 208
    goto :goto_1

    .line 224
    .end local v2    # "hasVisibleText":Z
    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "right":Landroid/view/View;
    .restart local v8    # "visible":Z
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v9, :cond_b

    instance-of v11, v5, Landroid/widget/TextView;

    if-eqz v11, :cond_b

    .line 225
    if-eqz v4, :cond_a

    const/4 v8, 0x1

    .line 226
    :goto_7
    move-object v4, v5

    .line 227
    .local v4, "left":Landroid/view/View;
    goto :goto_4

    .line 225
    .end local v4    # "left":Landroid/view/View;
    :cond_a
    const/4 v8, 0x0

    goto :goto_7

    .line 218
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v5    # "right":Landroid/view/View;
    :cond_c
    move v11, v9

    .line 230
    goto :goto_5

    .line 231
    .end local v8    # "visible":Z
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v9, :cond_7

    instance-of v11, v0, Landroid/widget/TextView;

    if-eqz v11, :cond_7

    .line 232
    move-object v4, v0

    .restart local v4    # "left":Landroid/view/View;
    goto :goto_6

    .line 187
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "left":Landroid/view/View;
    :cond_e
    return-void
.end method

.method private sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeader(Landroid/view/NotificationHeaderView;)V

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 175
    .local v0, "layout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(Landroid/view/View;)V

    .line 176
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(Landroid/view/View;)V

    .line 177
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(Landroid/view/View;)V

    .line 169
    return-void
.end method


# virtual methods
.method public restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, "compI":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 237
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 5

    .prologue
    .line 141
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez v2, :cond_0

    .line 143
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    .local v0, "compI":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 147
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->init()V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 152
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 153
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 154
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->compareToHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 160
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 161
    .restart local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v0, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 162
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 165
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 140
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_5
    return-void
.end method
