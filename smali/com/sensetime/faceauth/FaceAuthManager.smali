.class public Lcom/sensetime/faceauth/FaceAuthManager;
.super Ljava/lang/Object;
.source "FaceAuthManager.java"


# static fields
.field private static mInstance:Lcom/sensetime/faceauth/FaceAuthManager;


# instance fields
.field private DEFAULT_FORMAT:Lcom/sensetime/faceapi/model/CvPixelFormat;

.field private mEnrollPath:Ljava/lang/String;

.field private mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

.field private mFaceDownThreshold:I

.field private mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

.field private mFaceLeftThreshold:I

.field private mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

.field private mFaceRightThreshold:I

.field private mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

.field private mFaceTopThreshold:I

.field private mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

.field private mIsHacker:Z

.field private mRegisterUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sensetime/faceauth/bean/User;",
            ">;"
        }
    .end annotation
.end field

.field private mUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/sensetime/faceauth/FaceAuthManager;->mInstance:Lcom/sensetime/faceauth/FaceAuthManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mIsHacker:Z

    .line 41
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mUserID:Ljava/lang/String;

    .line 44
    iput v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceLeftThreshold:I

    .line 45
    iput v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceTopThreshold:I

    .line 46
    iput v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDownThreshold:I

    .line 47
    iput v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceRightThreshold:I

    .line 48
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mEnrollPath:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    .line 51
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    .line 52
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    .line 53
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    .line 54
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    .line 55
    sget-object v0, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->DEFAULT_FORMAT:Lcom/sensetime/faceapi/model/CvPixelFormat;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sensetime/faceauth/FaceAuthManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sensetime/faceauth/FaceAuthManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sensetime/faceauth/FaceAuthManager;->initVerify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/sensetime/faceauth/FaceAuthManager;Lcom/sensetime/faceapi/FaceVerify;)Lcom/sensetime/faceapi/FaceVerify;
    .locals 0
    .param p0, "x0"    # Lcom/sensetime/faceauth/FaceAuthManager;
    .param p1, "x1"    # Lcom/sensetime/faceapi/FaceVerify;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sensetime/faceauth/FaceAuthManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sensetime/faceauth/FaceAuthManager;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mIsHacker:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sensetime/faceauth/FaceAuthManager;[BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sensetime/faceauth/FaceAuthManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/sensetime/faceapi/model/FaceInfo;
    .param p5, "x5"    # Lcom/sensetime/faceapi/model/FaceOrientation;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/sensetime/faceauth/FaceAuthManager;->isHacker([BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;)Z

    move-result v0

    return v0
.end method

