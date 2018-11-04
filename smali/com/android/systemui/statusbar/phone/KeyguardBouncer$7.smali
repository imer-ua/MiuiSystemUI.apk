.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;
.super Landroid/os/AsyncTask;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const v5, 0x3eaaaaab

    const/4 v3, 0x0

    .line 192
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 193
    if-nez p1, :cond_2

    move-object v0, v3

    .line 194
    .end local p1    # "background":Landroid/graphics/drawable/Drawable;
    .local v0, "backgroundOriginal":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_3

    const/4 v2, 0x0

    .line 195
    .local v2, "width":I
    :goto_1
    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 196
    .local v1, "height":I
    :goto_2
    if-lez v2, :cond_0

    if-gtz v1, :cond_5

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiui/system/R$color;->blur_background_mask:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 191
    .end local v0    # "backgroundOriginal":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_1
    :goto_3
    return-void

    .line 193
    .restart local p1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 194
    .restart local v0    # "backgroundOriginal":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .restart local v2    # "width":I
    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .restart local v1    # "height":I
    goto :goto_2

    .line 199
    :cond_5
    const/4 v4, 0x1

    invoke-static {v0, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0, v3}, Lmiui/util/ScreenshotUtils;->getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "background":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$7;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
