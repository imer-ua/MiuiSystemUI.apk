.class public Lcom/android/systemui/qs/QSFooterDataUsage;
.super Landroid/widget/FrameLayout;
.source "QSFooterDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFooterDataUsage$1;,
        Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;,
        Lcom/android/systemui/qs/QSFooterDataUsage$QueryDataUsageHandler;
    }
.end annotation


# instance fields
.field private mAvailable:Z

.field private mBgHandler:Landroid/os/Handler;

.field private mDataUsage:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIntent1:Landroid/content/Intent;

.field private mIntent2:Landroid/content/Intent;

.field private mNetworkUri:Landroid/net/Uri;

.field private mPieImage:Landroid/widget/ImageView;

.field private mPurchase:Landroid/widget/TextView;

.field private mQSContainer:Lcom/android/systemui/qs/QSContainerImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFooterDataUsage;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mIntent1:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFooterDataUsage;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mIntent2:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSFooterDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterDataUsage;->queryDataUsage()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSFooterDataUsage;Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;)V
    .locals 0
    .param p1, "usageInfo"    # Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterDataUsage;->setDataUsage(Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/android/systemui/qs/QSFooterDataUsage$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooterDataUsage$1;-><init>(Lcom/android/systemui/qs/QSFooterDataUsage;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mHandler:Landroid/os/Handler;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mAvailable:Z

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterDataUsage;->initNetworkAssistantProviderUri()V

    .line 56
    return-void
.end method

.method private initNetworkAssistantProviderUri()V
    .locals 1

    .prologue
    .line 195
    const-string/jumbo v0, "content://com.miui.networkassistant.provider/datausage_noti_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mNetworkUri:Landroid/net/Uri;

    .line 194
    return-void
.end method

