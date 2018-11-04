.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
.super Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileIconGroup"
.end annotation


# instance fields
.field final mActivityId:I

.field final mDataContentDescription:I

.field final mDataType:I

.field final mIsWide:Z

.field final mQsDataType:I

.field final mSingleSignalIcon:I

.field final mStackedDataIcon:I

.field final mStackedVoiceIcon:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z
    .param p13, "qsDataType"    # I

    .prologue
    .line 928
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    .line 926
    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZIIIII)V

    .line 925
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZIIIII)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIcons"    # [[I
    .param p3, "qsIcons"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z
    .param p13, "qsDataType"    # I
    .param p14, "singleSignalIcon"    # I
    .param p15, "stackedDataIcon"    # I
    .param p16, "stackedVoicelIcon"    # I
    .param p17, "activityId"    # I

    .prologue
    .line 936
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 938
    iput p10, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    .line 939
    iput p11, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 940
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    .line 941
    iput p13, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 942
    iput p14, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSingleSignalIcon:I

    .line 943
    move/from16 v0, p15

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedDataIcon:I

    .line 944
    move/from16 v0, p16

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mStackedVoiceIcon:I

    .line 945
    move/from16 v0, p17

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mActivityId:I

    .line 935
    return-void
.end method
