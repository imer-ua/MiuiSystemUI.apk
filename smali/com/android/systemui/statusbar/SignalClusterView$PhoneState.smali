.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field public mActivityIn:Z

.field public mActivityOut:Z

.field private mDataActivityId:I

.field private mDataConnected:Z

.field private mIsMobileTypeIconWide:Z

.field private mLastMobileStrengthId:I

.field private mLastMobileTypeId:I

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileInOut:Landroid/widget/ImageView;

.field private mMobileInOutId:I

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileSignalUpgrade:Landroid/widget/ImageView;

.field private mMobileStrengthId:I

.field private mMobileType:Landroid/widget/TextView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field private mMobileVoice:Landroid/widget/TextView;

.field private mMobileVoiceLabel:Ljava/lang/String;

.field private mNotchVolte:Landroid/widget/ImageView;

.field public mRoaming:Z

.field private final mSlot:I

.field private mSpeechHd:Landroid/widget/ImageView;

.field private mStackedDataId:I

.field private mStackedVoiceId:I

.field private mVolte:Landroid/widget/ImageView;

.field private mVolteNoService:Landroid/widget/ImageView;

.field private mWcdmaCardSlot:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p2, "slot"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 993
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    .line 967
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    .line 968
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 969
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 981
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    .line 982
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    .line 983
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    .line 994
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 995
    const v2, 0x9040080

    const/4 v3, 0x0

    .line 994
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 996
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    .line 997
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    .line 993
    return-void
.end method

