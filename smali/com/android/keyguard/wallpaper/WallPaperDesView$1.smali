.class Lcom/android/keyguard/wallpaper/WallPaperDesView$1;
.super Ljava/lang/Object;
.source "WallPaperDesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/WallPaperDesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/WallPaperDesView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/WallPaperDesView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/WallPaperDesView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView$1;->this$0:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView$1;->this$0:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->-get0(Lcom/android/keyguard/wallpaper/WallPaperDesView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallPaperDesView$1;->this$0:Lcom/android/keyguard/wallpaper/WallPaperDesView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/WallPaperDesView;->-get0(Lcom/android/keyguard/wallpaper/WallPaperDesView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 206
    :cond_0
    return-void
.end method
