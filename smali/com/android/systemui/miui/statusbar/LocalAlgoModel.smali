.class public Lcom/android/systemui/miui/statusbar/LocalAlgoModel;
.super Ljava/lang/Object;
.source "LocalAlgoModel.java"


# static fields
.field static b:D

.field static cg:[D

.field static cgw:[D

.field static cl:[D

.field static clw:[D

.field static eg:[D

.field static egw:[D

.field static el:[D

.field static elw:[D

.field private static mLastUpdateTimeStamp:J

.field private static mOldestUpdateTimeStamp:J

.field private static sPkgs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/LocalScoreRule;",
            ">;>;"
        }
    .end annotation
.end field

.field static th:D

.field static v:D

.field static w:[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 33
    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->v:D

    .line 34
    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->b:D

    .line 35
    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->th:D

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [D

    sput-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    .line 37
    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    .line 38
    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->elw:[D

    .line 39
    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    .line 40
    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->egw:[D

    .line 41
    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    .line 42
    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->clw:[D

    .line 43
    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    .line 44
    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cgw:[D

    .line 45
    sput-wide v4, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    .line 46
    sput-wide v4, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    .line 57
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cellbroadcastreceiver"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.server.telecom"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.channel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.bugreport"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.providers.downloads"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheLocalModel(Lorg/json/JSONObject;)V
    .locals 18
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 177
    :try_start_0
    const-string/jumbo v13, "v"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    sput-wide v14, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->v:D

    .line 178
    const-string/jumbo v13, "b"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    sput-wide v14, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->b:D

    .line 179
    const-string/jumbo v13, "th"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    sput-wide v14, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->th:D

    .line 181
    const-string/jumbo v13, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 182
    .local v12, "wArray":Lorg/json/JSONArray;
    if-eqz v12, :cond_0

    .line 183
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_0

    const/4 v13, 0x6

    if-ge v11, v13, :cond_0

    .line 184
    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const-wide/16 v14, 0x0

    invoke-virtual {v12, v11, v14, v15}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 183
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 188
    .end local v11    # "i":I
    :cond_0
    const-string/jumbo v13, "el"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 189
    .local v9, "elArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_2

    .line 190
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    .line 191
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->elw:[D

    .line 192
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_2

    .line 193
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v10

    .line 194
    .local v10, "elElem":Lorg/json/JSONArray;
    if-eqz v10, :cond_1

    .line 195
    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 196
    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->elw:[D

    const/4 v14, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 192
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 201
    .end local v10    # "elElem":Lorg/json/JSONArray;
    .end local v11    # "i":I
    :cond_2
    const-string/jumbo v13, "eg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 202
    .local v7, "egArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_4

    .line 203
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    .line 204
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->egw:[D

    .line 205
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_4

    .line 206
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 207
    .local v8, "egElem":Lorg/json/JSONArray;
    if-eqz v8, :cond_3

    .line 208
    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 209
    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->egw:[D

    const/4 v14, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 205
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 214
    .end local v8    # "egElem":Lorg/json/JSONArray;
    .end local v11    # "i":I
    :cond_4
    const-string/jumbo v13, "cl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 215
    .local v4, "clArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_6

    .line 216
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    .line 217
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->clw:[D

    .line 218
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_6

    .line 219
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 220
    .local v5, "clElem":Lorg/json/JSONArray;
    if-eqz v5, :cond_5

    .line 221
    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 222
    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->clw:[D

    const/4 v14, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 218
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 227
    .end local v5    # "clElem":Lorg/json/JSONArray;
    .end local v11    # "i":I
    :cond_6
    const-string/jumbo v13, "cg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 228
    .local v3, "cgArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_8

    .line 229
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    .line 230
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cgw:[D

    .line 231
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_8

    .line 232
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 233
    .local v2, "cgAElem":Lorg/json/JSONArray;
    if-eqz v2, :cond_7

    .line 234
    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    .line 235
    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cgw:[D

    const/4 v14, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 239
    .end local v2    # "cgAElem":Lorg/json/JSONArray;
    .end local v3    # "cgArray":Lorg/json/JSONArray;
    .end local v4    # "clArray":Lorg/json/JSONArray;
    .end local v7    # "egArray":Lorg/json/JSONArray;
    .end local v9    # "elArray":Lorg/json/JSONArray;
    .end local v11    # "i":I
    .end local v12    # "wArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 240
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 175
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_8
    return-void
.end method

.method private static diff()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 147
    sget-wide v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 148
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 150
    :cond_1
    sget-wide v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static getIncreasePercent()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    .line 155
    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->diff()D

    move-result-wide v0

    .line 156
    .local v0, "diff":D
    cmpl-double v2, v0, v4

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 157
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    return-wide v2

    .line 159
    :cond_1
    div-double v2, v0, v4

    return-wide v2
.end method

.method public static getScore(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)D
    .locals 30
    .param p0, "sbn"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    .prologue
    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getFoldPackageName()Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->isLocalModelAvailable()Z

    move-result v17

    if-nez v17, :cond_0

    .line 287
    const-wide/16 v20, 0x0

    return-wide v20

    .line 290
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->matchRules(Ljava/lang/String;Landroid/app/Notification;)I

    move-result v6

    .line 291
    .local v6, "matchScore":I
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-eq v6, v0, :cond_1

    .line 292
    int-to-double v0, v6

    move-wide/from16 v20, v0

    return-wide v20

    .line 295
    :cond_1
    const-class v17, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    .line 296
    .local v8, "packageScoreCache":Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;
    invoke-virtual {v8, v7}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getPkgEntity(Ljava/lang/String;)Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    move-result-object v4

    .line 297
    .local v4, "entity":Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getTotalClick()I

    move-result v9

    .line 298
    .local v9, "pkgTotalClick":I
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;->getTotalShow()I

    move-result v12

    .line 299
    .local v12, "pkgTotalShow":I
    :goto_1
    if-eqz v12, :cond_4

    int-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v20, v20, v22

    int-to-double v0, v12

    move-wide/from16 v22, v0

    div-double v10, v20, v22

    .line 301
    .local v10, "pkgClickRate":D
    :goto_2
    invoke-virtual {v8}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalClickCount()I

    move-result v13

    .line 302
    .local v13, "totalClickCount":I
    invoke-virtual {v8}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalShowCount()I

    move-result v16

    .line 303
    .local v16, "totalShowCount":I
    if-eqz v16, :cond_5

    int-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v20, v20, v22

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v2, v20, v22

    .line 305
    .local v2, "averageClickRate":D
    :goto_3
    const-wide/16 v14, 0x0

    .line 306
    .local v14, "sum":D
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    if-eqz v17, :cond_7

    .line 307
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    .line 308
    int-to-double v0, v12

    move-wide/from16 v20, v0

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    aget-wide v22, v17, v5

    cmpg-double v17, v20, v22

    if-gez v17, :cond_6

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->elw:[D

    aget-wide v20, v17, v5

    :goto_5
    add-double v14, v14, v20

    .line 307
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 297
    .end local v2    # "averageClickRate":D
    .end local v5    # "i":I
    .end local v9    # "pkgTotalClick":I
    .end local v10    # "pkgClickRate":D
    .end local v12    # "pkgTotalShow":I
    .end local v13    # "totalClickCount":I
    .end local v14    # "sum":D
    .end local v16    # "totalShowCount":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "pkgTotalClick":I
    goto :goto_0

    .line 298
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 299
    .restart local v12    # "pkgTotalShow":I
    :cond_4
    const-wide/16 v10, 0x0

    .restart local v10    # "pkgClickRate":D
    goto :goto_2

    .line 303
    .restart local v13    # "totalClickCount":I
    .restart local v16    # "totalShowCount":I
    :cond_5
    const-wide/16 v2, 0x0

    .restart local v2    # "averageClickRate":D
    goto :goto_3

    .line 308
    .restart local v5    # "i":I
    .restart local v14    # "sum":D
    :cond_6
    const-wide/16 v20, 0x0

    goto :goto_5

    .line 312
    .end local v5    # "i":I
    :cond_7
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    if-eqz v17, :cond_9

    .line 313
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_9

    .line 314
    int-to-double v0, v12

    move-wide/from16 v20, v0

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    aget-wide v22, v17, v5

    cmpl-double v17, v20, v22

    if-lez v17, :cond_8

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->egw:[D

    aget-wide v20, v17, v5

    :goto_7
    add-double v14, v14, v20

    .line 313
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 314
    :cond_8
    const-wide/16 v20, 0x0

    goto :goto_7

    .line 318
    .end local v5    # "i":I
    :cond_9
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    if-eqz v17, :cond_b

    .line 319
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_b

    .line 320
    int-to-double v0, v9

    move-wide/from16 v20, v0

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    aget-wide v22, v17, v5

    cmpg-double v17, v20, v22

    if-gez v17, :cond_a

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->clw:[D

    aget-wide v20, v17, v5

    :goto_9
    add-double v14, v14, v20

    .line 319
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 320
    :cond_a
    const-wide/16 v20, 0x0

    goto :goto_9

    .line 324
    .end local v5    # "i":I
    :cond_b
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    if-eqz v17, :cond_d

    .line 325
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_d

    .line 326
    int-to-double v0, v9

    move-wide/from16 v20, v0

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    aget-wide v22, v17, v5

    cmpl-double v17, v20, v22

    if-lez v17, :cond_c

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cgw:[D

    aget-wide v20, v17, v5

    :goto_b
    add-double v14, v14, v20

    .line 325
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 326
    :cond_c
    const-wide/16 v20, 0x0

    goto :goto_b

    .line 330
    .end local v5    # "i":I
    :cond_d
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 331
    const-wide/high16 v20, 0x4022000000000000L    # 9.0

    add-double v14, v14, v20

    .line 334
    :cond_e
    sget-wide v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->b:D

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v22, 0x0

    aget-wide v22, v17, v22

    mul-double v22, v22, v10

    add-double v20, v20, v22

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v22, 0x1

    aget-wide v22, v17, v22

    mul-double v22, v22, v2

    add-double v20, v20, v22

    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v22, 0x2

    aget-wide v22, v17, v22

    int-to-double v0, v12

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    .line 335
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v22, 0x3

    aget-wide v22, v17, v22

    int-to-double v0, v9

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    .line 334
    add-double v20, v20, v22

    .line 335
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v22, 0x4

    aget-wide v22, v17, v22

    int-to-double v0, v9

    move-wide/from16 v24, v0

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v24, v24, v26

    int-to-double v0, v9

    move-wide/from16 v26, v0

    const-wide v28, 0x3fb999999999999aL    # 0.1

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-double v26, v26, v28

    div-double v24, v24, v26

    mul-double v22, v22, v24

    .line 334
    add-double v20, v20, v22

    .line 336
    sget-object v17, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v22, 0x5

    aget-wide v22, v17, v22

    add-int v17, v9, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-int/lit8 v17, v12, 0x1

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 334
    add-double v20, v20, v22

    add-double v18, v20, v14

    .line 338
    .local v18, "y":D
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v20, v22, v20

    return-wide v20
.end method

.method public static getScoreForRank(D)D
    .locals 4
    .param p0, "score"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 342
    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->th:D

    cmpl-double v2, v2, v0

    if-eqz v2, :cond_1

    .line 343
    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getThreshold()D

    move-result-wide v2

    cmpl-double v2, p0, v2

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_0
    return-wide v0

    .line 345
    :cond_1
    return-wide p0
.end method

.method public static getThreshold()D
    .locals 4

    .prologue
    .line 349
    sget-wide v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->th:D

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getIncreasePercent()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static hasLocalRules()Z
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLocalModelAvailable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 164
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->allowFold()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    return v6

    .line 167
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 168
    sget-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    .line 169
    const/4 v1, 0x1

    return v1

    .line 167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_2
    return v6
.end method

.method private static matchRules(Ljava/lang/String;Landroid/app/Notification;)I
    .locals 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 254
    const/high16 v1, -0x80000000

    .line 255
    .local v1, "matchScore":I
    sget-object v7, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 256
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 257
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 258
    .local v5, "text":Ljava/lang/CharSequence;
    sget-object v7, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 259
    .local v4, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/miui/statusbar/LocalScoreRule;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;

    .line 260
    .local v2, "rule":Lcom/android/systemui/miui/statusbar/LocalScoreRule;
    iget-object v7, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 261
    iget v1, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    .line 280
    .end local v2    # "rule":Lcom/android/systemui/miui/statusbar/LocalScoreRule;
    .end local v3    # "rule$iterator":Ljava/util/Iterator;
    .end local v4    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/miui/statusbar/LocalScoreRule;>;"
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    return v1

    .line 265
    .restart local v2    # "rule":Lcom/android/systemui/miui/statusbar/LocalScoreRule;
    .restart local v3    # "rule$iterator":Ljava/util/Iterator;
    .restart local v4    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/miui/statusbar/LocalScoreRule;>;"
    .restart local v5    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 270
    :try_start_0
    iget-object v7, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    invoke-static {v7, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    iget v1, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "LocalAlgoModel"

    const-string/jumbo v8, "match exception title=%s rule=%s text=%s rule=%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 276
    const/4 v10, 0x0

    aput-object v6, v9, v10

    iget-object v10, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    aput-object v5, v9, v10

    iget-object v10, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v10, v9, v11

    .line 275
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static needUpdateLocalModel()Z
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static recordUpdateTime(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "update_time"

    sget-wide v4, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 131
    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "oldest_update_time"

    sget-wide v4, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    :cond_0
    return-void
.end method

.method public static restoreUpdateTime(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 137
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "update_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string/jumbo v1, "update_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    .line 141
    :cond_0
    const-string/jumbo v1, "oldest_update_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const-string/jumbo v1, "oldest_update_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    .line 136
    :cond_1
    return-void
.end method

.method public static updateLocalModel(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scoreInfo"    # Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "extraInfo":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {v3}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cacheLocalModel(Lorg/json/JSONObject;)V

    .line 110
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getSortDelay()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getSortDelay()J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sNewNotification:J

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getGroupInterval()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getGroupInterval()J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sGap:J

    .line 116
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getCount()I

    move-result v4

    sput v4, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->UNFLOD_LIMIT:I

    .line 119
    :cond_2
    invoke-static {p0, p1}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->persistLocalModel(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :goto_0
    return-void

    .line 120
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 121
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Lorg/json/JSONException;
    move-object v2, v3

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public static updateLocalModelIfNeed(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Lcom/android/systemui/miui/statusbar/ExpandedNotification;
    .param p2, "bgHandler"    # Landroid/os/Handler;

    .prologue
    .line 83
    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->needUpdateLocalModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->getScoreInfo(Landroid/app/Notification;)Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    move-result-object v0

    .line 85
    .local v0, "scoreInfo":Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;
    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;-><init>(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .end local v0    # "scoreInfo":Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;
    :cond_0
    return-void
.end method

.method public static updateRules(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/LocalScoreRule;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/systemui/miui/statusbar/LocalScoreRule;>;>;"
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 250
    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 248
    return-void
.end method
