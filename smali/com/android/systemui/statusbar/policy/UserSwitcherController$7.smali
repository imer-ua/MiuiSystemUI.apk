.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;
.super Landroid/os/AsyncTask;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field final synthetic val$addUsersWhenLocked:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p2, "val$addUsersWhenLocked"    # Z

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->val$addUsersWhenLocked:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 201
    check-cast p1, [Landroid/util/SparseArray;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "params":[Landroid/util/SparseArray;, "[Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    aget-object v28, p1, v4

    .line 203
    .local v28, "bitmaps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v36

    .line 204
    .local v36, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v36, :cond_0

    .line 205
    const/4 v4, 0x0

    return-object v4

    .line 207
    :cond_0
    new-instance v37, Ljava/util/ArrayList;

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v37, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v31

    .line 209
    .local v31, "currentId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v4}, Landroid/os/UserManagerCompat;->canSwitchUsers(Landroid/os/UserManager;)Z

    move-result v9

    .line 210
    .local v9, "canSwitchUsers":Z
    const/16 v33, 0x0

    .line 211
    .local v33, "currentUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    .line 213
    .local v2, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v33    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .local v35, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 214
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v31

    if-ne v0, v4, :cond_3

    const/4 v6, 0x1

    .line 215
    .local v6, "isCurrent":Z
    :goto_1
    if-eqz v6, :cond_2

    .line 216
    move-object/from16 v33, v3

    .line 218
    :cond_2
    if-nez v9, :cond_4

    move/from16 v17, v6

    .line 219
    :goto_2
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 223
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v4, 0x0

    .line 224
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 225
    const/4 v8, 0x0

    .line 223
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .local v2, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    goto :goto_0

    .line 214
    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v6    # "isCurrent":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 218
    .restart local v6    # "isCurrent":Z
    :cond_4
    const/16 v17, 0x1

    .local v17, "switchToEnabled":Z
    goto :goto_2

    .line 226
    .end local v17    # "switchToEnabled":Z
    :cond_5
    invoke-static {v3}, Landroid/content/pm/UserInfoCompat;->supportsSwitchToByUser(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 228
    .local v12, "picture":Landroid/graphics/Bitmap;
    if-nez v12, :cond_6

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 231
    if-eqz v12, :cond_6

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 233
    const v5, 0x90f017b

    .line 232
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 235
    .local v27, "avatarSize":I
    const/4 v4, 0x1

    .line 234
    move/from16 v0, v27

    move/from16 v1, v27

    invoke-static {v12, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 238
    .end local v27    # "avatarSize":I
    :cond_6
    if-eqz v6, :cond_7

    const/16 v34, 0x0

    .line 239
    .local v34, "index":I
    :goto_3
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v13, 0x0

    .line 240
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    move v14, v6

    .line 239
    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 238
    .end local v34    # "index":I
    :cond_7
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v34

    .restart local v34    # "index":I
    goto :goto_3

    .line 246
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "isCurrent":Z
    .end local v12    # "picture":Landroid/graphics/Bitmap;
    .end local v34    # "index":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 247
    const-string/jumbo v5, "no_add_user"

    sget-object v7, Landroid/os/UserHandleCompat;->SYSTEM:Landroid/os/UserHandle;

    .line 246
    invoke-static {v4, v5, v7}, Landroid/os/UserManagerCompat;->hasBaseUserRestriction(Landroid/os/UserManager;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v38, 0x0

    .line 248
    .local v38, "systemCanCreateUsers":Z
    :goto_4
    if-eqz v33, :cond_f

    .line 249
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    if-nez v4, :cond_9

    .line 250
    move-object/from16 v0, v33

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_f

    .line 251
    :cond_9
    move/from16 v32, v38

    .line 252
    :goto_5
    if-eqz v38, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->val$addUsersWhenLocked:Z

    move/from16 v26, v0

    .line 253
    :goto_6
    if-nez v32, :cond_a

    if-eqz v26, :cond_12

    .line 254
    :cond_a
    if-nez v2, :cond_11

    const/16 v29, 0x1

    .line 255
    .local v29, "canCreateGuest":Z
    :goto_7
    if-nez v32, :cond_b

    if-eqz v26, :cond_13

    .line 256
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v30

    .line 257
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->val$addUsersWhenLocked:Z

    if-eqz v4, :cond_14

    const/16 v24, 0x0

    .line 259
    .local v24, "createIsRestricted":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 260
    if-nez v2, :cond_15

    .line 261
    if-eqz v29, :cond_c

    .line 262
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 263
    const/16 v21, 0x1

    const/16 v22, 0x0

    .line 264
    const/16 v23, 0x0

    move-object/from16 v18, v2

    move/from16 v25, v9

    .line 262
    invoke-direct/range {v18 .. v25}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 265
    .restart local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 266
    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_c
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz v30, :cond_d

    .line 275
    new-instance v18, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 276
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v25, v9

    .line 275
    invoke-direct/range {v18 .. v25}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 278
    .local v18, "addUserRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 279
    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v18    # "addUserRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_d
    return-object v37

    .line 246
    .end local v24    # "createIsRestricted":Z
    .end local v29    # "canCreateGuest":Z
    .end local v38    # "systemCanCreateUsers":Z
    :cond_e
    const/16 v38, 0x1

    .restart local v38    # "systemCanCreateUsers":Z
    goto/16 :goto_4

    .line 248
    :cond_f
    const/16 v32, 0x0

    .local v32, "currentUserCanCreateUsers":Z
    goto/16 :goto_5

    .line 252
    .end local v32    # "currentUserCanCreateUsers":Z
    :cond_10
    const/16 v26, 0x0

    .local v26, "anyoneCanCreateUsers":Z
    goto/16 :goto_6

    .line 254
    .end local v26    # "anyoneCanCreateUsers":Z
    :cond_11
    const/16 v29, 0x0

    .restart local v29    # "canCreateGuest":Z
    goto :goto_7

    .line 253
    .end local v29    # "canCreateGuest":Z
    :cond_12
    const/16 v29, 0x0

    .restart local v29    # "canCreateGuest":Z
    goto/16 :goto_7

    .line 255
    :cond_13
    const/16 v30, 0x0

    .local v30, "canCreateUser":Z
    goto :goto_8

    .line 257
    .end local v30    # "canCreateUser":Z
    :cond_14
    const/16 v24, 0x1

    .restart local v24    # "createIsRestricted":Z
    goto :goto_9

    .line 269
    :cond_15
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v4, :cond_16

    const/16 v34, 0x0

    .line 270
    .restart local v34    # "index":I
    :goto_b
    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_a

    .line 269
    .end local v34    # "index":I
    :cond_16
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v34

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userRecords"    # Ljava/lang/Object;

    .prologue
    .line 286
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "userRecords":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "userRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 286
    :cond_0
    return-void
.end method
