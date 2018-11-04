.class public Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;
.super Ljava/lang/Object;
.source "QSFooterDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooterDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DataUsageInfo"
.end annotation


# instance fields
.field private mDataUsageAvailable:Z

.field private mIconImage:Landroid/graphics/Bitmap;

.field private mText1:Ljava/lang/CharSequence;

.field private mText2:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/qs/QSFooterDataUsage;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/QSFooterDataUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooterDataUsage;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->this$0:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->mIconImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getText1()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->mText1:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->mText2:Ljava/lang/String;

    return-object v0
.end method

.method public isDataUsageAvailable()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->mDataUsageAvailable:Z

    return v0
.end method

.method public setDataUsageAvailable(Z)V
    .locals 0
    .param p1, "dataUsageAvaliable"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->mDataUsageAvailable:Z

    .line 170
    return-void
.end method

.method public setIconImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "iconImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->mIconImage:Landroid/graphics/Bitmap;

    .line 162
    return-void
.end method

.method public setText1(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text1"    # Ljava/lang/CharSequence;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->mText1:Ljava/lang/CharSequence;

    .line 154
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .locals 0
    .param p1, "text2"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterDataUsage$DataUsageInfo;->mText2:Ljava/lang/String;

    .line 146
    return-void
.end method