.method private analysis([BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;ZI)I
    .locals 30
    .param p1, "imgData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;
    .param p5, "faceOrientation"    # Lcom/sensetime/faceapi/model/FaceOrientation;
    .param p6, "strictMode"    # Z
    .param p7, "currentstate"    # I

    .prologue
    const/16 v26, 0x0

    .line 757
    .local v26, "result":I
    const/16 v24, 0x1

    .line 758
    .local v24, "isEyeOpened":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mIsHacker:Z

    .line 759
    if-nez p4, :cond_1

    const/16 v26, 0x5

    .line 855
    .end local v24    # "isEyeOpened":Z
    :cond_0
    :goto_0
    return v26

    .line 761
    .restart local v24    # "isEyeOpened":Z
    :cond_1
    if-nez p6, :cond_2

    .line 764
    .end local v24    # "isEyeOpened":Z
    :goto_1
    if-eqz v24, :cond_3

    .line 769
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v11, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 771
    .local v11, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    if-nez v4, :cond_4

    .line 784
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mIsHacker:Z

    .line 785
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 789
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    if-eqz v4, :cond_5

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 794
    .local v28, "starttime":J
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v25

    .local v25, "originalPriority":I
    const/16 v4, -0x13

    .line 795
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sensetime/faceauth/FaceAuthManager;->DEFAULT_FORMAT:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/sensetime/faceapi/FaceVerify;->getFeature([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceInfo;)[B

    move-result-object v22

    .line 797
    .local v22, "feature":[B
    invoke-static/range {v25 .. v25}, Landroid/os/Process;->setThreadPriority(I)V

    const-string/jumbo v4, "FaceAuthManager"

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "end do getfeature time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v28

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :try_start_0
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    if-eqz v22, :cond_6

    .line 815
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mIsHacker:Z

    if-nez v4, :cond_7

    .line 821
    if-eqz p7, :cond_8

    :goto_3
    const/4 v4, 0x1

    .line 838
    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/sensetime/faceauth/FaceAuthManager;->isPass([BLjava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 840
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Lcom/sensetime/faceapi/model/StRect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/sensetime/faceauth/FaceAuthManager;->isWholeFace(Lcom/sensetime/faceapi/model/StRect;II)Z

    move-result v4

    if-nez v4, :cond_b

    .line 843
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sensetime/faceauth/FaceAuthManager;->checkFaceOcclusion(Lcom/sensetime/faceapi/model/FaceInfo;)I

    move-result v26

    .line 845
    if-nez v26, :cond_0

    const/16 v26, 0xc

    .line 846
    goto/16 :goto_0

    .line 762
    .end local v11    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v22    # "feature":[B
    .end local v25    # "originalPriority":I
    .end local v28    # "starttime":J
    .restart local v24    # "isEyeOpened":Z
    :cond_2
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Lcom/sensetime/faceapi/model/StRect;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/sensetime/faceauth/FaceAuthManager;->isEyeOpen([BIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/StRect;)Z

    move-result v24

    .local v24, "isEyeOpened":Z
    goto/16 :goto_1

    .end local v24    # "isEyeOpened":Z
    :cond_3
    const/16 v4, 0x16

    .line 766
    return v4

    .line 772
    .restart local v11    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    new-instance v13, Ljava/lang/Thread;

    new-instance v4, Lcom/sensetime/faceauth/FaceAuthManager$2;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lcom/sensetime/faceauth/FaceAuthManager$2;-><init>(Lcom/sensetime/faceauth/FaceAuthManager;[BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v13, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 781
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x2

    .line 791
    return v4

    .line 807
    .restart local v22    # "feature":[B
    .restart local v25    # "originalPriority":I
    .restart local v28    # "starttime":J
    :catch_0
    move-exception v21

    .line 804
    .local v21, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v4, 0x3

    .line 806
    return v4

    .end local v21    # "e":Ljava/lang/InterruptedException;
    :cond_6
    const/16 v4, 0x18

    .line 811
    return v4

    :cond_7
    const/16 v4, 0xe

    .line 817
    return v4

    .line 822
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v23

    .local v23, "i":I
    :goto_4
    if-gtz v23, :cond_9

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v4}, Lcom/sensetime/faceapi/FaceVerify;->getVersion()I

    move-result v19

    .line 828
    .local v19, "verifyVersion":I
    new-instance v12, Lcom/sensetime/faceauth/bean/User;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mUserID:Ljava/lang/String;

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v12 .. v19}, Lcom/sensetime/faceauth/bean/User;-><init>(Ljava/lang/String;[BIILcom/sensetime/faceapi/model/FaceInfo;Ljava/lang/String;I)V

    .line 829
    .local v12, "user":Lcom/sensetime/faceauth/bean/User;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :try_start_1
    invoke-static {}, Lcom/sensetime/faceauth/util/SerializeManager;->getInstance()Lcom/sensetime/faceauth/util/SerializeManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mEnrollPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/sensetime/faceauth/util/SerializeManager;->serializeObject(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 835
    :catch_1
    move-exception v20

    .local v20, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "FaceAuthManager"

    .line 833
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serialize object failed with exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v26, 0x3

    .line 834
    goto/16 :goto_3

    .line 823
    .end local v12    # "user":Lcom/sensetime/faceauth/bean/User;
    .end local v19    # "verifyVersion":I
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    add-int/lit8 v5, v23, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sensetime/faceauth/bean/User;

    invoke-virtual {v4}, Lcom/sensetime/faceauth/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mUserID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 822
    :goto_5
    add-int/lit8 v23, v23, -0x1

    goto :goto_4

    .line 824
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    add-int/lit8 v5, v23, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .end local v23    # "i":I
    :cond_b
    const/16 v26, 0x1d

    .line 841
    goto/16 :goto_0
.end method

.method private checkFaceOcclusion(Lcom/sensetime/faceapi/model/FaceInfo;)I
    .locals 2
    .param p1, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;

    .prologue
    .line 672
    iget v0, p1, Lcom/sensetime/faceapi/model/FaceInfo;->occlusion:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x15

    .line 673
    return v0

    .line 672
    :cond_1
    iget v0, p1, Lcom/sensetime/faceapi/model/FaceInfo;->occlusion:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 675
    iget v0, p1, Lcom/sensetime/faceapi/model/FaceInfo;->occlusion:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    .line 678
    return v0

    :cond_2
    const/16 v0, 0x17

    .line 676
    return v0
.end method

.method private checkFacePosition(Lcom/sensetime/faceapi/model/StRect;)I
    .locals 3
    .param p1, "faceRect"    # Lcom/sensetime/faceapi/model/StRect;

    .prologue
    const-string/jumbo v0, "FaceAuthManager"

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "face rect is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sensetime/faceapi/model/StRect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->left:I

    iget v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceLeftThreshold:I

    if-lt v0, v1, :cond_0

    .line 711
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->top:I

    iget v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceTopThreshold:I

    if-lt v0, v1, :cond_1

    .line 716
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->right:I

    iget v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceRightThreshold:I

    if-gt v0, v1, :cond_2

    .line 721
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    iget v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDownThreshold:I

    if-gt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 726
    return v0

    :cond_0
    const/16 v0, 0x8

    .line 708
    return v0

    :cond_1
    const/16 v0, 0x9

    .line 713
    return v0

    :cond_2
    const/16 v0, 0xa

    .line 718
    return v0

    :cond_3
    const/16 v0, 0xb

    .line 723
    return v0
.end method

.method private checkFaceSize(Lcom/sensetime/faceapi/model/StRect;)I
    .locals 9
    .param p1, "faceRect"    # Lcom/sensetime/faceapi/model/StRect;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .local v2, "result":I
    const-string/jumbo v5, "FaceAuthManager"

    .line 685
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "face rect is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sensetime/faceapi/model/StRect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "FaceAuthManager"

    .line 686
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "threshold is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceLeftThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceTopThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceRightThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDownThreshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget v5, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceRightThreshold:I

    iget v6, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceLeftThreshold:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v4, v5

    .line 688
    .local v4, "smallWidthThreshold":I
    iget v5, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDownThreshold:I

    iget v6, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceTopThreshold:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v3, v5

    .line 689
    .local v3, "smallHeightThreshold":I
    iget v5, p1, Lcom/sensetime/faceapi/model/StRect;->right:I

    iget v6, p1, Lcom/sensetime/faceapi/model/StRect;->left:I

    sub-int/2addr v5, v6

    if-ge v5, v4, :cond_2

    :cond_0
    const/4 v2, 0x6

    .line 692
    :goto_0
    iget v5, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceRightThreshold:I

    iget v6, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceLeftThreshold:I

    sub-int v1, v5, v6

    .line 693
    .local v1, "largeWidthThreshold":I
    iget v5, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDownThreshold:I

    iget v6, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceTopThreshold:I

    sub-int v0, v5, v6

    .line 694
    .local v0, "largeHeightThreshold":I
    iget v5, p1, Lcom/sensetime/faceapi/model/StRect;->right:I

    iget v6, p1, Lcom/sensetime/faceapi/model/StRect;->left:I

    sub-int/2addr v5, v6

    if-le v5, v1, :cond_3

    :cond_1
    const/4 v2, 0x7

    .line 697
    :goto_1
    return v2

    .line 689
    .end local v0    # "largeHeightThreshold":I
    .end local v1    # "largeWidthThreshold":I
    :cond_2
    iget v5, p1, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    iget v6, p1, Lcom/sensetime/faceapi/model/StRect;->top:I

    sub-int/2addr v5, v6

    if-lt v5, v3, :cond_0

    goto :goto_0

    .line 694
    .restart local v0    # "largeHeightThreshold":I
    .restart local v1    # "largeWidthThreshold":I
    :cond_3
    iget v5, p1, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    iget v6, p1, Lcom/sensetime/faceapi/model/StRect;->top:I

    sub-int/2addr v5, v6

    if-gt v5, v0, :cond_1

    goto :goto_1
.end method

.method private checkFrontFace(Lcom/sensetime/faceapi/model/FaceInfo;)I
    .locals 3
    .param p1, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;

    .prologue
    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v1, -0x3e100000    # -30.0f

    .line 732
    iget v0, p1, Lcom/sensetime/faceapi/model/FaceInfo;->yaw:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "filterFaces: face yaw is over max yaw, please turn right !"

    .line 733
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 735
    return v0

    .line 737
    :cond_0
    iget v0, p1, Lcom/sensetime/faceapi/model/FaceInfo;->yaw:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "filterFaces: face yaw is over min yaw ,please turn left!"

    .line 738
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 740
    return v0

    .line 742
    :cond_1
    iget v0, p1, Lcom/sensetime/faceapi/model/FaceInfo;->pitch:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "filterFaces: face pitch is over max pitch , please turn down!"

    .line 743
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 745
    return v0

    .line 747
    :cond_2
    iget v0, p1, Lcom/sensetime/faceapi/model/FaceInfo;->pitch:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "filterFaces: face pitch is over min pitch, please turn up !"

    .line 748
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12

    .line 750
    return v0

    :cond_3
    const/4 v0, 0x0

    .line 752
    return v0
.end method

.method private compareFeature([B[B)F
    .locals 4
    .param p1, "feature1"    # [B
    .param p2, "feature2"    # [B

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 905
    iget-object v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    if-eqz v1, :cond_1

    .line 909
    if-nez p1, :cond_2

    :cond_0
    const-string/jumbo v1, "FaceAuthManager"

    const-string/jumbo v2, "feature1 or feature2 is null !"

    .line 910
    invoke-static {v1, v2}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    return v3

    :cond_1
    const-string/jumbo v1, "FaceAuthManager"

    const-string/jumbo v2, "FaceVerify is null !"

    .line 906
    invoke-static {v1, v2}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return v3

    .line 909
    :cond_2
    if-eqz p2, :cond_0

    .line 913
    iget-object v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v1, p1, p2}, Lcom/sensetime/faceapi/FaceVerify;->compareFeature([B[B)F

    move-result v0

    .line 914
    .local v0, "score":F
    return v0
.end method

.method private deleteFeature(Ljava/lang/String;)I
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 470
    .local v2, "result":I
    iget-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mEnrollPath:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "FaceAuthManager"

    const-string/jumbo v4, "should call initHandler before deleteFeature"

    .line 487
    invoke-static {v3, v4}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 490
    :goto_0
    return v2

    .line 472
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensetime/faceauth/util/SerializeManager;->getInstance()Lcom/sensetime/faceauth/util/SerializeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mEnrollPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sensetime/faceauth/util/SerializeManager;->readSerilizeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    .line 473
    iget-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 481
    :cond_1
    invoke-static {}, Lcom/sensetime/faceauth/util/SerializeManager;->getInstance()Lcom/sensetime/faceauth/util/SerializeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mEnrollPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sensetime/faceauth/util/SerializeManager;->serializeObject(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FaceAuthManager"

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serialize object failed after delete with exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 484
    goto :goto_0

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_1

    .line 475
    iget-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensetime/faceauth/bean/User;

    invoke-virtual {v3}, Lcom/sensetime/faceauth/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 474
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 476
    :cond_3
    iget-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private filterFaces([BLcom/sensetime/faceapi/model/FaceInfo;III)I
    .locals 6
    .param p1, "imgData"    # [B
    .param p2, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "angle"    # I

    .prologue
    const/4 v1, 0x0

    .line 638
    .local v1, "filterResult":I
    new-instance v0, Lcom/sensetime/faceapi/model/StRect;

    iget-object v3, p2, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Lcom/sensetime/faceapi/model/StRect;

    invoke-direct {v0, v3}, Lcom/sensetime/faceapi/model/StRect;-><init>(Lcom/sensetime/faceapi/model/StRect;)V

    .local v0, "faceRect":Lcom/sensetime/faceapi/model/StRect;
    const-string/jumbo v3, "FaceAuthManager"

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "src face rect is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sensetime/faceapi/model/StRect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v3, 0x1

    invoke-static {v0, p3, p4, p5, v3}, Lcom/sensetime/faceauth/util/FaceUtil;->RotateFace(Lcom/sensetime/faceapi/model/StRect;IIIZ)Lcom/sensetime/faceapi/model/StRect;

    move-result-object v2

    .line 641
    .local v2, "rotateRect":Lcom/sensetime/faceapi/model/StRect;
    invoke-direct {p0, v2}, Lcom/sensetime/faceauth/FaceAuthManager;->checkFaceSize(Lcom/sensetime/faceapi/model/StRect;)I

    move-result v1

    .line 642
    if-nez v1, :cond_0

    .line 646
    invoke-direct {p0, v2}, Lcom/sensetime/faceauth/FaceAuthManager;->checkFacePosition(Lcom/sensetime/faceapi/model/StRect;)I

    move-result v1

    .line 647
    if-nez v1, :cond_1

    .line 651
    invoke-direct {p0, p2}, Lcom/sensetime/faceauth/FaceAuthManager;->checkFrontFace(Lcom/sensetime/faceapi/model/FaceInfo;)I

    move-result v1

    .line 652
    if-nez v1, :cond_2

    .line 657
    invoke-direct {p0, p2}, Lcom/sensetime/faceauth/FaceAuthManager;->checkFaceOcclusion(Lcom/sensetime/faceapi/model/FaceInfo;)I

    move-result v1

    .line 658
    if-nez v1, :cond_3

    .line 663
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/sensetime/faceauth/FaceAuthManager;->isHighQuality([BIILcom/sensetime/faceapi/model/FaceInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 668
    return v1

    .line 643
    :cond_0
    return v1

    .line 648
    :cond_1
    return v1

    .line 653
    :cond_2
    return v1

    .line 659
    :cond_3
    return v1

    :cond_4
    const-string/jumbo v3, "FaceAuthManager"

    const-string/jumbo v4, "filterFaces: this face quality is illegal !"

    .line 664
    invoke-static {v3, v4}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 666
    return v3
.end method

.method private getFaceOrientation(I)Lcom/sensetime/faceapi/model/FaceOrientation;
    .locals 1
    .param p1, "angle"    # I

    .prologue
    .line 606
    sparse-switch p1, :sswitch_data_0

    .line 616
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

    return-object v0

    .line 608
    :sswitch_0
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->UP:Lcom/sensetime/faceapi/model/FaceOrientation;

    return-object v0

    .line 610
    :sswitch_1
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->RIGHT:Lcom/sensetime/faceapi/model/FaceOrientation;

    return-object v0

    .line 612
    :sswitch_2
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->DOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

    return-object v0

    .line 614
    :sswitch_3
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->LEFT:Lcom/sensetime/faceapi/model/FaceOrientation;

    return-object v0

    .line 606
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static getInstance()Lcom/sensetime/faceauth/FaceAuthManager;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/sensetime/faceauth/FaceAuthManager;->mInstance:Lcom/sensetime/faceauth/FaceAuthManager;

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    sget-object v0, Lcom/sensetime/faceauth/FaceAuthManager;->mInstance:Lcom/sensetime/faceauth/FaceAuthManager;

    return-object v0

    :cond_0
    const-class v1, Lcom/sensetime/faceauth/FaceAuthManager;

    .line 70
    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/sensetime/faceauth/FaceAuthManager;->mInstance:Lcom/sensetime/faceauth/FaceAuthManager;

    if-eqz v0, :cond_1

    .line 74
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sensetime/faceauth/FaceAuthManager;

    invoke-direct {v0}, Lcom/sensetime/faceauth/FaceAuthManager;-><init>()V

    sput-object v0, Lcom/sensetime/faceauth/FaceAuthManager;->mInstance:Lcom/sensetime/faceauth/FaceAuthManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getQuality([BIILcom/sensetime/faceapi/model/FaceInfo;)F
    .locals 8
    .param p1, "nv21"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->DEFAULT_FORMAT:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sensetime/faceapi/FaceSelect;->selectFrame([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceInfo;)F

    move-result v7

    .local v7, "score":F
    const-string/jumbo v0, "FaceAuthManager"

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectFrame score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    return v7

    .end local v7    # "score":F
    :cond_0
    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "FaceSelect is null !"

    .line 920
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 921
    return v0
.end method

.method private hacker([BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;)F
    .locals 12
    .param p1, "nv21"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;
    .param p5, "faceOrientation"    # Lcom/sensetime/faceapi/model/FaceOrientation;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    if-eqz v0, :cond_0

    .line 876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 877
    .local v10, "time":J
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->DEFAULT_FORMAT:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sensetime/faceapi/FaceHacker;->hacker([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/FaceInfo;)F

    move-result v8

    .local v8, "score":F
    const-string/jumbo v0, "FaceAuthManager"

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "faceOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FaceAuthManager"

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hacker time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FaceAuthManager"

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return v8

    .end local v8    # "score":F
    .end local v10    # "time":J
    :cond_0
    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "FaceHacker is null !"

    .line 873
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 874
    return v0
.end method

.method private initDetect()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 283
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    if-eqz v2, :cond_0

    .line 290
    :goto_0
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    invoke-virtual {v2}, Lcom/sensetime/faceapi/FaceDetect;->isHandleInitialized()Z

    move-result v2

    return v2

    .line 284
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 285
    .local v0, "time":J
    new-instance v2, Lcom/sensetime/faceapi/FaceDetect;

    sget-object v3, Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_106:Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;

    invoke-direct {v2, v4, v3}, Lcom/sensetime/faceapi/FaceDetect;-><init>(Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;)V

    iput-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    .line 287
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    invoke-static {}, Lcom/sensetime/faceapi/FaceDetect;->showInsideModel()V

    const-string/jumbo v2, "FaceAuthManager"

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initDetect time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initHacker(Ljava/lang/String;)Z
    .locals 6
    .param p1, "modelPath"    # Ljava/lang/String;

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 326
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    if-eqz v2, :cond_1

    .line 332
    :goto_0
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    invoke-virtual {v2}, Lcom/sensetime/faceapi/FaceHacker;->isHandleInitialized()Z

    move-result v2

    return v2

    .line 325
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 327
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 328
    .local v0, "time":J
    new-instance v2, Lcom/sensetime/faceapi/FaceHacker;

    invoke-direct {v2, p1}, Lcom/sensetime/faceapi/FaceHacker;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    const-string/jumbo v2, "FaceAuthManager"

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "modelPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "FaceAuthManager"

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initHacker time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initOcular()Z
    .locals 6

    .prologue
    .line 303
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    if-eqz v2, :cond_0

    .line 308
    :goto_0
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    invoke-virtual {v2}, Lcom/sensetime/faceapi/FaceOcular;->isHandleInitialized()Z

    move-result v2

    return v2

    .line 304
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    .local v0, "time":J
    new-instance v2, Lcom/sensetime/faceapi/FaceOcular;

    invoke-direct {v2}, Lcom/sensetime/faceapi/FaceOcular;-><init>()V

    iput-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    const-string/jumbo v2, "FaceAuthManager"

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initOcular time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSelect()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    if-eqz v2, :cond_0

    .line 299
    :goto_0
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    invoke-virtual {v2}, Lcom/sensetime/faceapi/FaceSelect;->isHandleInitialized()Z

    move-result v2

    return v2

    .line 295
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 296
    .local v0, "time":J
    new-instance v2, Lcom/sensetime/faceapi/FaceSelect;

    invoke-direct {v2, v3}, Lcom/sensetime/faceapi/FaceSelect;-><init>(Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;)V

    iput-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    const-string/jumbo v2, "FaceAuthManager"

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initSelect time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initVerify(Ljava/lang/String;)Z
    .locals 6
    .param p1, "modelPath"    # Ljava/lang/String;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 314
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    if-eqz v2, :cond_1

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v2}, Lcom/sensetime/faceapi/FaceVerify;->isHandleInitialized()Z

    move-result v2

    return v2

    .line 313
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 315
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 316
    .local v0, "time":J
    new-instance v2, Lcom/sensetime/faceapi/FaceVerify;

    invoke-direct {v2, p1}, Lcom/sensetime/faceapi/FaceVerify;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    const-string/jumbo v2, "FaceAuthManager"

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "modelPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "FaceAuthManager"

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initVerify time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isEyeOpen([BIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/StRect;)Z
    .locals 14
    .param p1, "nv21"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "faceOrientation"    # Lcom/sensetime/faceapi/model/FaceOrientation;
    .param p5, "rect"    # Lcom/sensetime/faceapi/model/StRect;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    if-eqz v0, :cond_0

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 947
    .local v12, "time":J
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->DEFAULT_FORMAT:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sensetime/faceapi/FaceOcular;->getScore([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/StRect;)[F

    move-result-object v10

    .local v10, "score":[F
    const-string/jumbo v0, "FaceAuthManager"

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ocular time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v9, 0x0

    .local v9, "result":Z
    const/4 v8, 0x0

    .line 951
    .local v8, "i":I
    :goto_0
    array-length v0, v10

    if-lt v8, v0, :cond_1

    .line 958
    return v9

    .end local v8    # "i":I
    .end local v9    # "result":Z
    .end local v10    # "score":[F
    .end local v12    # "time":J
    :cond_0
    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "FaceOcular is null !"

    .line 943
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const/4 v0, 0x1

    return v0

    .restart local v8    # "i":I
    .restart local v9    # "result":Z
    .restart local v10    # "score":[F
    .restart local v12    # "time":J
    :cond_1
    const-string/jumbo v0, "FaceAuthManager"

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ocular score["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v10, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    aget v0, v10, v8

    const/high16 v1, 0x41180000    # 9.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 955
    const/4 v9, 0x1

    .line 951
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private isHacker([BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;)Z
    .locals 6
    .param p1, "nv21"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;
    .param p5, "faceOrientation"    # Lcom/sensetime/faceapi/model/FaceOrientation;

    .prologue
    const/4 v0, 0x0

    const v5, 0x3f7851ec    # 0.97f

    .line 860
    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    if-eqz v2, :cond_1

    .line 864
    invoke-direct/range {p0 .. p5}, Lcom/sensetime/faceauth/FaceAuthManager;->hacker([BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;)F

    move-result v1

    .line 865
    .local v1, "score":F
    cmpl-float v2, v1, v5

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .local v0, "isHacker":Z
    :cond_0
    const-string/jumbo v2, "FaceAuthManager"

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHacker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",current score is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", currentThreshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return v0

    .end local v0    # "isHacker":Z
    .end local v1    # "score":F
    :cond_1
    const-string/jumbo v2, "FaceAuthManager"

    const-string/jumbo v3, "FaceHacker is null !"

    .line 861
    invoke-static {v2, v3}, Lcom/sensetime/faceauth/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return v0
.end method

.method private isHighQuality([BIILcom/sensetime/faceapi/model/FaceInfo;)Z
    .locals 4
    .param p1, "nv21"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "faceInfo"    # Lcom/sensetime/faceapi/model/FaceInfo;

    .prologue
    .line 933
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sensetime/faceauth/FaceAuthManager;->getQuality([BIILcom/sensetime/faceapi/model/FaceInfo;)F

    move-result v0

    .local v0, "score":F
    const-string/jumbo v1, "FaceAuthManager"

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filterFaces quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 935
    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPass([BLjava/util/ArrayList;)Z
    .locals 9
    .param p1, "feature"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sensetime/faceauth/bean/User;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "registers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sensetime/faceauth/bean/User;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 886
    if-nez p1, :cond_1

    .line 887
    :cond_0
    return v6

    .line 886
    :cond_1
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    .local v2, "maxScore":F
    const/4 v0, 0x0

    .line 890
    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    const-string/jumbo v4, "FaceAuthManager"

    .line 896
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "maxSimilarValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x3f333333    # 0.7f

    .line 897
    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    move v1, v5

    .line 898
    .local v1, "isPass":Z
    :goto_1
    if-nez v1, :cond_5

    .line 901
    return v6

    .line 891
    .end local v1    # "isPass":Z
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sensetime/faceauth/bean/User;

    invoke-virtual {v4}, Lcom/sensetime/faceauth/bean/User;->getFeature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/sensetime/faceauth/FaceAuthManager;->compareFeature([B[B)F

    move-result v3

    .line 892
    .local v3, "score":F
    cmpl-float v4, v3, v2

    if-lez v4, :cond_3

    .line 893
    move v2, v3

    .line 890
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "score":F
    :cond_4
    move v1, v6

    .line 897
    goto :goto_1

    .line 899
    .restart local v1    # "isPass":Z
    :cond_5
    return v5
.end method

.method private isWholeFace(Lcom/sensetime/faceapi/model/StRect;II)Z
    .locals 2
    .param p1, "faceRect"    # Lcom/sensetime/faceapi/model/StRect;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 969
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->left:I

    if-gez v0, :cond_1

    .line 970
    :cond_0
    return v1

    .line 969
    :cond_1
    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->right:I

    if-gt v0, p2, :cond_0

    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sensetime/faceapi/model/StRect;->bottom:I

    if-gt v0, p3, :cond_0

    .line 972
    const/4 v0, 0x1

    return v0
.end method

.method private preProcess([BIILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 10
    .param p1, "imageData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "faceOrientation"    # Lcom/sensetime/faceapi/model/FaceOrientation;

    .prologue
    const/4 v7, 0x0

    .line 450
    .local v7, "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 452
    .local v8, "startDetectTime":J
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->DEFAULT_FORMAT:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sensetime/faceapi/FaceDetect;->detect([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v7

    .local v7, "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    const-string/jumbo v0, "FaceAuthManager"

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the time for face detect is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-object v7
.end method

.method private saveFeature([BIIIZLjava/lang/String;)I
    .locals 28
    .param p1, "imageData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "angle"    # I
    .param p5, "strictMode"    # Z
    .param p6, "uuid"    # Ljava/lang/String;

    .prologue
    const/16 v25, 0x0

    .line 378
    .local v25, "result":I
    if-eqz p1, :cond_1

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    if-nez v4, :cond_2

    :cond_0
    const-string/jumbo v4, "FaceAuthManager"

    const-string/jumbo v5, "handle is error"

    .line 389
    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 390
    return v4

    :cond_1
    const/4 v4, 0x1

    .line 380
    return v4

    .line 387
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    if-eqz v4, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceLeftThreshold:I

    if-eqz v4, :cond_5

    .line 401
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sensetime/faceauth/FaceAuthManager;->getFaceOrientation(I)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v12

    .local v12, "faceOrientation":Lcom/sensetime/faceapi/model/FaceOrientation;
    const/16 v24, 0x0

    .line 404
    .local v24, "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 405
    .local v26, "startPreProcess":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/sensetime/faceauth/FaceAuthManager;->preProcess([BIILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v24

    .line 406
    .local v24, "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .local v22, "endPreProcess":J
    const-string/jumbo v4, "FaceAuthManager"

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveFeature---the time for preprocesss is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v8, v22, v26

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    if-nez v24, :cond_8

    :cond_4
    const/16 v25, 0x5

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    invoke-virtual {v4}, Lcom/sensetime/faceapi/FaceSelect;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_1
    return v25

    .line 392
    .end local v12    # "faceOrientation":Lcom/sensetime/faceapi/model/FaceOrientation;
    .end local v22    # "endPreProcess":J
    .end local v24    # "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    .end local v26    # "startPreProcess":J
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceRightThreshold:I

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceRightThreshold:I

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDownThreshold:I

    if-nez v4, :cond_3

    const/16 v4, 0x5a

    .line 395
    move/from16 v0, p4

    if-ne v0, v4, :cond_7

    .line 396
    :cond_6
    mul-int/lit8 v4, p3, 0x5

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v5, p2, 0x5

    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v7, p3, 0x5f

    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v8, p2, 0x5f

    div-int/lit8 v8, v8, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v7, v8}, Lcom/sensetime/faceauth/FaceAuthManager;->setDetectArea(IIII)V

    goto :goto_0

    :cond_7
    const/16 v4, 0x10e

    .line 395
    move/from16 v0, p4

    if-eq v0, v4, :cond_6

    .line 398
    mul-int/lit8 v4, p2, 0x5

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v5, p3, 0x5

    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v7, p2, 0x5f

    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v8, p3, 0x5f

    div-int/lit8 v8, v8, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v7, v8}, Lcom/sensetime/faceauth/FaceAuthManager;->setDetectArea(IIII)V

    goto/16 :goto_0

    .line 409
    .restart local v12    # "faceOrientation":Lcom/sensetime/faceapi/model/FaceOrientation;
    .restart local v22    # "endPreProcess":J
    .restart local v24    # "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    .restart local v26    # "startPreProcess":J
    :cond_8
    :try_start_1
    move-object/from16 v0, v24

    array-length v4, v0

    if-eqz v4, :cond_4

    .line 410
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    const/16 v25, 0x1b

    .line 428
    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    .line 412
    aget-object v6, v24, v4

    .local v6, "face":Lcom/sensetime/faceapi/model/FaceInfo;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 413
    invoke-direct/range {v4 .. v9}, Lcom/sensetime/faceauth/FaceAuthManager;->filterFaces([BLcom/sensetime/faceapi/model/FaceInfo;III)I

    move-result v25

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .local v20, "endFilter":J
    const-string/jumbo v4, "FaceAuthManager"

    .line 415
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveFeature---the time for filterface is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v8, v20, v22

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz v25, :cond_a

    .line 425
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .local v18, "endAnalysis":J
    const-string/jumbo v4, "FaceAuthManager"

    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveFeature---the time for analysis is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v8, v18, v20

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 444
    .end local v6    # "face":Lcom/sensetime/faceapi/model/FaceInfo;
    .end local v18    # "endAnalysis":J
    .end local v20    # "endFilter":J
    .end local v22    # "endPreProcess":J
    .end local v24    # "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    .end local v26    # "startPreProcess":J
    :catch_0
    move-exception v15

    .line 437
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, "errorCode":I
    const-string/jumbo v4, "FaceAuthManager"

    .line 438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "savefeature got error from sdk with error code "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v4, 0x3

    .line 439
    return v4

    .line 418
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "errorCode":I
    .restart local v6    # "face":Lcom/sensetime/faceapi/model/FaceInfo;
    .restart local v20    # "endFilter":J
    .restart local v22    # "endPreProcess":J
    .restart local v24    # "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    .restart local v26    # "startPreProcess":J
    :cond_a
    if-nez p6, :cond_b

    .line 421
    :try_start_3
    invoke-static {}, Lcom/sensetime/faceauth/util/FileUtil;->getUUIDName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mUserID:Ljava/lang/String;

    :goto_3
    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object v11, v6

    move/from16 v13, p5

    .line 423
    invoke-direct/range {v7 .. v14}, Lcom/sensetime/faceauth/FaceAuthManager;->analysis([BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;ZI)I

    move-result v25

    goto :goto_2

    .line 419
    :cond_b
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sensetime/faceauth/FaceAuthManager;->mUserID:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 439
    .end local v6    # "face":Lcom/sensetime/faceapi/model/FaceInfo;
    .end local v20    # "endFilter":J
    .end local v22    # "endPreProcess":J
    .end local v24    # "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    .end local v26    # "startPreProcess":J
    .restart local v15    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v16

    .line 441
    .local v16, "e1":Ljava/lang/NumberFormatException;
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 442
    throw v15
.end method

.method private updateUserFeature(Lcom/sensetime/faceauth/bean/User;I)I
    .locals 10
    .param p1, "user"    # Lcom/sensetime/faceauth/bean/User;
    .param p2, "index"    # I

    .prologue
    const/4 v8, 0x0

    .line 254
    .local v8, "result":I
    invoke-virtual {p1}, Lcom/sensetime/faceauth/bean/User;->getData()[B

    move-result-object v1

    .line 255
    .local v1, "data":[B
    invoke-virtual {p1}, Lcom/sensetime/faceauth/bean/User;->getDataWidth()I

    move-result v3

    .line 256
    .local v3, "width":I
    invoke-virtual {p1}, Lcom/sensetime/faceauth/bean/User;->getDataHeight()I

    move-result v4

    .line 257
    .local v4, "height":I
    invoke-virtual {p1}, Lcom/sensetime/faceauth/bean/User;->getFaceInfo()Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v6

    .line 258
    .local v6, "faceinfo":Lcom/sensetime/faceapi/model/FaceInfo;
    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v8

    .line 258
    :cond_1
    if-eqz v6, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    iget-object v2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->DEFAULT_FORMAT:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sensetime/faceapi/FaceVerify;->getFeature([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceInfo;)[B

    move-result-object v7

    .line 260
    .local v7, "feature":[B
    if-nez v7, :cond_2

    const/16 v8, 0x18

    .line 265
    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceVerify;->getVersion()I

    move-result v9

    .line 262
    .local v9, "verifyVersion":I
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensetime/faceauth/bean/User;

    invoke-virtual {v0, v9}, Lcom/sensetime/faceauth/bean/User;->setVerifyVersion(I)V

    .line 263
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensetime/faceauth/bean/User;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/sensetime/faceauth/bean/User;->setFeature(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized compare([BIIIZ)I
    .locals 26
    .param p1, "imageData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "angle"    # I
    .param p5, "strictMode"    # Z

    .prologue
    monitor-enter p0

    const/4 v12, 0x0

    .line 505
    .local v12, "compareResult":I
    if-eqz p1, :cond_1

    .line 513
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    :cond_0
    const/4 v4, 0x2

    monitor-exit p0

    .line 514
    return v4

    :cond_1
    const/4 v4, 0x1

    monitor-exit p0

    .line 507
    return v4

    .line 513
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    if-eqz v4, :cond_0

    .line 516
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sensetime/faceauth/FaceAuthManager;->getFaceOrientation(I)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v9

    .line 517
    .local v9, "faceOrientation":Lcom/sensetime/faceapi/model/FaceOrientation;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v22

    .local v22, "start":J
    const/16 v20, 0x0

    .line 520
    .local v20, "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 521
    .local v24, "startPreProcess":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/sensetime/faceauth/FaceAuthManager;->preProcess([BIILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v20

    .line 522
    .local v20, "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .local v18, "endPreProcess":J
    const-string/jumbo v4, "FaceAuthManager"

    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "compare---the time for preprocesss is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v18, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    if-nez v20, :cond_4

    :cond_3
    const/4 v12, 0x5

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    invoke-virtual {v4}, Lcom/sensetime/faceapi/FaceSelect;->reset()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 549
    return v12

    .line 525
    :cond_4
    :try_start_3
    move-object/from16 v0, v20

    array-length v4, v0

    if-eqz v4, :cond_3

    .line 527
    invoke-static/range {v20 .. v20}, Lcom/sensetime/faceauth/util/FaceUtil;->getMaxFace([Lcom/sensetime/faceapi/model/FaceInfo;)Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v8

    .local v8, "face":Lcom/sensetime/faceapi/model/FaceInfo;
    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v10, p5

    .line 530
    invoke-direct/range {v4 .. v11}, Lcom/sensetime/faceauth/FaceAuthManager;->analysis([BIILcom/sensetime/faceapi/model/FaceInfo;Lcom/sensetime/faceapi/model/FaceOrientation;ZI)I

    move-result v12

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .local v16, "endAnalysis":J
    const-string/jumbo v4, "FaceAuthManager"

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "compare---the time for face detect is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v16, v18

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 548
    .end local v8    # "face":Lcom/sensetime/faceapi/model/FaceInfo;
    .end local v16    # "endAnalysis":J
    .end local v18    # "endPreProcess":J
    .end local v20    # "faces":[Lcom/sensetime/faceapi/model/FaceInfo;
    .end local v24    # "startPreProcess":J
    :catch_0
    move-exception v13

    .line 541
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .local v15, "errorCode":I
    const-string/jumbo v4, "FaceAuthManager"

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "compare got error from sdk with error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x3

    monitor-exit p0

    .line 543
    return v4

    .end local v15    # "errorCode":I
    :catch_1
    move-exception v14

    .line 545
    .local v14, "e1":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 546
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v9    # "faceOrientation":Lcom/sensetime/faceapi/model/FaceOrientation;
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "e1":Ljava/lang/NumberFormatException;
    .end local v22    # "start":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized deleteFeature()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "23456789012"

    .line 464
    invoke-direct {p0, v0}, Lcom/sensetime/faceauth/FaceAuthManager;->deleteFeature(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFeatureCount()I
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .line 126
    .local v0, "size":I
    :try_start_0
    iget-object v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    .line 129
    return v0

    .line 127
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    .line 356
    :try_start_0
    invoke-static {}, Lcom/sensetime/faceapi/FaceLibrary;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    .local v0, "sdkVersion":Ljava/lang/String;
    const-string/jumbo v1, "FaceAuthManager"

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the sdk version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 358
    return-object v0

    .end local v0    # "sdkVersion":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized initAll(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .param p1, "verifyModelPath"    # Ljava/lang/String;
    .param p2, "livenessModelPath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    const/4 v10, 0x0

    .local v10, "result":I
    :try_start_0
    const-string/jumbo v14, "############################################################\n# SenseTime License\n# License Product: FaceAuth\n# Expiration: 19700101~20990101\n# License SN: 0afba29a-8324-4a70-b741-6d59f6d7da7a\n############################################################\nsGfdd4hav5Sr5ibX1RavjaiKWVxSLHJA/5YKZoYIpcV/JALNM+kz8fN+ZBR0\nI1kJNyYn29yRbPODLT7oF7KlfLbggDOdQKLdcGFrlHK3yYwD6dzrA3Z8uxC+\nT13bsauNljhbMkvS+dwiIHLv2sYr1jl3ukABpSiDxuFQ68y1aRFY7wcFAQAA\nAAEAAAB3s4Ys1MVEP9lnOEZQtDWlS1vBMc1JF+OATNU1f94oj1oxrUi6kwVx\nyCb630SWuPFD1sm9CobE9l9/N1H/kEbwF7SMmGEMu1EuroQTFppr7GLYbPGs\nA7DbtHzzL9R5S4YcXVSeoaPwddy369S34lXk5vudM3bLY6K4FFCQ44wS5LQw\nLrN92ohemYAzQ9joP4oNofzKf54VZ4LfbVF25NF13n1QbjrTKePHuTIOMLB1\nx6ruSIX7TJRBgIQWM3rkoWgSHYjazkTnaoLOs9NXfZTiIEzV41LgfZ5cKJpR\ngnsju2hou26AuzzR87DjZ/a7znnh8nmjmJOZA/MGnUJ1m0LTAQABAAAAAAAD\nAAAAAAAAAAAAAADsMfv+5EfZVCH2oNzbUqV+Ted0aTTx2R1eahPmMG+4n/Y4\nSXqBwgDsLt6LJwYk6EuJHaY4dxWw2B/bMCj4BkUH6Fwpym9HH1G8kpjU/kh5\nhWdg1aLvrjtZT+IkeCfdKGLGM3UpasJrMHR8qCTSS07Dc2YaQSZSf1u7YTui\nq2urKhata2GVLW910s5bcH/iKaVinksMv7biiEFr11lSwdE1N2FgKUULlRJV\ngQtLGmPAzkWzj0Kt/Rsc0Cz3cn/6/l7SY7y3\n------------------------------------------------------------\nsGfddy4Tki4UExG47TCs6jF4hCWnOUnatBHGa94YGvgn8RVk1UwpHgC/wf2S\n/emsSk/vobgjyokC/BDwachR9LIEYWP6Gnz3GBkmnlgTpjEP1lLPm2z7xMvl\nZtFyMXE2xZzqGbeFLccsKLYhAtN/gql9U4Ld2iHe9Wk++pxcPjp0LJuwAQAA\nAAIAAAC0HOP+EsUbB2k2EcJ7CVWZZbEeHCcw5E71GrJLIdExcGmjpy1DEnZS\ndqLfquRNR8+LSG7YfVRmIrjLZDmVgqdpBXRCcjjUc1tBKqRFm7v9bSAmBGBi\nkhu8wVHBQHgKJ9V0irOVDX0mQsXNgw4wtIfqYLM9ml7RQtwfG8w4VN5+17mV\n4G5YXqhWFm8uqXjoaHTAxCuOMo5o3qRpFPQkbmxvqpi9anLZ6tzGyDe9+cfW\n8CsetgTz0g/6f+ImZr3ke2MfCb7PhV4wxTiqb6zvPXcPYs/WE5spVSk0qKJT\ndh5XfnysjkO/rCoAkHCJRMt2kYD9mHK560Uuq/QLYvMjFM5zAAAAAAAAAAAA\nAAAAAAAAAAAAAAAd1fnSuJRPn2tbwqRGL0wMwuhiifW57FK/GOccCRWVG3zs\n8oHZsUBUP1IfEDmCqakNcMxocsXr8RDnspz20ShkHt6gw2RkL26W98Oc+ZJV\n5dx1RUPBdJH8JXz3IOXWZUl0eC5dVVWg1pxpRVkUR21A2K7u/kMD1TQ9+ndx\nrtnhcKzv4oeTVBji/OWNUWGZc6tMitZKhiMcqHIxE3B4XRZXrSxHk1XK2icR\n0cuYvZL8PDcROlCiNSy3cf2t\n############################################################"

    .line 141
    invoke-static {v14}, Lcom/sensetime/faceapi/LicenseHelper;->initLicense(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 142
    .local v7, "licenseResult":I
    if-nez v7, :cond_2

    :try_start_1
    const-string/jumbo v14, "FaceAuthManager"

    const-string/jumbo v15, "Init All Start"

    .line 154
    invoke-static {v14, v15}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/sensetime/faceauth/FaceAuthManager;->initDetect()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/sensetime/faceauth/FaceAuthManager;->initOcular()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/sensetime/faceauth/FaceAuthManager;->initSelect()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 176
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v14, 0x1

    invoke-direct {v2, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 177
    .local v2, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    if-eqz p1, :cond_6

    const/4 v14, 0x1

    .line 181
    new-array v12, v14, [I

    .line 182
    .local v12, "verifyResult":[I
    new-instance v14, Ljava/lang/Thread;

    new-instance v15, Lcom/sensetime/faceauth/FaceAuthManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1, v12, v2}, Lcom/sensetime/faceauth/FaceAuthManager$1;-><init>(Lcom/sensetime/faceauth/FaceAuthManager;Ljava/lang/String;[ILjava/util/concurrent/CountDownLatch;)V

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 193
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 195
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-static {v14}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v9

    .local v9, "originalPriority":I
    const/16 v14, -0x13

    .line 196
    invoke-static {v14}, Landroid/os/Process;->setThreadPriority(I)V

    .line 197
    if-nez p2, :cond_7

    .line 204
    :cond_0
    :goto_0
    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v14, 0x0

    .line 208
    aget v14, v12, v14
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x2

    if-eq v14, v15, :cond_8

    .line 221
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v14, :cond_9

    :cond_1
    :goto_1
    monitor-exit p0

    .line 249
    return v10

    .end local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v9    # "originalPriority":I
    .end local v12    # "verifyResult":[I
    :cond_2
    :try_start_4
    const-string/jumbo v14, "FaceAuthManager"

    .line 143
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initlicense failed with result "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v14, 0x3

    monitor-exit p0

    .line 144
    return v14

    :cond_3
    :try_start_5
    const-string/jumbo v14, "FaceAuthManager"

    const-string/jumbo v15, "initDetect failed, handle is 0"

    .line 157
    invoke-static {v14, v15}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 159
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v14, 0x2

    monitor-exit p0

    .line 160
    return v14

    :cond_4
    :try_start_6
    const-string/jumbo v14, "FaceAuthManager"

    const-string/jumbo v15, "initOcular failed, handle is 0"

    .line 164
    invoke-static {v14, v15}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 166
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v14, 0x2

    monitor-exit p0

    .line 167
    return v14

    :cond_5
    :try_start_7
    const-string/jumbo v14, "FaceAuthManager"

    const-string/jumbo v15, "initSelect failed, handle is 0"

    .line 170
    invoke-static {v14, v15}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 172
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v14, 0x2

    monitor-exit p0

    .line 173
    return v14

    .restart local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_6
    const/4 v14, 0x1

    monitor-exit p0

    .line 179
    return v14

    .line 198
    .restart local v9    # "originalPriority":I
    .restart local v12    # "verifyResult":[I
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sensetime/faceauth/FaceAuthManager;->initHacker(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "FaceAuthManager"

    const-string/jumbo v15, "initHacker failed, handle is 0"

    .line 199
    invoke-static {v14, v15}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    const/4 v14, 0x0

    .line 201
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 219
    .end local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v9    # "originalPriority":I
    .end local v12    # "verifyResult":[I
    :catch_0
    move-exception v5

    .line 217
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v14, 0x3

    monitor-exit p0

    .line 218
    return v14

    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v9    # "originalPriority":I
    .restart local v12    # "verifyResult":[I
    :cond_8
    const/4 v14, 0x0

    .line 209
    :try_start_a
    aget v14, v12, v14
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return v14

    .line 215
    :catch_1
    move-exception v4

    .line 212
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v14, 0x3

    monitor-exit p0

    .line 214
    return v14

    .line 222
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_9
    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v14}, Lcom/sensetime/faceapi/FaceVerify;->getVersion()I

    move-result v13

    .line 223
    .local v13, "version":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 224
    const/4 v8, 0x0

    .line 225
    .local v8, "needUpdata":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, "i":I
    :goto_2
    if-gez v6, :cond_a

    .line 237
    if-eqz v8, :cond_1

    const-string/jumbo v14, "FaceAuthManager"

    const-string/jumbo v15, "need update feature"

    .line 238
    invoke-static {v14, v15}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 240
    :try_start_d
    invoke-static {}, Lcom/sensetime/faceauth/util/SerializeManager;->getInstance()Lcom/sensetime/faceauth/util/SerializeManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mEnrollPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/sensetime/faceauth/util/SerializeManager;->serializeObject(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 244
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_e
    const-string/jumbo v14, "FaceAuthManager"

    .line 242
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateUserFeature---serialize object failed with exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sensetime/faceauth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x3

    .line 243
    goto/16 :goto_1

    .line 226
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sensetime/faceauth/bean/User;

    .line 227
    .local v11, "user":Lcom/sensetime/faceauth/bean/User;
    invoke-virtual {v11}, Lcom/sensetime/faceauth/bean/User;->getVerifyVersion()I

    move-result v14

    if-ne v14, v13, :cond_c

    .line 225
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 228
    :cond_c
    const/4 v8, 0x1

    .line 230
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/sensetime/faceauth/FaceAuthManager;->updateUserFeature(Lcom/sensetime/faceauth/bean/User;I)I

    move-result v10

    .line 231
    if-eqz v10, :cond_b

    const-string/jumbo v14, "FaceAuthManager"

    .line 232
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the result for updataUserFeature is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    .line 233
    return v10

    .end local v2    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v6    # "i":I
    .end local v7    # "licenseResult":I
    .end local v8    # "needUpdata":Z
    .end local v9    # "originalPriority":I
    .end local v11    # "user":Lcom/sensetime/faceauth/bean/User;
    .end local v12    # "verifyResult":[I
    .end local v13    # "version":I
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method public declared-synchronized initHandler(Ljava/lang/String;)Z
    .locals 7
    .param p1, "dbDirPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 86
    if-eqz p1, :cond_0

    .line 90
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "enroll.ser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mEnrollPath:Ljava/lang/String;

    .line 92
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/sensetime/faceauth/util/SerializeManager;->getInstance()Lcom/sensetime/faceauth/util/SerializeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mEnrollPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sensetime/faceauth/util/SerializeManager;->readSerilizeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    .line 116
    :goto_2
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :try_start_3
    const-string/jumbo v3, "FaceAuthManager"

    const-string/jumbo v4, "the dbpath is null"

    .line 87
    invoke-static {v3, v4}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 88
    return v6

    .line 94
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string/jumbo v3, "FaceAuthManager"

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can not read or write in the dbpath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 96
    return v6

    .line 94
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "FaceAuthManager"

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mkdir failed for dbpath :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 101
    return v6

    .line 112
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 112
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, "FaceAuthManager"

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read serialize info failed with errormessage :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensetime/faceauth/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    .line 111
    return v6

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mRegisterUsers:Ljava/util/ArrayList;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    if-nez v0, :cond_0

    .line 577
    :goto_0
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    if-nez v0, :cond_1

    .line 582
    :goto_1
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    if-nez v0, :cond_2

    .line 587
    :goto_2
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    if-nez v0, :cond_3

    .line 592
    :goto_3
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    :goto_4
    monitor-exit p0

    .line 597
    return-void

    .line 573
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceDetect;->release()V

    const/4 v0, 0x0

    .line 574
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "releaseDetect"

    .line 575
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 578
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceSelect;->release()V

    const/4 v0, 0x0

    .line 579
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceSelect:Lcom/sensetime/faceapi/FaceSelect;

    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "releaseSelect"

    .line 580
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceOcular;->release()V

    const/4 v0, 0x0

    .line 584
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "releaseOcular"

    .line 585
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceHacker;->release()V

    const/4 v0, 0x0

    .line 589
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "releaseHacker"

    .line 590
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceVerify;->release()V

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    const-string/jumbo v0, "FaceAuthManager"

    const-string/jumbo v1, "releaseVerify"

    .line 595
    invoke-static {v0, v1}, Lcom/sensetime/faceauth/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public declared-synchronized saveFeature([BIIIZ)I
    .locals 7
    .param p1, "imageData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "angle"    # I
    .param p5, "strictMode"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, "23456789012"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 372
    invoke-direct/range {v0 .. v6}, Lcom/sensetime/faceauth/FaceAuthManager;->saveFeature([BIIIZLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDetectArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "down"    # I

    .prologue
    monitor-enter p0

    .line 344
    :try_start_0
    iput p1, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceLeftThreshold:I

    .line 345
    iput p2, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceTopThreshold:I

    .line 346
    iput p3, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceRightThreshold:I

    .line 347
    iput p4, p0, Lcom/sensetime/faceauth/FaceAuthManager;->mFaceDownThreshold:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 348
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