.method private queryDataUsage()V
    .locals 20

    .prologue
    .line 200
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->sBootCompleted:Z

    if-nez v2, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    new-instance v19, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;

    invoke-direct/range {v19 .. v20}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;-><init>(Lcom/android/systemui/qs/QSFooterDataUsage;)V

    .line 207
    .local v19, "usageInfo":Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;
    const/4 v10, 0x0

    .line 209
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSFooterDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/qs/QSFooterDataUsage;->mNetworkUri:Landroid/net/Uri;

    .line 210
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 209
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 211
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    const-string/jumbo v2, "text1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 213
    .local v17, "text1":Ljava/lang/String;
    const-string/jumbo v2, "text2"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 214
    .local v18, "text2":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    const-string/jumbo v2, "QSFooterDataUsage"

    const-string/jumbo v3, "queryDataUsage: cannot find text1, text2."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    if-eqz v10, :cond_1

    .line 260
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    return-void

    .line 220
    :cond_2
    :try_start_1
    const-string/jumbo v2, "icon"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 221
    .local v12, "icon":Ljava/lang/String;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 222
    .local v14, "iconUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSFooterDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v14, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 223
    .local v15, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v15}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 224
    .local v13, "iconImage":Landroid/graphics/Bitmap;
    if-nez v13, :cond_4

    .line 225
    const-string/jumbo v2, "QSFooterDataUsage"

    const-string/jumbo v3, "queryDataUsage: cannot load icon."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    if-eqz v10, :cond_3

    .line 260
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_3
    return-void

    .line 230
    :cond_4
    :try_start_2
    const-string/jumbo v2, "action1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 231
    .local v8, "action1":Ljava/lang/String;
    const-string/jumbo v2, "action2"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 232
    .local v9, "action2":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v8, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSFooterDataUsage;->mIntent1:Landroid/content/Intent;

    .line 233
    const/4 v2, 0x1

    invoke-static {v9, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSFooterDataUsage;->mIntent2:Landroid/content/Intent;

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSFooterDataUsage;->mIntent1:Landroid/content/Intent;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSFooterDataUsage;->mIntent2:Landroid/content/Intent;

    if-nez v2, :cond_6

    .line 235
    const-string/jumbo v2, "QSFooterDataUsage"

    const-string/jumbo v3, "queryDataUsage: cannot find action1, action2."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    if-eqz v10, :cond_5

    .line 260
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_5
    return-void

    .line 240
    :cond_6
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->setDataUsageAvailable(Z)V

    .line 242
    if-eqz v17, :cond_8

    const-string/jumbo v2, "&nbsp;"

    const-string/jumbo v3, "&ensp;"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    :goto_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->setText1(Ljava/lang/CharSequence;)V

    .line 243
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->setText2(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->setIconImage(Landroid/graphics/Bitmap;)V

    .line 250
    .end local v8    # "action1":Ljava/lang/String;
    .end local v9    # "action2":Ljava/lang/String;
    .end local v12    # "icon":Ljava/lang/String;
    .end local v13    # "iconImage":Landroid/graphics/Bitmap;
    .end local v14    # "iconUri":Landroid/net/Uri;
    .end local v15    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "text1":Ljava/lang/String;
    .end local v18    # "text2":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSFooterDataUsage;->mHandler:Landroid/os/Handler;

    const v3, 0x186a0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 252
    .local v16, "refresh":Landroid/os/Message;
    const v2, 0x186a0

    move-object/from16 v0, v16

    iput v2, v0, Landroid/os/Message;->what:I

    .line 253
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSFooterDataUsage;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    if-eqz v10, :cond_7

    .line 260
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 198
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "refresh":Landroid/os/Message;
    :cond_7
    :goto_2
    return-void

    .line 242
    .restart local v8    # "action1":Ljava/lang/String;
    .restart local v9    # "action2":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "icon":Ljava/lang/String;
    .restart local v13    # "iconImage":Landroid/graphics/Bitmap;
    .restart local v14    # "iconUri":Landroid/net/Uri;
    .restart local v15    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "text1":Ljava/lang/String;
    .restart local v18    # "text2":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 248
    .end local v8    # "action1":Ljava/lang/String;
    .end local v9    # "action2":Ljava/lang/String;
    .end local v12    # "icon":Ljava/lang/String;
    .end local v13    # "iconImage":Landroid/graphics/Bitmap;
    .end local v14    # "iconUri":Landroid/net/Uri;
    .end local v15    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "text1":Ljava/lang/String;
    .end local v18    # "text2":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->setDataUsageAvailable(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 255
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 256
    .local v11, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v2, "QSFooterDataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    if-eqz v10, :cond_7

    .line 260
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 258
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 259
    if-eqz v10, :cond_a

    .line 260
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_a
    throw v2
.end method

.method private setDataUsage(Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;)V
    .locals 3
    .param p1, "usageInfo"    # Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->isDataUsageAvailable()Z

    move-result v0

    .line 105
    .local v0, "avaliable":Z
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mPieImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->getIconImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mDataUsage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->getText1()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mPurchase:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->getText2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mAvailable:Z

    if-eq v0, v1, :cond_1

    .line 111
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mAvailable:Z

    .line 112
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mQSContainer:Lcom/android/systemui/qs/QSContainerImpl;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mQSContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImpl;->updateFooter()V

    .line 103
    :cond_1
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mAvailable:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 64
    const v0, 0x9120248

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterDataUsage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mPieImage:Landroid/widget/ImageView;

    .line 65
    const v0, 0x9120249

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterDataUsage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mDataUsage:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mDataUsage:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/QSFooterDataUsage$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterDataUsage$2;-><init>(Lcom/android/systemui/qs/QSFooterDataUsage;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x912024a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterDataUsage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mPurchase:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mPurchase:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/QSFooterDataUsage$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterDataUsage$3;-><init>(Lcom/android/systemui/qs/QSFooterDataUsage;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mPurchase:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    new-instance v1, Lcom/android/systemui/qs/QSFooterDataUsage$QueryDataUsageHandler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/QSFooterDataUsage$QueryDataUsageHandler;-><init>(Lcom/android/systemui/qs/QSFooterDataUsage;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mBgHandler:Landroid/os/Handler;

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterDataUsage;->updateDataUsageInfo()V

    .line 62
    return-void
.end method

.method public setQSContainer(Lcom/android/systemui/qs/QSContainerImpl;)V
    .locals 0
    .param p1, "container"    # Lcom/android/systemui/qs/QSContainerImpl;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mQSContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 99
    return-void
.end method

.method public updateDataUsageInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    :cond_0
    return-void
.end method
