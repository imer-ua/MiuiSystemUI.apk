.class public Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field public static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field public static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private static isInitiated:Z

.field static mDataActivityArray:[Ljava/lang/String;

.field static mDataTypeArray:[Ljava/lang/String;

.field static mDataTypeDescriptionArray:[Ljava/lang/String;

.field static mDataTypeGenerationArray:[Ljava/lang/String;

.field static mDataTypeGenerationDescArray:[Ljava/lang/String;

.field private static mRes:Landroid/content/res/Resources;

.field static mSelectedDataActivityIndex:[I

.field static mSelectedDataTypeDesc:[Ljava/lang/String;

.field static mSelectedDataTypeIcon:[I

.field static mSelectedQSDataTypeIcon:[I

.field static mSelectedSignalStreagthIndex:[I

.field static mSignalNullArray:[Ljava/lang/String;

.field static mSignalStrengthArray:[Ljava/lang/String;

.field static mSignalStrengthDesc:[Ljava/lang/String;

.field static mSignalStrengthRoamingArray:[Ljava/lang/String;

.field static mStacked2SingleIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v3, 0x6

    const/4 v14, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 43
    new-array v0, v14, [[I

    .line 44
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    .line 43
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 52
    new-array v0, v14, [[I

    .line 53
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    .line 52
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 61
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 113
    const v1, 0x9020454

    .line 114
    const v3, 0x9020496

    .line 115
    const v4, 0x90204dc

    .line 116
    const v6, 0x9020522

    .line 117
    const v7, 0x9020568

    .line 113
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 118
    const v1, 0x9020453

    .line 119
    const v3, 0x9020495

    .line 120
    const v4, 0x90204db

    .line 121
    const v6, 0x9020521

    .line 122
    const v7, 0x9020567

    .line 118
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v14

    .line 112
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

    .line 193
    sput-boolean v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    .line 376
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 377
    const-string/jumbo v1, "CARRIER_NETWORK_CHANGE"

    .line 380
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 384
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 385
    const v10, 0x91000d3

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v11, v5

    move v12, v5

    move v13, v5

    .line 376
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 391
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 392
    const-string/jumbo v1, "3G"

    .line 395
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 399
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 400
    const v10, 0x91000c1

    .line 401
    const v11, 0x9020377

    .line 403
    const v13, 0x9020182

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 391
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 406
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 407
    const-string/jumbo v1, "WFC"

    .line 410
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 414
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v5

    move v13, v5

    .line 406
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 418
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 419
    const-string/jumbo v1, "Unknown"

    .line 422
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 426
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v5

    move v13, v5

    .line 418
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 430
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 431
    const-string/jumbo v1, "E"

    .line 434
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 438
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 439
    const v10, 0x91000c9

    .line 440
    const v11, 0x902037a

    .line 442
    const v13, 0x9020186

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 430
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 445
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 446
    const-string/jumbo v1, "1X"

    .line 449
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 453
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 454
    const v10, 0x91000c7

    .line 455
    const v11, 0x9020376

    .line 457
    const v13, 0x9020180

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 445
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 460
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 461
    const-string/jumbo v1, "G"

    .line 464
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 468
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 469
    const v10, 0x91000be

    .line 470
    const v11, 0x902037b

    .line 472
    const v13, 0x9020189

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 460
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 475
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 476
    const-string/jumbo v1, "H"

    .line 479
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 483
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 484
    const v10, 0x91000c2

    .line 485
    const v11, 0x902037c

    .line 487
    const v13, 0x902018a

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 475
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 490
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 491
    const-string/jumbo v1, "4G"

    .line 494
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 498
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 499
    const v10, 0x91000c3

    .line 500
    const v11, 0x9020378

    .line 502
    const v13, 0x9020183

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 490
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 505
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 506
    const-string/jumbo v1, "4G+"

    .line 509
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 513
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 514
    const v10, 0x91000c4

    .line 515
    const v11, 0x9020379

    .line 517
    const v13, 0x9020184

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 505
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 520
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 521
    const-string/jumbo v1, "LTE"

    .line 524
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 528
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 529
    const v10, 0x91000c5

    .line 530
    const v11, 0x902037e

    .line 532
    const v13, 0x902018d

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 520
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 535
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 536
    const-string/jumbo v1, "LTE+"

    .line 539
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 543
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 544
    const v10, 0x91000c6

    .line 545
    const v11, 0x902037f

    .line 547
    const v13, 0x902018e

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 535
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 550
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 551
    const-string/jumbo v1, "DataDisabled"

    .line 554
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 558
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 559
    const v10, 0x91000ce

    .line 560
    const v11, 0x9020375

    .line 562
    const v13, 0x90200dc

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 550
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 32
    return-void

    .line 44
    :array_0
    .array-data 4
        0x9020435
        0x9020477
        0x90204bd
        0x9020503
        0x9020549
        0x9020593
    .end array-data

    .line 53
    :array_1
    .array-data 4
        0x9020435
        0x9020477
        0x90204bd
        0x9020503
        0x9020549
        0x9020593
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMobileStrengthIcon(I)I
    .locals 2
    .param p0, "stackedIcon"    # I

    .prologue
    .line 320
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 321
    return p0

    .line 323
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 324
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 325
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 327
    :cond_1
    return p0
.end method

.method static getDataActivity(II)I
    .locals 8
    .param p0, "slot"    # I
    .param p1, "activity"    # I

    .prologue
    const/4 v7, 0x0

    .line 285
    const-string/jumbo v2, "TelephonyIcons"

    const-string/jumbo v3, "getDataActivity, slot=%d, activity=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 286
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 285
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 289
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    aget-object v4, v4, p0

    const-string/jumbo v5, "com.android.systemui"

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 288
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "dataActivityArray":[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 291
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v4, v4, p0

    aget-object v4, v0, v4

    const-string/jumbo v5, "com.android.systemui"

    .line 290
    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "selectedTypeArray":[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v3, v1, p1

    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method static getDataTypeDesc(I)I
    .locals 4
    .param p0, "slot"    # I

    .prologue
    .line 281
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    aget-object v1, v1, p0

    const-string/jumbo v2, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getDataTypeIcon(I)I
    .locals 6
    .param p0, "slot"    # I

    .prologue
    .line 276
    const-string/jumbo v0, "TelephonyIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataTypeIcon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sub=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 64
    packed-switch p0, :pswitch_data_0

    .line 107
    const-string/jumbo v0, ""

    return-object v0

    .line 66
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, ""

    return-object v0

    .line 69
    :cond_0
    const-string/jumbo v0, "G"

    return-object v0

    .line 71
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-eqz v0, :cond_1

    .line 72
    const-string/jumbo v0, ""

    return-object v0

    .line 74
    :cond_1
    const-string/jumbo v0, "E"

    return-object v0

    .line 76
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-eqz v0, :cond_2

    .line 77
    const-string/jumbo v0, ""

    return-object v0

    .line 79
    :cond_2
    const-string/jumbo v0, "3G"

    return-object v0

    .line 81
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-eqz v0, :cond_3

    .line 82
    const-string/jumbo v0, "4G"

    return-object v0

    .line 83
    :cond_3
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsMXOperation:Z

    if-eqz v0, :cond_4

    .line 84
    const-string/jumbo v0, "3G"

    return-object v0

    .line 86
    :cond_4
    const-string/jumbo v0, "H"

    return-object v0

    .line 88
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsMXOperation:Z

    if-eqz v0, :cond_6

    .line 89
    :cond_5
    const-string/jumbo v0, "4G"

    return-object v0

    .line 91
    :cond_6
    const-string/jumbo v0, "H+"

    return-object v0

    .line 93
    :pswitch_5
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-nez v0, :cond_7

    const-string/jumbo v0, "PL"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    :cond_7
    const-string/jumbo v0, "LTE"

    return-object v0

    .line 95
    :cond_8
    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsMXOperation:Z

    if-eqz v0, :cond_a

    .line 96
    :cond_9
    const-string/jumbo v0, "4G LTE"

    return-object v0

    .line 98
    :cond_a
    const-string/jumbo v0, "4G"

    return-object v0

    .line 100
    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsUSAOperation:Z

    if-nez v0, :cond_b

    const-string/jumbo v0, "PL"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 101
    :cond_b
    const-string/jumbo v0, "LTE+"

    return-object v0

    .line 102
    :cond_c
    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsIROperation:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/systemui/MCCUtils;->sIsNPOperation:Z

    if-eqz v0, :cond_e

    .line 103
    :cond_d
    const-string/jumbo v0, "4.5G"

    return-object v0

    .line 105
    :cond_e
    const-string/jumbo v0, "4G+"

    return-object v0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static getQSDataTypeIcon(I)I
    .locals 1
    .param p0, "slot"    # I

    .prologue
    .line 272
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getRoamingSignalIconId(II)I
    .locals 1
    .param p0, "level"    # I
    .param p1, "inet"    # I

    .prologue
    .line 355
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

    aget-object v0, v0, p1

    aget v0, v0, p0

    return v0
.end method

.method static getSignalNullIcon(I)I
    .locals 6
    .param p0, "slot"    # I

    .prologue
    const/4 v5, 0x0

    .line 262
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 263
    const/4 v2, 0x0

    return v2

    .line 265
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 266
    .local v1, "resName":Ljava/lang/String;
    const-string/jumbo v2, "TelephonyIcons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "null signal icon name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "resId":I
    return v0
.end method

.method static getSignalStrengthDes(I)[I
    .locals 7
    .param p0, "slot"    # I

    .prologue
    const/4 v6, 0x5

    .line 359
    new-array v1, v6, [I

    .line 360
    .local v1, "resId":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 361
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-object v1
.end method

.method static getSignalStrengthIcon(IIIZ)I
    .locals 7
    .param p0, "slot"    # I
    .param p1, "inet"    # I
    .param p2, "level"    # I
    .param p3, "roaming"    # Z

    .prologue
    const/4 v6, 0x0

    .line 297
    const-string/jumbo v0, "TelephonyIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSignalStrengthIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    const-string/jumbo v2, "slot=%d, inetCondition=%d, level=%d, roaming=%b"

    .line 297
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 298
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 297
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v6

    aget v0, v0, p2

    return v0
.end method

.method static getStackedVoiceIcon(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "retValue":I
    packed-switch p0, :pswitch_data_0

    .line 351
    :goto_0
    return v0

    .line 334
    :pswitch_0
    const v0, 0x902043e

    .line 335
    goto :goto_0

    .line 337
    :pswitch_1
    const v0, 0x9020480

    .line 338
    goto :goto_0

    .line 340
    :pswitch_2
    const v0, 0x90204c6

    .line 341
    goto :goto_0

    .line 343
    :pswitch_3
    const v0, 0x902050c

    .line 344
    goto :goto_0

    .line 346
    :pswitch_4
    const v0, 0x9020552

    .line 347
    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static initStacked2SingleIconLookup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 247
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    .line 248
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v4, 0x90b00de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 249
    .local v2, "stackedIcons":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v4, 0x90b00df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 251
    .local v1, "singleIcons":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 253
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 254
    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 253
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    const-string/jumbo v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initStacked2SingleIconLookup: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void
.end method

.method static readIconsFromXml(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 196
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    if-eqz v1, :cond_0

    .line 197
    const-string/jumbo v1, "TelephonyIcons"

    const-string/jumbo v2, "readIconsFromXml, already read!"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 203
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x90b0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    .line 204
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 205
    const v2, 0x90b000c

    .line 204
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    .line 206
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 207
    const v2, 0x90b000b

    .line 206
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    .line 208
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 209
    const v2, 0x90b000d

    .line 208
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    .line 210
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x90b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    .line 211
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x90b0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    .line 212
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 213
    const v2, 0x90b0032

    .line 212
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    .line 214
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x90b0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    .line 215
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x90b006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->initStacked2SingleIconLookup()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    if-nez v1, :cond_1

    .line 224
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 225
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    .line 227
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    if-nez v1, :cond_2

    .line 228
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 229
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    .line 231
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    if-nez v1, :cond_3

    .line 232
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 233
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    .line 235
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    if-nez v1, :cond_4

    .line 236
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_4

    .line 237
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    .line 239
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    if-nez v1, :cond_5

    .line 240
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_5

    .line 241
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    .line 243
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    .line 195
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sput-boolean v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    .line 219
    const-string/jumbo v1, "TelephonyIcons"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readIconsFromXml, exception happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method
