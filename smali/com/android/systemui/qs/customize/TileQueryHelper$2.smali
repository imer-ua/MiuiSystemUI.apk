.class Lcom/android/systemui/qs/customize/TileQueryHelper$2;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;->addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field final synthetic val$host:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileQueryHelper;
    .param p2, "val$host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->val$host:Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 134
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x17

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap3(Lcom/android/systemui/qs/customize/TileQueryHelper;Z)V

    .line 136
    return-void

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->val$host:Lcom/android/systemui/qs/QSTileHost;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v14

    .line 139
    .local v14, "params":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 141
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.service.quicksettings.action.QS_TILE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v21

    const/16 v22, 0x0

    .line 140
    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v16

    .line 142
    .local v16, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v20

    const v21, 0x9100038

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 144
    .local v19, "stockTiles":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 145
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 146
    .local v13, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v13, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 153
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 154
    .local v4, "appLabel":Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v17

    .line 155
    .local v17, "spec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v14, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v18

    .line 156
    .local v18, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    if-eqz v18, :cond_2

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v21

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 163
    :cond_3
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v9, v0, Landroid/content/pm/ServiceInfo;->icon:I

    .line 165
    .local v9, "iconId":I
    :goto_1
    if-eqz v9, :cond_6

    invoke-static {v13, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    .line 167
    .local v6, "defalutIcon":Landroid/graphics/drawable/Icon;
    :goto_2
    const/4 v8, 0x0

    .line 168
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 170
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 175
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_3
    const-string/jumbo v20, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 178
    if-eqz v8, :cond_1

    .line 181
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 183
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 184
    .local v12, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-object/from16 v21, v0

    if-eqz v12, :cond_7

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-static {v0, v1, v8, v2, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 164
    .end local v6    # "defalutIcon":Landroid/graphics/drawable/Icon;
    .end local v9    # "iconId":I
    .end local v12    # "label":Ljava/lang/CharSequence;
    :cond_5
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_1

    .line 166
    .restart local v9    # "iconId":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 171
    .restart local v6    # "defalutIcon":Landroid/graphics/drawable/Icon;
    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v7

    .line 172
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "TileQueryHelper"

    const-string/jumbo v21, "Invalid icon"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 184
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "label":Ljava/lang/CharSequence;
    :cond_7
    const-string/jumbo v20, "null"

    goto :goto_4

    .line 187
    .end local v4    # "appLabel":Ljava/lang/CharSequence;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "defalutIcon":Landroid/graphics/drawable/Icon;
    .end local v9    # "iconId":I
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v12    # "label":Ljava/lang/CharSequence;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v17    # "spec":Ljava/lang/String;
    .end local v18    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$2;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap3(Lcom/android/systemui/qs/customize/TileQueryHelper;Z)V

    .line 133
    return-void
.end method