.method private updateMobileType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    .line 1208
    const/4 v0, 0x0

    .line 1209
    .local v0, "isShowMobileSignalUpgrade":Z
    const-string/jumbo v1, "4G+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1210
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1211
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    const-string/jumbo v2, "4G"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1229
    :cond_1
    :goto_1
    return v0

    .line 1215
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    const-string/jumbo v2, "4G"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1220
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eq v1, v2, :cond_4

    .line 1221
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 1222
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1223
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1225
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1226
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 1227
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public apply(Z)Z
    .locals 10
    .param p1, "isSecondaryIcon"    # Z

    .prologue
    const v9, 0x9020597

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1017
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get5(Lcom/android/systemui/statusbar/SignalClusterView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v8, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->-set0(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z

    .line 1021
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1022
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1023
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1024
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1028
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1106
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1107
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1110
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v5, "SignalClusterView"

    const-string/jumbo v6, "mobile: %s sig=%d typ=%d"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    .line 1111
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "VISIBLE"

    :goto_1
    aput-object v2, v7, v4

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    .line 1110
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v2

    .line 1029
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->replaceNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "networkType":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    if-eqz v2, :cond_c

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    .line 1031
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    aput-boolean v7, v2, v6

    .line 1032
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateMobileType(Ljava/lang/String;)Z

    move-result v0

    .line 1034
    .local v0, "isShowMobileSignalgrade":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1036
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eq v2, v6, :cond_5

    .line 1037
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1038
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 1041
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-nez v2, :cond_d

    :cond_7
    move v2, v5

    :goto_3
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1042
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalUpgrade:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    :goto_4
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1044
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalUpgrade:Landroid/widget/ImageView;

    const v7, 0x90205be

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1046
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1050
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    :goto_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    if-eqz v2, :cond_11

    move v2, v4

    :goto_6
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1054
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_12

    .line 1055
    const v2, 0x90205af

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    .line 1064
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1065
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-eqz v6, :cond_a

    move v5, v4

    :cond_a
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1067
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1068
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1103
    :cond_b
    :goto_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1104
    const-string/jumbo v6, " "

    .line 1103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1104
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    .line 1103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v0    # "isShowMobileSignalgrade":Z
    :cond_c
    move v2, v4

    .line 1030
    goto/16 :goto_2

    .restart local v0    # "isShowMobileSignalgrade":Z
    :cond_d
    move v2, v4

    .line 1041
    goto/16 :goto_3

    :cond_e
    move v2, v5

    .line 1042
    goto/16 :goto_4

    .line 1047
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v5

    :goto_9
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_10
    move v2, v4

    goto :goto_9

    :cond_11
    move v2, v5

    .line 1052
    goto/16 :goto_6

    .line 1056
    :cond_12
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_13

    .line 1057
    const v2, 0x90205b8

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_7

    .line 1058
    :cond_13
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_15

    .line 1061
    :cond_14
    iput v9, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_7

    .line 1059
    :cond_15
    const v2, 0x90205ad

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_7

    .line 1071
    :cond_16
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    if-nez v2, :cond_1d

    .line 1072
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1077
    :cond_17
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mDataConnectedStatus:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1e

    .line 1084
    :cond_18
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-eqz v2, :cond_b

    .line 1085
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-nez v2, :cond_20

    :cond_1a
    move v2, v5

    :goto_b
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1086
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    :goto_c
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1087
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    const v7, 0x90205be

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1089
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_22

    .line 1090
    const v2, 0x90205af

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    .line 1098
    :goto_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1099
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-get9(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/SignalClusterView;->-get8(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_1b
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-eqz v6, :cond_1c

    move v5, v4

    :cond_1c
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 1073
    :cond_1d
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    if-ne v2, v3, :cond_17

    .line 1074
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile2:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_a

    .line 1078
    :cond_1e
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1079
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    :cond_1f
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1082
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1083
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_20
    move v2, v4

    .line 1085
    goto/16 :goto_b

    :cond_21
    move v2, v5

    .line 1086
    goto/16 :goto_c

    .line 1091
    :cond_22
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_23

    .line 1092
    const v2, 0x90205b8

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_d

    .line 1093
    :cond_23
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v2, :cond_24

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v2, :cond_25

    .line 1096
    :cond_24
    iput v9, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_d

    .line 1094
    :cond_25
    const v2, 0x90205ad

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    goto/16 :goto_d

    .line 1111
    .end local v0    # "isShowMobileSignalgrade":Z
    .end local v1    # "networkType":Ljava/lang/String;
    :cond_26
    const-string/jumbo v2, "GONE"

    goto/16 :goto_1
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    :cond_0
    return-void
.end method

.method public replaceNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "oldName"    # Ljava/lang/String;

    .prologue
    const-string v0, "type_name"

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$9999(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    const-string v0, "4G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    const-string v0, "LTE"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "4G+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_0

    const-string v0, "LTE+"

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F
    .param p3, "tintArea"    # Landroid/graphics/Rect;

    .prologue
    const v3, 0x90205be

    .line 1147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setTextColor()V

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    const v2, 0x9020373

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1151
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNotchVolte:Landroid/widget/ImageView;

    const v2, 0x90205a7

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolte:Landroid/widget/ImageView;

    const v2, 0x90205c0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSpeechHd:Landroid/widget/ImageView;

    const v2, 0x90205c6

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolteNoService:Landroid/widget/ImageView;

    const v2, 0x90205d8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    if-nez v0, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1164
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataConnected:Z

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileInout:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOutId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    .line 1166
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1161
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobile2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/Icons;->getSignalHalfId(Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->updateIcon(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method

.method public setIsImsRegisted(Z)V
    .locals 4
    .param p1, "imsRegisted"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 1116
    sget-boolean v2, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v2, :cond_2

    .line 1117
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolte:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/Constants;->STATUS_BAR_HIDE_VOLTE:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1115
    :goto_0
    return-void

    .line 1119
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNotchVolte:Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/Constants;->STATUS_BAR_HIDE_VOLTE:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setNetworkNameVoice(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkNameVoice"    # Ljava/lang/String;

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoiceLabel:Ljava/lang/String;

    .line 1135
    return-void
.end method

.method public setSpeechHd(Z)V
    .locals 2
    .param p1, "hd"    # Z

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSpeechHd:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1129
    :cond_0
    return-void

    .line 1131
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTextColor()V
    .locals 7

    .prologue
    const v4, 0x90c0141

    const v2, 0x90c009c

    const v3, 0x90c0140

    const/4 v6, 0x0

    .line 1172
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1173
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1174
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1175
    .local v0, "isDark":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1178
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 1179
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1171
    :goto_4
    return-void

    .line 1174
    .end local v0    # "isDark":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isDark":Z
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1177
    goto :goto_1

    .line 1178
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v2, v3

    .line 1181
    goto :goto_3

    .line 1183
    .end local v0    # "isDark":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    const/4 v0, 0x1

    .line 1184
    .restart local v0    # "isDark":Z
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 1183
    .end local v0    # "isDark":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isDark":Z
    goto :goto_5

    :cond_6
    move v2, v3

    .line 1186
    goto :goto_6

    .line 1189
    .end local v0    # "isDark":Z
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get4(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1190
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_8

    const/4 v0, 0x1

    .line 1191
    .restart local v0    # "isDark":Z
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_9

    move v1, v4

    :goto_8
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1194
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_a

    const/4 v0, 0x1

    .line 1195
    :goto_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_b

    :goto_a
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 1190
    .end local v0    # "isDark":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "isDark":Z
    goto :goto_7

    :cond_9
    move v1, v3

    .line 1193
    goto :goto_8

    .line 1194
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :cond_b
    move v4, v3

    .line 1197
    goto :goto_a

    .line 1199
    .end local v0    # "isDark":Z
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get7(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)F

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_d

    const/4 v0, 0x1

    .line 1200
    .restart local v0    # "isDark":Z
    :goto_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalDualNotchMobileType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_e

    :goto_c
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 1199
    .end local v0    # "isDark":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "isDark":Z
    goto :goto_b

    :cond_e
    move v4, v3

    .line 1202
    goto :goto_c
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    .line 1002
    const v0, 0x91201f8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    .line 1003
    const v0, 0x91200c4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/TextView;

    .line 1004
    const v0, 0x91201fb

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalUpgrade:Landroid/widget/ImageView;

    .line 1005
    const v0, 0x91201fc

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolte:Landroid/widget/ImageView;

    .line 1006
    const v0, 0x91201fd

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolteNoService:Landroid/widget/ImageView;

    .line 1007
    const v0, 0x91201f6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNotchVolte:Landroid/widget/ImageView;

    .line 1008
    const v0, 0x91201f4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSpeechHd:Landroid/widget/ImageView;

    .line 1009
    const v0, 0x91201f9

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVoice:Landroid/widget/TextView;

    .line 1010
    const v0, 0x91201f5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    .line 1012
    const v0, 0x91201fa

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    .line 1013
    const v0, 0x91201f7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mWcdmaCardSlot:Landroid/widget/ImageView;

    .line 1000
    return-void
.end method

.method public setVolteNoService(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mVolteNoService:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1123
    :cond_0
    return-void

    .line 1125
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
