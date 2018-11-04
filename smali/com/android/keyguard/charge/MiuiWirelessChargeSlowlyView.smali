.class public Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeSlowlyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 44
    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private getVideoUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x90a0013

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    const v3, 0x9040077

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "view":Landroid/view/View;
    const v2, 0x91201ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    .line 72
    const v2, 0x91201ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mTextureView:Landroid/view/TextureView;

    .line 73
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mTextureView:Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 75
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    const v3, 0x91101ef

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 76
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance v2, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)V

    const v3, 0x9100463

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    .line 95
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 96
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 97
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x902009c

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 65
    :cond_0
    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    .line 61
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 48
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->initView()V

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 53
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 54
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 56
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x90f03d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method
