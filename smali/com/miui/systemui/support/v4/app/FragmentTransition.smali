.class Lcom/miui/systemui/support/v4/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static synthetic -wrap0(Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1
    .param p0, "inSharedElements"    # Lcom/miui/systemui/support/v4/util/ArrayMap;
    .param p1, "fragments"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->getInEpicenterView(Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;)Lcom/miui/systemui/support/v4/util/ArrayMap;
    .locals 1
    .param p0, "nameOverrides"    # Lcom/miui/systemui/support/v4/util/ArrayMap;
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "fragments"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->captureInSharedElements(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;)Lcom/miui/systemui/support/v4/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "sharedElements"    # Ljava/util/ArrayList;
    .param p3, "nonExistentView"    # Landroid/view/View;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLcom/miui/systemui/support/v4/util/ArrayMap;Z)V
    .locals 0
    .param p0, "inFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p1, "outFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .param p3, "sharedElements"    # Lcom/miui/systemui/support/v4/util/ArrayMap;
    .param p4, "isStart"    # Z

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLcom/miui/systemui/support/v4/util/ArrayMap;Z)V

    return-void
.end method

.method static synthetic -wrap4(Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "views"    # Ljava/util/ArrayList;
    .param p1, "visibility"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/systemui/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    .line 37
    return-void

    .line 42
    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 566
    invoke-virtual {p1, v0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 567
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 564
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Lcom/miui/systemui/support/v4/app/BackStackRecord;Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 14
    .param p0, "transaction"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .param p1, "op"    # Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1036
    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v2, p1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->fragment:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1037
    .local v2, "fragment":Lcom/miui/systemui/support/v4/app/Fragment;
    if-nez v2, :cond_0

    .line 1038
    return-void

    .line 1040
    :cond_0
    iget v8, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mContainerId:I

    .line 1041
    .local v8, "containerId":I
    if-nez v8, :cond_1

    .line 1042
    return-void

    .line 1044
    :cond_1
    if-eqz p3, :cond_8

    sget-object v3, Lcom/miui/systemui/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    iget v4, p1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    aget v7, v3, v4

    .line 1045
    .local v7, "command":I
    :goto_0
    const/4 v11, 0x0

    .line 1046
    .local v11, "setLastIn":Z
    const/4 v13, 0x0

    .line 1047
    .local v13, "wasRemoved":Z
    const/4 v10, 0x0

    .line 1048
    .local v10, "setFirstOut":Z
    const/4 v12, 0x0

    .line 1049
    .local v12, "wasAdded":Z
    packed-switch v7, :pswitch_data_0

    .line 1087
    .end local v10    # "setFirstOut":Z
    .end local v11    # "setLastIn":Z
    :goto_1
    :pswitch_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .line 1088
    .local v9, "containerTransition":Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v11, :cond_2

    .line 1090
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->ensureContainer(Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v9

    .line 1091
    iput-object v2, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1092
    move/from16 v0, p3

    iput-boolean v0, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1093
    iput-object p0, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 1095
    :cond_2
    if-nez p4, :cond_4

    if-eqz v12, :cond_4

    .line 1096
    if-eqz v9, :cond_3

    iget-object v3, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

    if-ne v3, v2, :cond_3

    .line 1097
    const/4 v3, 0x0

    iput-object v3, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1104
    :cond_3
    iget-object v1, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    .line 1105
    .local v1, "manager":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    iget v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mState:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    iget v3, v1, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4

    .line 1106
    iget-boolean v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-eqz v3, :cond_18

    .line 1111
    .end local v1    # "manager":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    :cond_4
    :goto_2
    if-eqz v10, :cond_6

    if-eqz v9, :cond_5

    iget-object v3, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

    if-nez v3, :cond_6

    .line 1113
    :cond_5
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->ensureContainer(Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v9

    .line 1114
    iput-object v2, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1115
    move/from16 v0, p3

    iput-boolean v0, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1116
    iput-object p0, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 1119
    :cond_6
    if-nez p4, :cond_7

    if-eqz v13, :cond_7

    .line 1120
    if-eqz v9, :cond_7

    iget-object v3, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/miui/systemui/support/v4/app/Fragment;

    if-ne v3, v2, :cond_7

    .line 1121
    const/4 v3, 0x0

    iput-object v3, v9, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 1035
    :cond_7
    return-void

    .line 1044
    .end local v7    # "command":I
    .end local v9    # "containerTransition":Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .end local v12    # "wasAdded":Z
    .end local v13    # "wasRemoved":Z
    :cond_8
    iget v7, p1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;->cmd:I

    goto :goto_0

    .line 1051
    .restart local v7    # "command":I
    .restart local v10    # "setFirstOut":Z
    .restart local v11    # "setLastIn":Z
    .restart local v12    # "wasAdded":Z
    .restart local v13    # "wasRemoved":Z
    :pswitch_1
    if-eqz p4, :cond_b

    .line 1052
    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_9

    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_a

    :cond_9
    const/4 v11, 0x0

    .line 1056
    .end local v11    # "setLastIn":Z
    :goto_3
    const/4 v12, 0x1

    .line 1057
    goto :goto_1

    .line 1052
    .restart local v11    # "setLastIn":Z
    :cond_a
    iget-boolean v11, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    .local v11, "setLastIn":Z
    goto :goto_3

    .line 1054
    .local v11, "setLastIn":Z
    :cond_b
    iget-boolean v11, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    .local v11, "setLastIn":Z
    goto :goto_3

    .line 1060
    .local v11, "setLastIn":Z
    :pswitch_2
    if-eqz p4, :cond_c

    .line 1061
    iget-boolean v11, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1065
    .end local v11    # "setLastIn":Z
    :goto_4
    const/4 v12, 0x1

    .line 1066
    goto :goto_1

    .line 1063
    .restart local v11    # "setLastIn":Z
    :cond_c
    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_d

    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_e

    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    :cond_e
    const/4 v11, 0x1

    goto :goto_4

    .line 1068
    :pswitch_3
    if-eqz p4, :cond_10

    .line 1069
    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_f

    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_f

    iget-boolean v10, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    .line 1073
    .end local v10    # "setFirstOut":Z
    :goto_5
    const/4 v13, 0x1

    .line 1074
    goto/16 :goto_1

    .line 1069
    .restart local v10    # "setFirstOut":Z
    :cond_f
    const/4 v10, 0x0

    goto :goto_5

    .line 1071
    :cond_10
    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_11

    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_12

    :cond_11
    const/4 v10, 0x0

    goto :goto_5

    :cond_12
    const/4 v10, 0x1

    goto :goto_5

    .line 1077
    :pswitch_4
    if-eqz p4, :cond_15

    .line 1078
    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_14

    iget-object v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_14

    .line 1079
    iget-object v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_14

    .line 1080
    iget v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_13

    const/4 v10, 0x1

    .line 1084
    :goto_6
    const/4 v13, 0x1

    .line 1085
    goto/16 :goto_1

    .line 1080
    :cond_13
    const/4 v10, 0x0

    goto :goto_6

    .line 1078
    :cond_14
    const/4 v10, 0x0

    goto :goto_6

    .line 1082
    :cond_15
    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_16

    iget-boolean v3, v2, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_17

    :cond_16
    const/4 v10, 0x0

    goto :goto_6

    :cond_17
    const/4 v10, 0x1

    goto :goto_6

    .line 1107
    .end local v10    # "setFirstOut":Z
    .end local v11    # "setLastIn":Z
    .restart local v1    # "manager":Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .restart local v9    # "containerTransition":Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    :cond_18
    invoke-virtual {v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->makeActive(Lcom/miui/systemui/support/v4/app/Fragment;)V

    .line 1108
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/miui/systemui/support/v4/app/Fragment;IIIZ)V

    goto/16 :goto_2

    .line 1049
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static calculateFragments(Lcom/miui/systemui/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 993
    .local v0, "numOps":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 994
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 995
    .local v1, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v3, p2}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->addToFirstInLastOut(Lcom/miui/systemui/support/v4/app/BackStackRecord;Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 993
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 991
    .end local v1    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/miui/systemui/support/v4/util/ArrayMap;
    .locals 12
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/miui/systemui/support/v4/util/ArrayMap;

    invoke-direct {v2}, Lcom/miui/systemui/support/v4/util/ArrayMap;-><init>()V

    .line 144
    .local v2, "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v6, p4, -0x1

    .local v6, "recordNum":I
    :goto_0
    if-lt v6, p3, :cond_4

    .line 145
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 146
    .local v5, "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    invoke-virtual {v5, p0}, Lcom/miui/systemui/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 144
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 150
    .local v1, "isPop":Z
    iget-object v11, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    .line 151
    iget-object v11, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 154
    .local v3, "numSharedElements":I
    if-eqz v1, :cond_2

    .line 155
    iget-object v10, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 156
    .local v10, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 161
    .local v8, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 162
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 163
    .local v7, "sourceName":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 164
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v2, v9}, Lcom/miui/systemui/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 165
    .local v4, "previousTarget":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 166
    invoke-virtual {v2, v7, v4}, Lcom/miui/systemui/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    .end local v0    # "i":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 159
    .restart local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .restart local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 168
    .restart local v0    # "i":I
    .restart local v4    # "previousTarget":Ljava/lang/String;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v9    # "targetName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v7, v9}, Lcom/miui/systemui/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 173
    .end local v0    # "i":I
    .end local v1    # "isPop":Z
    .end local v3    # "numSharedElements":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v5    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-object v2
.end method

.method public static calculatePopFragments(Lcom/miui/systemui/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p0, "transaction"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mManager:Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;

    iget-object v3, v3, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1010
    return-void

    .line 1012
    :cond_0
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1013
    .local v0, "numOps":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "opNum":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1014
    iget-object v3, p0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;

    .line 1015
    .local v1, "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    const/4 v3, 0x1

    invoke-static {p0, v1, p1, v3, p2}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->addToFirstInLastOut(Lcom/miui/systemui/support/v4/app/BackStackRecord;Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1013
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1008
    .end local v1    # "op":Lcom/miui/systemui/support/v4/app/BackStackRecord$Op;
    :cond_1
    return-void
.end method

.method private static callSharedElementStartEnd(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLcom/miui/systemui/support/v4/util/ArrayMap;Z)V
    .locals 7
    .param p0, "inFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p1, "outFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            "Z",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "sharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 896
    if-eqz p2, :cond_0

    .line 897
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getEnterTransitionCallback()Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    move-result-object v3

    .line 899
    .local v3, "sharedElementCallback":Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    :goto_0
    if-eqz v3, :cond_3

    .line 900
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    const/4 v0, 0x0

    .line 903
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 904
    invoke-virtual {p3, v1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-virtual {p3, v1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 898
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sharedElementCallback":Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getEnterTransitionCallback()Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    move-result-object v3

    goto :goto_0

    .line 902
    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "sharedElementCallback":Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    invoke-virtual {p3}, Lcom/miui/systemui/support/v4/util/ArrayMap;->size()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_1

    .line 907
    .restart local v1    # "i":I
    :cond_2
    if-eqz p4, :cond_4

    .line 908
    invoke-virtual {v3, v2, v4, v6}, Lcom/miui/systemui/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 895
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    :goto_3
    return-void

    .line 910
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    invoke-virtual {v3, v2, v4, v6}, Lcom/miui/systemui/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method private static captureInSharedElements(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;)Lcom/miui/systemui/support/v4/util/ArrayMap;
    .locals 12
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "fragments"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 758
    iget-object v2, p2, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 759
    .local v2, "inFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 760
    .local v0, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    if-nez p1, :cond_1

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->clear()V

    .line 762
    return-object v11

    .line 760
    :cond_1
    if-eqz v0, :cond_0

    .line 764
    new-instance v3, Lcom/miui/systemui/support/v4/util/ArrayMap;

    invoke-direct {v3}, Lcom/miui/systemui/support/v4/util/ArrayMap;-><init>()V

    .line 765
    .local v3, "inSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 769
    iget-object v4, p2, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 770
    .local v4, "inTransaction":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    iget-boolean v10, p2, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v10, :cond_4

    .line 771
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/Fragment;->getExitTransitionCallback()Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    move-result-object v8

    .line 772
    .local v8, "sharedElementCallback":Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    iget-object v7, v4, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 778
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v7, :cond_2

    .line 779
    invoke-virtual {v3, v7}, Lcom/miui/systemui/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 781
    :cond_2
    if-eqz v8, :cond_6

    .line 782
    invoke-virtual {v8, v7, v3}, Lcom/miui/systemui/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 783
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_7

    .line 784
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 785
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/miui/systemui/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 786
    .local v9, "view":Landroid/view/View;
    if-nez v9, :cond_5

    .line 787
    invoke-static {p0, v6}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->findKeyForValue(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 789
    invoke-virtual {p0, v5}, Lcom/miui/systemui/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 774
    .end local v1    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "sharedElementCallback":Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    .end local v9    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v2}, Lcom/miui/systemui/support/v4/app/Fragment;->getEnterTransitionCallback()Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    move-result-object v8

    .line 775
    .restart local v8    # "sharedElementCallback":Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    iget-object v7, v4, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 791
    .restart local v1    # "i":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 792
    invoke-static {p0, v6}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->findKeyForValue(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 793
    .restart local v5    # "key":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 794
    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lcom/miui/systemui/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 799
    .end local v1    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    :cond_6
    invoke-static {p0, v3}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->retainValues(Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/util/ArrayMap;)V

    .line 801
    :cond_7
    return-object v3
.end method

.method private static captureOutSharedElements(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;)Lcom/miui/systemui/support/v4/util/ArrayMap;
    .locals 11
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "fragments"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 702
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p1, :cond_1

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->clear()V

    .line 704
    return-object v10

    .line 706
    :cond_1
    iget-object v3, p2, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 707
    .local v3, "outFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    new-instance v4, Lcom/miui/systemui/support/v4/util/ArrayMap;

    invoke-direct {v4}, Lcom/miui/systemui/support/v4/util/ArrayMap;-><init>()V

    .line 708
    .local v4, "outSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 712
    iget-object v5, p2, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 713
    .local v5, "outTransaction":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    iget-boolean v9, p2, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v9, :cond_3

    .line 714
    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getEnterTransitionCallback()Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    move-result-object v6

    .line 715
    .local v6, "sharedElementCallback":Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    iget-object v2, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 721
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v4, v2}, Lcom/miui/systemui/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 722
    if-eqz v6, :cond_5

    .line 723
    invoke-virtual {v6, v2, v4}, Lcom/miui/systemui/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 724
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_6

    .line 725
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 726
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 727
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_4

    .line 728
    invoke-virtual {p0, v1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 717
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sharedElementCallback":Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getExitTransitionCallback()Lcom/miui/systemui/support/v4/app/SharedElementCallback;

    move-result-object v6

    .line 718
    .restart local v6    # "sharedElementCallback":Lcom/miui/systemui/support/v4/app/SharedElementCallback;
    iget-object v2, v5, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 729
    .restart local v0    # "i":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v8    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 730
    invoke-virtual {p0, v1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 731
    .local v7, "targetValue":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lcom/miui/systemui/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 735
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v7    # "targetValue":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {v4}, Lcom/miui/systemui/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/miui/systemui/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 737
    :cond_6
    return-object v4
.end method

.method private static configureEnteringExitingViews(Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "fragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 918
    .local p2, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 919
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_2

    .line 920
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 922
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 923
    invoke-static {v1, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 925
    :cond_0
    if-eqz p2, :cond_1

    .line 926
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 928
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 929
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    invoke-static {p0, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 933
    .end local v0    # "root":Landroid/view/View;
    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    return-object v1
.end method

.method private static configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p6, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 608
    .local p2, "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 609
    .local v11, "inFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 611
    .local v12, "outFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v11, :cond_0

    if-nez v12, :cond_1

    .line 612
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 615
    :cond_1
    move-object/from16 v0, p3

    iget-boolean v13, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 616
    .local v13, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemui/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v20, 0x0

    .line 619
    .local v20, "sharedElementTransition":Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->captureOutSharedElements(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;)Lcom/miui/systemui/support/v4/util/ArrayMap;

    move-result-object v18

    .line 622
    .local v18, "outSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemui/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 623
    const/16 v20, 0x0

    .line 628
    .end local v20    # "sharedElementTransition":Ljava/lang/Object;
    :goto_1
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    if-nez v20, :cond_4

    .line 630
    const/4 v5, 0x0

    return-object v5

    .line 617
    .end local v18    # "outSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_2
    invoke-static {v11, v12, v13}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->getSharedElementTransition(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    goto :goto_0

    .line 625
    .restart local v18    # "outSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v20    # "sharedElementTransition":Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lcom/miui/systemui/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 633
    .end local v20    # "sharedElementTransition":Ljava/lang/Object;
    :cond_4
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v11, v12, v13, v0, v5}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLcom/miui/systemui/support/v4/util/ArrayMap;Z)V

    .line 636
    if-eqz v20, :cond_6

    .line 637
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 638
    .local v16, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 640
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v17, v0

    .line 641
    .local v17, "outIsPop":Z
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    move-object/from16 v19, v0

    .line 642
    .local v19, "outTransaction":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    move-object/from16 v0, v20

    move-object/from16 v1, p7

    move-object/from16 v2, v18

    move/from16 v3, v17

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/systemui/support/v4/util/ArrayMap;ZLcom/miui/systemui/support/v4/app/BackStackRecord;)V

    .line 644
    if-eqz p6, :cond_5

    .line 645
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 652
    .end local v16    # "inEpicenter":Landroid/graphics/Rect;
    .end local v17    # "outIsPop":Z
    .end local v19    # "outTransaction":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_5
    :goto_2
    move-object/from16 v7, v20

    .line 653
    .local v7, "finalSharedElementTransition":Ljava/lang/Object;
    new-instance v5, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p6

    invoke-direct/range {v5 .. v16}, Lcom/miui/systemui/support/v4/app/FragmentTransition$4;-><init>(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/miui/systemui/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/miui/systemui/support/v4/app/OneShotPreDrawListener;

    .line 681
    return-object v20

    .line 648
    .end local v7    # "finalSharedElementTransition":Ljava/lang/Object;
    :cond_6
    const/16 v16, 0x0

    .local v16, "inEpicenter":Landroid/graphics/Rect;
    goto :goto_2
.end method

.method private static configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p6, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 480
    .local v3, "inFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

    .line 481
    .local v4, "outFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    .line 482
    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_0
    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    .line 485
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 488
    :cond_2
    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 489
    .local v5, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemui/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v12, 0x0

    .line 492
    .local v12, "sharedElementTransition":Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->captureOutSharedElements(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;)Lcom/miui/systemui/support/v4/util/ArrayMap;

    move-result-object v10

    .line 495
    .local v10, "outSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->captureInSharedElements(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;)Lcom/miui/systemui/support/v4/util/ArrayMap;

    move-result-object v6

    .line 498
    .local v6, "inSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemui/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 499
    const/4 v12, 0x0

    .line 500
    if-eqz v10, :cond_3

    .line 501
    invoke-virtual {v10}, Lcom/miui/systemui/support/v4/util/ArrayMap;->clear()V

    .line 503
    :cond_3
    if-eqz v6, :cond_4

    .line 504
    invoke-virtual {v6}, Lcom/miui/systemui/support/v4/util/ArrayMap;->clear()V

    .line 513
    .end local v12    # "sharedElementTransition":Ljava/lang/Object;
    :cond_4
    :goto_1
    if-nez p6, :cond_7

    if-nez p7, :cond_7

    if-nez v12, :cond_7

    .line 515
    const/4 v2, 0x0

    return-object v2

    .line 490
    .end local v6    # "inSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v10    # "outSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_5
    invoke-static {v3, v4, v5}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->getSharedElementTransition(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    goto :goto_0

    .line 508
    .restart local v6    # "inSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v10    # "outSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v12    # "sharedElementTransition":Ljava/lang/Object;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemui/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 507
    move-object/from16 v0, p4

    invoke-static {v0, v10, v2}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Lcom/miui/systemui/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 509
    move-object/from16 v0, p5

    invoke-static {v0, v6, v2}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    goto :goto_1

    .line 518
    .end local v12    # "sharedElementTransition":Ljava/lang/Object;
    :cond_7
    const/4 v2, 0x1

    invoke-static {v3, v4, v5, v10, v2}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLcom/miui/systemui/support/v4/util/ArrayMap;Z)V

    .line 522
    if-eqz v12, :cond_9

    .line 523
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    move-object/from16 v0, p4

    invoke-static {v12, p1, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 526
    move-object/from16 v0, p3

    iget-boolean v9, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 527
    .local v9, "outIsPop":Z
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 528
    .local v11, "outTransaction":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    move-object/from16 v0, p7

    invoke-static {v12, v0, v10, v9, v11}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/systemui/support/v4/util/ArrayMap;ZLcom/miui/systemui/support/v4/app/BackStackRecord;)V

    .line 530
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 531
    .local v8, "epicenter":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {v6, v0, v1, v5}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->getInEpicenterView(Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v7

    .line 533
    .local v7, "epicenterView":Landroid/view/View;
    if-eqz v7, :cond_8

    .line 534
    move-object/from16 v0, p6

    invoke-static {v0, v8}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 541
    .end local v7    # "epicenterView":Landroid/view/View;
    .end local v8    # "epicenter":Landroid/graphics/Rect;
    .end local v9    # "outIsPop":Z
    .end local v11    # "outTransaction":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_8
    :goto_2
    new-instance v2, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;

    invoke-direct/range {v2 .. v8}, Lcom/miui/systemui/support/v4/app/FragmentTransition$3;-><init>(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;ZLcom/miui/systemui/support/v4/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v2}, Lcom/miui/systemui/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/miui/systemui/support/v4/app/OneShotPreDrawListener;

    .line 551
    return-object v12

    .line 537
    :cond_9
    const/4 v8, 0x0

    .line 538
    .local v8, "epicenter":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, "epicenterView":Landroid/view/View;
    goto :goto_2
.end method

.method private static configureTransitionsOrdered(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;ILcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;)V
    .locals 27
    .param p0, "fragmentManager"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;",
            "I",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p4, "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 291
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 294
    :cond_0
    if-nez v2, :cond_1

    .line 295
    return-void

    .line 297
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/miui/systemui/support/v4/app/Fragment;

    move-object/from16 v17, v0

    .line 298
    .local v17, "inFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

    move-object/from16 v25, v0

    .line 299
    .local v25, "outFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v24, v0

    .line 300
    .local v24, "inIsPop":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v26, v0

    .line 302
    .local v26, "outIsPop":Z
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->getEnterTransition(Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 303
    .local v8, "enterTransition":Ljava/lang/Object;
    invoke-static/range {v25 .. v26}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->getExitTransition(Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 305
    .local v9, "exitTransition":Ljava/lang/Object;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 308
    invoke-static/range {v2 .. v9}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 312
    .local v15, "sharedElementTransition":Ljava/lang/Object;
    if-nez v8, :cond_2

    if-nez v15, :cond_2

    .line 313
    if-nez v9, :cond_2

    .line 314
    return-void

    .line 317
    :cond_2
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    .line 320
    .local v14, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 321
    :cond_3
    const/4 v9, 0x0

    .line 326
    .end local v9    # "exitTransition":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 329
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 328
    move-object/from16 v0, v17

    invoke-static {v8, v9, v15, v0, v3}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    .line 331
    .local v10, "transition":Ljava/lang/Object;
    if-eqz v10, :cond_5

    .line 332
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    .line 333
    invoke-static/range {v10 .. v16}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v16, v2

    move-object/from16 v18, p3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    .line 336
    invoke-static/range {v16 .. v23}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 338
    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 341
    invoke-static {v2, v10}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 342
    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 289
    .end local v12    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return-void
.end method

.method private static configureTransitionsReordered(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;ILcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;)V
    .locals 22
    .param p0, "fragmentManager"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;",
            "I",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p4, "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 196
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    invoke-virtual {v3}, Lcom/miui/systemui/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mContainer:Lcom/miui/systemui/support/v4/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/miui/systemui/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 199
    :cond_0
    if-nez v2, :cond_1

    .line 200
    return-void

    .line 202
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Lcom/miui/systemui/support/v4/app/Fragment;

    move-object/from16 v17, v0

    .line 203
    .local v17, "inFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

    move-object/from16 v20, v0

    .line 204
    .local v20, "outFragment":Lcom/miui/systemui/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v18, v0

    .line 205
    .local v18, "inIsPop":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v21, v0

    .line 207
    .local v21, "outIsPop":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static/range {v17 .. v18}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->getEnterTransition(Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 210
    .local v8, "enterTransition":Ljava/lang/Object;
    invoke-static/range {v20 .. v21}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->getExitTransition(Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .local v9, "exitTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 212
    invoke-static/range {v2 .. v9}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 216
    .local v15, "sharedElementTransition":Ljava/lang/Object;
    if-nez v8, :cond_2

    if-nez v15, :cond_2

    .line 217
    if-nez v9, :cond_2

    .line 218
    return-void

    .line 221
    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    .line 224
    .local v14, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v8, v0, v7, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    .line 227
    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x4

    invoke-static {v12, v3}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 229
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v9, v15, v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    .line 232
    .local v10, "transition":Ljava/lang/Object;
    if-eqz v10, :cond_3

    .line 233
    move-object/from16 v0, v20

    invoke-static {v9, v0, v14}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->replaceHide(Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    .line 235
    invoke-static {v7}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    .local v19, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    .line 236
    invoke-static/range {v10 .. v16}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 239
    invoke-static {v2, v10}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 240
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-static {v2, v6, v7, v0, v1}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 242
    const/4 v3, 0x0

    invoke-static {v12, v3}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 243
    invoke-static {v15, v6, v7}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 194
    .end local v19    # "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method private static ensureContainer(Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .locals 0
    .param p0, "containerTransition"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    if-nez p0, :cond_0

    .line 1134
    new-instance p0, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .end local p0    # "containerTransition":Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    .line 1135
    .restart local p0    # "containerTransition":Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1137
    :cond_0
    return-object p0
.end method

.method private static findKeyForValue(Lcom/miui/systemui/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 808
    .local p0, "map":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 809
    .local v1, "numElements":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 810
    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 809
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getEnterTransition(Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "inFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p1, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 424
    if-nez p0, :cond_0

    .line 425
    return-object v0

    .line 427
    :cond_0
    if-eqz p1, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 427
    :goto_0
    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExitTransition(Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "outFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p1, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 437
    if-nez p0, :cond_0

    .line 438
    return-object v0

    .line 440
    :cond_0
    if-eqz p1, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 440
    :goto_0
    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static getInEpicenterView(Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 5
    .param p1, "fragments"    # Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p0, "inSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 829
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 830
    .local v0, "inTransaction":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    .line 831
    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 832
    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 838
    :cond_0
    return-object v3

    .line 833
    :cond_1
    if-eqz p3, :cond_2

    .line 834
    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 836
    .local v1, "targetName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    .line 835
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_2
    iget-object v2, v0, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0
.end method

.method private static getSharedElementTransition(Lcom/miui/systemui/support/v4/app/Fragment;Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "inFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p1, "outFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 410
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 411
    :cond_0
    return-object v1

    .line 413
    :cond_1
    if-eqz p2, :cond_2

    .line 414
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v1

    .line 413
    :goto_0
    invoke-static {v1}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 416
    .local v0, "transition":Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 415
    .end local v0    # "transition":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "enterTransition"    # Ljava/lang/Object;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "inFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p4, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 957
    const/4 v0, 0x1

    .line 958
    .local v0, "overlap":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 959
    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/miui/systemui/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    .line 968
    .end local v0    # "overlap":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 970
    invoke-static {p1, p0, p2}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 978
    .local v1, "transition":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 960
    .end local v1    # "transition":Ljava/lang/Object;
    .restart local v0    # "overlap":Z
    :cond_1
    invoke-virtual {p3}, Lcom/miui/systemui/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    .local v0, "overlap":Z
    goto :goto_0

    .line 975
    .end local v0    # "overlap":Z
    :cond_2
    invoke-static {p1, p0, p2}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "transition":Ljava/lang/Object;
    goto :goto_1
.end method

.method private static replaceHide(Ljava/lang/Object;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "exitTransition"    # Ljava/lang/Object;
    .param p1, "exitingFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    .line 257
    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHidden:Z

    .line 256
    if-eqz v1, :cond_0

    .line 257
    iget-boolean v1, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mHiddenChanged:Z

    .line 256
    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/miui/systemui/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 260
    invoke-virtual {p1}, Lcom/miui/systemui/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 259
    invoke-static {p0, v1, p2}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 261
    iget-object v0, p1, Lcom/miui/systemui/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 262
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Lcom/miui/systemui/support/v4/app/FragmentTransition$1;

    invoke-direct {v1, p2}, Lcom/miui/systemui/support/v4/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/miui/systemui/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/miui/systemui/support/v4/app/OneShotPreDrawListener;

    .line 255
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private static retainValues(Lcom/miui/systemui/support/v4/util/ArrayMap;Lcom/miui/systemui/support/v4/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 876
    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 877
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    invoke-virtual {p0, v0}, Lcom/miui/systemui/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 875
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 874
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Lcom/miui/systemui/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "inFragment"    # Lcom/miui/systemui/support/v4/app/Fragment;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "enterTransition"    # Ljava/lang/Object;
    .param p6, "exitTransition"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/miui/systemui/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/miui/systemui/support/v4/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroid/view/View;Lcom/miui/systemui/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/miui/systemui/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/miui/systemui/support/v4/app/OneShotPreDrawListener;

    .line 369
    return-void
.end method

.method private static setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/systemui/support/v4/util/ArrayMap;ZLcom/miui/systemui/support/v4/app/BackStackRecord;)V
    .locals 4
    .param p0, "sharedElementTransition"    # Ljava/lang/Object;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p3, "outIsPop"    # Z
    .param p4, "outTransaction"    # Lcom/miui/systemui/support/v4/app/BackStackRecord;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/miui/systemui/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "outSharedElements":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 854
    iget-object v2, p4, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p4, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    if-eqz p3, :cond_2

    .line 857
    iget-object v2, p4, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 859
    .local v1, "sourceName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v1}, Lcom/miui/systemui/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 860
    .local v0, "outEpicenterView":Landroid/view/View;
    invoke-static {p0, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 862
    if-eqz p1, :cond_0

    .line 863
    invoke-static {p1, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_0

    .line 858
    .end local v0    # "outEpicenterView":Landroid/view/View;
    .end local v1    # "sourceName":Ljava/lang/String;
    :cond_2
    iget-object v2, p4, Lcom/miui/systemui/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_1
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 940
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_0

    .line 941
    return-void

    .line 943
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 944
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 945
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 943
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 939
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method static startTransitions(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 12
    .param p0, "fragmentManager"    # Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/systemui/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget v10, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_4

    .line 91
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 92
    .local v9, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    move v3, p3

    .local v3, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v3, v0, :cond_2

    .line 93
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/systemui/support/v4/app/BackStackRecord;

    .line 94
    .local v8, "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 95
    .local v4, "isPop":Z
    if-eqz v4, :cond_1

    .line 96
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->calculatePopFragments(Lcom/miui/systemui/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_1
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->calculateFragments(Lcom/miui/systemui/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 102
    .end local v4    # "isPop":Z
    .end local v8    # "record":Lcom/miui/systemui/support/v4/app/BackStackRecord;
    :cond_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-eqz v10, :cond_4

    .line 103
    new-instance v6, Landroid/view/View;

    iget-object v10, p0, Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;->mHost:Lcom/miui/systemui/support/v4/app/FragmentHostCallback;

    invoke-virtual {v10}, Lcom/miui/systemui/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 104
    .local v6, "nonExistentView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 105
    .local v7, "numContainers":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_4

    .line 106
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 107
    .local v1, "containerId":I
    move/from16 v0, p4

    invoke-static {v1, p1, p2, p3, v0}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/miui/systemui/support/v4/util/ArrayMap;

    move-result-object v5

    .line 111
    .local v5, "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .line 113
    .local v2, "containerTransition":Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    if-eqz p5, :cond_3

    .line 114
    invoke-static {p0, v1, v2, v6, v5}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureTransitionsReordered(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;ILcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;)V

    .line 105
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 117
    :cond_3
    invoke-static {p0, v1, v2, v6, v5}, Lcom/miui/systemui/support/v4/app/FragmentTransition;->configureTransitionsOrdered(Lcom/miui/systemui/support/v4/app/FragmentManagerImpl;ILcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/miui/systemui/support/v4/util/ArrayMap;)V

    goto :goto_3

    .line 84
    .end local v1    # "containerId":I
    .end local v2    # "containerTransition":Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .end local v3    # "i":I
    .end local v5    # "nameOverrides":Lcom/miui/systemui/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "nonExistentView":Landroid/view/View;
    .end local v7    # "numContainers":I
    .end local v9    # "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    :cond_4
    return-void
.end method
