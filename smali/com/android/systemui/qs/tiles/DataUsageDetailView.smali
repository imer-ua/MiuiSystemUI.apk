.class public Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "DataUsageDetailView.java"


# instance fields
.field private final FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    .line 47
    return-void
.end method

.method private formatBytes(J)Ljava/lang/String;
    .locals 11
    .param p1, "bytes"    # J

    .prologue
    .line 127
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 130
    .local v0, "b":J
    long-to-double v6, v0

    const-wide/high16 v8, 0x4199000000000000L    # 1.048576E8

    cmpl-double v3, v6, v8

    if-lez v3, :cond_0

    .line 131
    long-to-double v6, v0

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    div-double v4, v6, v8

    .line 132
    .local v4, "val":D
    const-string/jumbo v2, "GB"

    .line 140
    .local v2, "suffix":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-gez v3, :cond_2

    const/4 v3, -0x1

    :goto_1
    int-to-double v8, v3

    mul-double/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 133
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v4    # "val":D
    :cond_0
    long-to-double v6, v0

    const-wide/high16 v8, 0x40f9000000000000L    # 102400.0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    .line 134
    long-to-double v6, v0

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double v4, v6, v8

    .line 135
    .restart local v4    # "val":D
    const-string/jumbo v2, "MB"

    .restart local v2    # "suffix":Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v4    # "val":D
    :cond_1
    long-to-double v6, v0

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double v4, v6, v8

    .line 138
    .restart local v4    # "val":D
    const-string/jumbo v2, "KB"

    .restart local v2    # "suffix":Ljava/lang/String;
    goto :goto_0

    .line 140
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 23
    .param p1, "info"    # Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 69
    .local v16, "res":Landroid/content/res/Resources;
    const/16 v22, 0x0

    .line 71
    .local v22, "usageColor":I
    const/4 v2, 0x0

    .line 72
    .local v2, "bottom":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    .line 74
    :cond_0
    const v19, 0x910016c

    .line 75
    .local v19, "titleId":I
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 76
    .local v10, "bytes":J
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 77
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 76
    const v5, 0x9100171

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 97
    .end local v2    # "bottom":Ljava/lang/String;
    .local v20, "top":Ljava/lang/String;
    :goto_0
    if-nez v22, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v22

    .line 101
    :cond_1
    const v4, 0x1020016

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 102
    .local v18, "title":Landroid/widget/TextView;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 103
    const v4, 0x91200c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 104
    .local v21, "usage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    const v4, 0x91200c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/DataUsageGraph;

    .line 107
    .local v3, "graph":Lcom/android/systemui/qs/DataUsageGraph;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/qs/DataUsageGraph;->setLevels(JJJ)V

    .line 108
    const v4, 0x91200c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 109
    .local v12, "carrier":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v4, 0x91200c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 111
    .local v15, "period":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v4, 0x91200c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 113
    .local v14, "infoTop":Landroid/widget/TextView;
    if-eqz v20, :cond_6

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v4, 0x91200ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 116
    .local v13, "infoBottom":Landroid/widget/TextView;
    if-eqz v2, :cond_7

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    :cond_2
    const/16 v17, 0x1

    .line 119
    .local v17, "showLevel":Z
    :goto_3
    if-eqz v17, :cond_9

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/DataUsageGraph;->setVisibility(I)V

    .line 120
    if-nez v17, :cond_3

    .line 121
    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_3
    return-void

    .line 78
    .end local v3    # "graph":Lcom/android/systemui/qs/DataUsageGraph;
    .end local v10    # "bytes":J
    .end local v12    # "carrier":Landroid/widget/TextView;
    .end local v13    # "infoBottom":Landroid/widget/TextView;
    .end local v14    # "infoTop":Landroid/widget/TextView;
    .end local v15    # "period":Landroid/widget/TextView;
    .end local v17    # "showLevel":Z
    .end local v18    # "title":Landroid/widget/TextView;
    .end local v19    # "titleId":I
    .end local v20    # "top":Ljava/lang/String;
    .end local v21    # "usage":Landroid/widget/TextView;
    .restart local v2    # "bottom":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 80
    const v19, 0x910016d

    .line 81
    .restart local v19    # "titleId":I
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long v10, v4, v6

    .line 82
    .restart local v10    # "bytes":J
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 83
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 82
    const v5, 0x910016f

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 84
    .restart local v20    # "top":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 85
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 84
    const v5, 0x9100170

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "bottom":Ljava/lang/String;
    goto/16 :goto_0

    .line 88
    .end local v10    # "bytes":J
    .end local v19    # "titleId":I
    .end local v20    # "top":Ljava/lang/String;
    .local v2, "bottom":Ljava/lang/String;
    :cond_5
    const v19, 0x910016e

    .line 89
    .restart local v19    # "titleId":I
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    sub-long v10, v4, v6

    .line 90
    .restart local v10    # "bytes":J
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 90
    const v5, 0x910016f

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 92
    .restart local v20    # "top":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 93
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 92
    const v5, 0x9100170

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "bottom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    const v5, 0x90c00ec

    invoke-static {v4, v5}, Lcom/android/systemui/util/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v22

    goto/16 :goto_0

    .line 113
    .end local v2    # "bottom":Ljava/lang/String;
    .restart local v3    # "graph":Lcom/android/systemui/qs/DataUsageGraph;
    .restart local v12    # "carrier":Landroid/widget/TextView;
    .restart local v14    # "infoTop":Landroid/widget/TextView;
    .restart local v15    # "period":Landroid/widget/TextView;
    .restart local v18    # "title":Landroid/widget/TextView;
    .restart local v21    # "usage":Landroid/widget/TextView;
    :cond_6
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 116
    .restart local v13    # "infoBottom":Landroid/widget/TextView;
    :cond_7
    const/16 v4, 0x8

    goto/16 :goto_2

    .line 118
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 119
    .restart local v17    # "showLevel":Z
    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_4
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v2, 0x90f00ec

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    const v0, 0x1020016

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/view/View;II)V

    .line 55
    const v0, 0x91200c5

    const v1, 0x90f00ed

    invoke-static {p0, v0, v1}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/view/View;II)V

    .line 56
    const v0, 0x91200c7

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/view/View;II)V

    .line 58
    const v0, 0x91200c8

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/view/View;II)V

    .line 60
    const v0, 0x91200c9

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/view/View;II)V

    .line 61
    const v0, 0x91200ca

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/view/View;II)V

    .line 52
    return-void
.end method
