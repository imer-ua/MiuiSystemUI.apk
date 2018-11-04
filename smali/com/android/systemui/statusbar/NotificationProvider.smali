.class public Lcom/android/systemui/statusbar/NotificationProvider;
.super Landroid/content/ContentProvider;
.source "NotificationProvider.java"


# static fields
.field private static final sMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected mOpenHelper:Lcom/android/systemui/miui/statusbar/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 33
    sget-object v0, Lcom/android/systemui/statusbar/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "keyguard.notification"

    const-string/jumbo v2, "notifications"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    sget-object v0, Lcom/android/systemui/statusbar/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "keyguard.notification"

    const-string/jumbo v2, "notifications/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lcom/android/systemui/statusbar/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "keyguard.notification"

    const-string/jumbo v2, "app_corner"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, "sqliteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationProvider;->mOpenHelper:Lcom/android/systemui/miui/statusbar/DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    .end local v1    # "sqliteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v1

    .line 137
    .restart local v1    # "sqliteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private parseSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationProvider;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 110
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 112
    .local v0, "count":I
    sget-object v2, Lcom/android/systemui/statusbar/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 117
    :goto_0
    return v0

    .line 114
    :pswitch_0
    const-string/jumbo v2, "notifications"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationProvider;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 92
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 93
    return-object v4

    .line 96
    :cond_0
    const-wide/16 v2, -0x1

    .line 97
    .local v2, "rowId":J
    sget-object v1, Lcom/android/systemui/statusbar/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 104
    :goto_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 99
    :pswitch_0
    const-string/jumbo v1, "notifications"

    invoke-virtual {v0, v1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/miui/statusbar/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationProvider;->mOpenHelper:Lcom/android/systemui/miui/statusbar/DatabaseHelper;

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationProvider;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 48
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 49
    :cond_0
    const/4 v9, 0x0

    .line 50
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 51
    .local v11, "id":Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/statusbar/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 74
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "id":Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 77
    :cond_1
    return-object v9

    .line 53
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "id":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v2, "notifications"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 56
    .local v9, "cursor":Landroid/database/Cursor;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "id":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 57
    .local v11, "id":Ljava/lang/String;
    const-string/jumbo v2, "notifications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 58
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationProvider;->parseSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    .line 57
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 61
    .local v9, "cursor":Landroid/database/Cursor;
    .local v11, "id":Ljava/lang/String;
    :pswitch_2
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 62
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 65
    :cond_3
    new-instance v12, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "show_corner"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v12, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 66
    .local v12, "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v10, v2, :cond_5

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p2, v10

    const-string/jumbo v4, "_message"

    invoke-static {v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v13, 0x1

    .line 68
    .local v13, "showCorner":I
    :goto_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 66
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 67
    .end local v13    # "showCorner":I
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "showCorner":I
    goto :goto_2

    .line 71
    .end local v13    # "showCorner":I
    :cond_5
    move-object v9, v12

    .line 72
    .local v9, "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationProvider;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 123
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, "count":I
    sget-object v2, Lcom/android/systemui/statusbar/NotificationProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 130
    :goto_0
    return v0

    .line 127
    :pswitch_0
    const-string/jumbo v2, "notifications"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
