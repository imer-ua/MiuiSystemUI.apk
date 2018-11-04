.class public Lcom/android/systemui/statusbar/Icons;
.super Ljava/lang/Object;
.source "Icons.java"


# static fields
.field private static sMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSignalHalfMapping:Landroid/util/SparseArray;
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
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Integer;Z)I
    .locals 8
    .param p0, "originalId"    # Ljava/lang/Integer;
    .param p1, "enable"    # Z

    .prologue
    const v7, 0x90205c5

    const v6, 0x90205c4

    const v5, 0x9020351

    const v4, 0x9020350

    .line 32
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 34
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 35
    const v2, 0x902034c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 34
    const v3, 0x902034b

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 37
    const v2, 0x9020365

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 36
    const v3, 0x9020362

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 39
    const v2, 0x9020364

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 38
    const v3, 0x9020363

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 41
    const v2, 0x9020367

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 40
    const v3, 0x9020366

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 43
    const v2, 0x9020369

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 42
    const v3, 0x9020368

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 45
    const v2, 0x902036b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 44
    const v3, 0x902036a

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 47
    const v2, 0x9020374

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 46
    const v3, 0x9020373

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 49
    const v2, 0x90205c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 48
    const v3, 0x90205c6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 51
    const v2, 0x90205db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 50
    const v3, 0x90205da

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 53
    const v2, 0x90203a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 52
    const v3, 0x90203a8    # 1.56499E-33f

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 55
    const v2, 0x90203a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 54
    const v3, 0x90203a0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 57
    const v2, 0x90203ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 56
    const v3, 0x90203ab

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 59
    const v2, 0x90203aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 58
    const v3, 0x90203a7

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 61
    const v2, 0x90203a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 60
    const v3, 0x90203a3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 63
    const v2, 0x90203a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 62
    const v3, 0x902039f

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 65
    const v2, 0x90203ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 64
    const v3, 0x90203ad

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 67
    const v2, 0x90203b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 66
    const v3, 0x90203af

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 69
    const v2, 0x90203c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 68
    const v3, 0x90203bf

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 71
    const v2, 0x902042d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    const v3, 0x902042c

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 73
    const v2, 0x902042f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 72
    const v3, 0x902042e

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 75
    const v2, 0x90205b3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 74
    const v3, 0x90205b1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 77
    const v2, 0x9020452

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 76
    const v3, 0x9020435

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 79
    const v2, 0x9020494

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 78
    const v3, 0x9020477

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 81
    const v2, 0x90204da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 80
    const v3, 0x90204bd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 83
    const v2, 0x9020520

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    const v3, 0x9020503

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 85
    const v2, 0x9020566

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 84
    const v3, 0x9020549

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 87
    const v2, 0x9020594

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 86
    const v3, 0x9020593

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 89
    const v2, 0x902059e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 88
    const v3, 0x902059d

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 91
    const v2, 0x90205ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 90
    const v3, 0x90205ad

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 93
    const v2, 0x90205b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    const v3, 0x90205af

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 95
    const v2, 0x90205b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 94
    const v3, 0x90205b8

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 97
    const v2, 0x9020598

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    const v3, 0x9020597

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 99
    const v2, 0x90205d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 98
    const v3, 0x90205d0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 101
    const v2, 0x90205d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    const v3, 0x90205d2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 103
    const v2, 0x902035d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 102
    const v3, 0x9020352

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 105
    const v2, 0x90205f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    const v3, 0x90205f8

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 107
    const v2, 0x90205ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 106
    const v3, 0x90205e9

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 109
    const v2, 0x90205ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 108
    const v3, 0x90205ec

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 111
    const v2, 0x90205f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    const v3, 0x90205ef

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 113
    const v2, 0x90205f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    const v3, 0x90205f2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 115
    const v2, 0x90205f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 114
    const v3, 0x90205f5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 117
    const v2, 0x90205e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 116
    const v3, 0x90205df

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 119
    const v2, 0x90205e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 118
    const v3, 0x90205e5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 121
    const v2, 0x90205e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 120
    const v3, 0x90205e3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 123
    const v2, 0x90205e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 122
    const v3, 0x90205e7

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 125
    const v2, 0x90205e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 124
    const v3, 0x90205e1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 127
    const v2, 0x90205de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    const v3, 0x90205dd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 130
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 132
    const v2, 0x9020360

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 131
    const v3, 0x902035f

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 135
    const v2, 0x9020432

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    const v3, 0x9020431

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 137
    const v2, 0x902046b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 136
    const v3, 0x902046a

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 139
    const v2, 0x90204ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 138
    const v3, 0x90204ac

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 141
    const v2, 0x90204f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    const v3, 0x90204f2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 143
    const v2, 0x9020539

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 142
    const v3, 0x9020538

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 145
    const v2, 0x902057f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 144
    const v3, 0x902057e

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 147
    const v2, 0x9020596

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 146
    const v3, 0x9020595

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 149
    const v2, 0x9020349

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 148
    const v3, 0x9020348

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 150
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 153
    const v2, 0x9020345

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 152
    const v3, 0x9020344

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 155
    const v2, 0x90203c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 154
    const v3, 0x90203c6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 157
    const v2, 0x90205d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 156
    const v3, 0x90205d6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 159
    const v2, 0x90203be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 158
    const v3, 0x90203bd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 160
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 163
    const v2, 0x90203c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 162
    const v3, 0x90203c4

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 166
    const v2, 0x90205c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 165
    const v3, 0x90205c2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 169
    const v2, 0x90203b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 168
    const v3, 0x90203b7

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 171
    const v2, 0x90203ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 170
    const v3, 0x90203b9

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 173
    const v2, 0x90203bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 172
    const v3, 0x90203bb

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 175
    const v2, 0x90203b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 174
    const v3, 0x90203b5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x9020337

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x9020336

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x9020339

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x9020338

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x90205bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x90205be

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x90205c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x90205c0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    .line 182
    const v2, 0x90205d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 181
    const v3, 0x90205d8

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x90205a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x90205a7

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x90205b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x90205b4

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x9020067

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x9020066

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x902006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x902006a

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x9020069

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x9020068

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sMapping:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .line 193
    .local v0, "resultId":Ljava/lang/Integer;
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    .end local v0    # "resultId":Ljava/lang/Integer;
    :cond_1
    move-object v0, p0

    .line 192
    goto :goto_0

    .line 193
    .restart local v0    # "resultId":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public static getSignalHalfId(Ljava/lang/Integer;)I
    .locals 4
    .param p0, "originalId"    # Ljava/lang/Integer;

    .prologue
    .line 197
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    .line 199
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    .line 200
    const v2, 0x902046a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 199
    const v3, 0x9020435

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    .line 202
    const v2, 0x90204ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 201
    const v3, 0x9020477

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    .line 204
    const v2, 0x90204f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 203
    const v3, 0x90204bd

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    .line 206
    const v2, 0x9020538

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 205
    const v3, 0x9020503

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    .line 208
    const v2, 0x902057e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 207
    const v3, 0x9020549

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    .line 210
    const v2, 0x9020595

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 209
    const v3, 0x9020593

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    .line 212
    const v2, 0x90205b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 211
    const v3, 0x90205b1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/Icons;->sSignalHalfMapping:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 216
    .local v0, "resultId":Ljava/lang/Integer;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
