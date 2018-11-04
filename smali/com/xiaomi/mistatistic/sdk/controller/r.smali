.class public Lcom/xiaomi/mistatistic/sdk/controller/r;
.super Ljava/lang/Object;
.source "ViewTraverser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/r;->a:Ljava/util/List;

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 44
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    instance-of v1, v1, Landroid/widget/GridView;

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/r;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    .line 40
    :cond_0
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-nez v1, :cond_2

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 31
    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 34
    :goto_1
    if-ge v0, v1, :cond_0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 36
    invoke-virtual {p0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/view/View;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/r;->a:Ljava/util/List;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-direct {v2, p1}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/r;->a:Ljava/util/List;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-direct {v2, p1}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
