.class public Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BluetoothDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BluetoothTile;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateItems()V
    .locals 14

    .prologue
    const v13, 0x9020144

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 260
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v9, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 262
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 263
    const v10, 0x9100140

    .line 262
    invoke-virtual {v9, v13, v10}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 270
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSDetailItems$Item;>;"
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v5

    .line 272
    .local v5, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    if-eqz v5, :cond_4

    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "connectedDevices":I
    const/4 v2, 0x0

    .line 275
    .local v2, "count":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "device$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 276
    .local v3, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBondState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    .line 277
    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v6}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 278
    .local v6, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    const v9, 0x902014d

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 279
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 280
    iput-object v3, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 281
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 282
    .local v0, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_3

    .line 283
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 284
    invoke-virtual {v0, v12}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v9

    .line 283
    if-eqz v9, :cond_6

    .line 285
    :cond_2
    const v9, 0x9020147

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    .line 309
    :cond_3
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getMaxConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v8

    .line 310
    .local v8, "state":I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 311
    const v9, 0x9020142

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    .line 312
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x9100165

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 313
    iput-boolean v12, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 314
    invoke-virtual {v7, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    .line 323
    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/16 v9, 0x14

    if-ne v2, v9, :cond_1

    .line 328
    .end local v0    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v1    # "connectedDevices":I
    .end local v2    # "count":I
    .end local v3    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v4    # "device$iterator":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    .end local v8    # "state":I
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v10, v9}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 259
    return-void

    .line 265
    .end local v5    # "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSDetailItems$Item;>;"
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 266
    const v10, 0x9100318

    .line 265
    invoke-virtual {v9, v13, v10}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    .line 267
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v9, v11}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 268
    return-void

    .line 287
    .restart local v0    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .restart local v1    # "connectedDevices":I
    .restart local v2    # "count":I
    .restart local v3    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .restart local v4    # "device$iterator":Ljava/util/Iterator;
    .restart local v5    # "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    .restart local v6    # "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    .restart local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSDetailItems$Item;>;"
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 304
    const v9, 0x9020146

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    goto :goto_0

    .line 289
    :sswitch_0
    const v9, 0x9020149

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    goto :goto_0

    .line 292
    :sswitch_1
    const v9, 0x9020145

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    goto :goto_0

    .line 295
    :sswitch_2
    const v9, 0x9020148

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    goto :goto_0

    .line 298
    :sswitch_3
    const v9, 0x902014a

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    goto :goto_0

    .line 301
    :sswitch_4
    const v9, 0x902014b

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    goto :goto_0

    .line 316
    .restart local v8    # "state":I
    :cond_7
    if-ne v8, v12, :cond_8

    .line 317
    const v9, 0x9020143

    iput v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    .line 318
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x9100166

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 319
    invoke-virtual {v7, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 321
    :cond_8
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x300 -> :sswitch_4
        0x600 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 245
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v1, "Bluetooth"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 235
    const/16 v0, 0x96

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x910013d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 218
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 333
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 335
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v1

    if-nez v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 332
    :cond_2
    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/qs/QSDetailItems$Item;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 345
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_2

    .line 346
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->disconnect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 342
    :cond_2
    return-void
.end method

.method public setToggleState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9a

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    .line 228
    return-void
.end method
