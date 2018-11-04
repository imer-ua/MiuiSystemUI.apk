.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private build_:Ljava/lang/String;

.field private durationMillis_:J

.field public phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

.field private result_:I

.field public sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

.field private startTimestampMillis_:J

.field private touchAreaHeight_:I

.field private touchAreaWidth_:I

.field public touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1326
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    .line 1326
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1331
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    .line 1332
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    .line 1333
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis_:J

    .line 1334
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    .line 1335
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result_:I

    .line 1336
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    .line 1337
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    .line 1338
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    .line 1339
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    .line 1340
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type_:I

    .line 1341
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    .line 1342
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->cachedSize:I

    .line 1343
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    .line 1399
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v4

    .line 1400
    .local v4, "size":I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1402
    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    const/4 v5, 0x1

    .line 1401
    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1404
    :cond_0
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 1406
    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis_:J

    const/4 v5, 0x2

    .line 1405
    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1408
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 1410
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    const/4 v6, 0x3

    .line 1409
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1412
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 1414
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result_:I

    const/4 v6, 0x4

    .line 1413
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1416
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 1417
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 1418
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    aget-object v2, v5, v3

    .line 1419
    .local v2, "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    if-eqz v2, :cond_4

    .line 1421
    const/4 v5, 0x5

    .line 1420
    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1417
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1425
    .end local v2    # "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .end local v3    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    array-length v5, v5

    if-lez v5, :cond_7

    .line 1426
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 1427
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    aget-object v1, v5, v3

    .line 1428
    .local v1, "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    if-eqz v1, :cond_6

    .line 1430
    const/4 v5, 0x6

    .line 1429
    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1426
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1434
    .end local v1    # "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .end local v3    # "i":I
    :cond_7
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_8

    .line 1436
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    const/16 v6, 0x9

    .line 1435
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1438
    :cond_8
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_9

    .line 1440
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    const/16 v6, 0xa

    .line 1439
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1442
    :cond_9
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a

    .line 1444
    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type_:I

    const/16 v6, 0xb

    .line 1443
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1446
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v5, v5

    if-lez v5, :cond_c

    .line 1447
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v5, v5

    if-ge v3, v5, :cond_c

    .line 1448
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    aget-object v0, v5, v3

    .line 1449
    .local v0, "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    if-eqz v0, :cond_b

    .line 1451
    const/16 v5, 0xc

    .line 1450
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1447
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1455
    .end local v0    # "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .end local v3    # "i":I
    :cond_c
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1463
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 1464
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 1468
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1469
    return-object p0

    .line 1466
    :sswitch_0
    return-object p0

    .line 1474
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    .line 1475
    iget v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    goto :goto_0

    .line 1479
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis_:J

    .line 1480
    iget v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    goto :goto_0

    .line 1484
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    .line 1485
    iget v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    goto :goto_0

    .line 1489
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 1490
    .local v6, "value":I
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1494
    :pswitch_0
    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result_:I

    .line 1495
    iget v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    goto :goto_0

    .line 1502
    .end local v6    # "value":I
    :sswitch_5
    const/16 v8, 0x2a

    .line 1501
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1503
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v8, :cond_2

    move v1, v7

    .line 1505
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    .line 1506
    .local v4, "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    if-eqz v1, :cond_1

    .line 1507
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1509
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 1510
    new-instance v8, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;-><init>()V

    aput-object v8, v4, v1

    .line 1511
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1512
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1509
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1503
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    array-length v1, v8

    goto :goto_1

    .line 1515
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    :cond_3
    new-instance v8, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;-><init>()V

    aput-object v8, v4, v1

    .line 1516
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1517
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    goto/16 :goto_0

    .line 1522
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    :sswitch_6
    const/16 v8, 0x32

    .line 1521
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1523
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v8, :cond_5

    move v1, v7

    .line 1525
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v3, v8, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    .line 1526
    .local v3, "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    if-eqz v1, :cond_4

    .line 1527
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    invoke-static {v8, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1529
    :cond_4
    :goto_4
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 1530
    new-instance v8, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;-><init>()V

    aput-object v8, v3, v1

    .line 1531
    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1532
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1529
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1523
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    array-length v1, v8

    goto :goto_3

    .line 1535
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    :cond_6
    new-instance v8, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;-><init>()V

    aput-object v8, v3, v1

    .line 1536
    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1537
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    goto/16 :goto_0

    .line 1541
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    .line 1542
    iget v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    goto/16 :goto_0

    .line 1546
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    .line 1547
    iget v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    goto/16 :goto_0

    .line 1551
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 1552
    .restart local v6    # "value":I
    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 1558
    :pswitch_1
    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type_:I

    .line 1559
    iget v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    goto/16 :goto_0

    .line 1566
    .end local v6    # "value":I
    :sswitch_a
    const/16 v8, 0x62

    .line 1565
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1567
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v8, :cond_8

    move v1, v7

    .line 1569
    .restart local v1    # "i":I
    :goto_5
    add-int v8, v1, v0

    new-array v2, v8, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    .line 1570
    .local v2, "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    if-eqz v1, :cond_7

    .line 1571
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-static {v8, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1573
    :cond_7
    :goto_6
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    .line 1574
    new-instance v8, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;-><init>()V

    aput-object v8, v2, v1

    .line 1575
    aget-object v8, v2, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1576
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1573
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1567
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v1, v8

    goto :goto_5

    .line 1579
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    :cond_9
    new-instance v8, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;-><init>()V

    aput-object v8, v2, v1

    .line 1580
    aget-object v8, v2, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1581
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    goto/16 :goto_0

    .line 1464
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x48 -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x62 -> :sswitch_a
    .end sparse-switch

    .line 1490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1552
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1459
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    move-result-object v0

    return-object v0
.end method

.method public setBuild(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1223
    if-nez p1, :cond_0

    .line 1224
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1226
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    .line 1227
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    .line 1228
    return-object p0
.end method

.method public setDurationMillis(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1204
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis_:J

    .line 1205
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    .line 1206
    return-object p0
.end method

.method public setResult(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1245
    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result_:I

    .line 1246
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    .line 1247
    return-object p0
.end method

.method public setStartTimestampMillis(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1185
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    .line 1186
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    .line 1187
    return-object p0
.end method

.method public setTouchAreaHeight(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1289
    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    .line 1290
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    .line 1291
    return-object p0
.end method

.method public setTouchAreaWidth(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1270
    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    .line 1271
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    .line 1272
    return-object p0
.end method

.method public setType(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1308
    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type_:I

    .line 1309
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    .line 1310
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1349
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1350
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    const/4 v6, 0x1

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1352
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 1353
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis_:J

    const/4 v6, 0x2

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1355
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 1356
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1358
    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 1359
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result_:I

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1361
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    array-length v4, v4

    if-lez v4, :cond_5

    .line 1362
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 1363
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    aget-object v2, v4, v3

    .line 1364
    .local v2, "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    if-eqz v2, :cond_4

    .line 1365
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1362
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1369
    .end local v2    # "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .end local v3    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    array-length v4, v4

    if-lez v4, :cond_7

    .line 1370
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 1371
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    aget-object v1, v4, v3

    .line 1372
    .local v1, "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    if-eqz v1, :cond_6

    .line 1373
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1370
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1377
    .end local v1    # "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .end local v3    # "i":I
    :cond_7
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_8

    .line 1378
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1380
    :cond_8
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_9

    .line 1381
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1383
    :cond_9
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_a

    .line 1384
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type_:I

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1386
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v4, v4

    if-lez v4, :cond_c

    .line 1387
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v4, v4

    if-ge v3, v4, :cond_c

    .line 1388
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    aget-object v0, v4, v3

    .line 1389
    .local v0, "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    if-eqz v0, :cond_b

    .line 1390
    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1387
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1394
    .end local v0    # "element":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .end local v3    # "i":I
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1348
    return-void
.end method
