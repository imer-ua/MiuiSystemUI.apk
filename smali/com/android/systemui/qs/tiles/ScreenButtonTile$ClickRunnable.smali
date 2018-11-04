.class public Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;
.super Ljava/lang/Object;
.source "ScreenButtonTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenButtonTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClickRunnable"
.end annotation


# instance fields
.field private disabled:Z

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenButtonTile;

.field private value:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenButtonTile;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ScreenButtonTile;
    .param p2, "value"    # I
    .param p3, "disabled"    # Z

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->this$0:Lcom/android/systemui/qs/tiles/ScreenButtonTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p2, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->value:I

    .line 143
    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->disabled:Z

    .line 141
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget v1, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->value:I

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->this$0:Lcom/android/systemui/qs/tiles/ScreenButtonTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->-get0(Lcom/android/systemui/qs/tiles/ScreenButtonTile;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 150
    const v2, 0x110900bd

    .line 149
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 151
    const v2, 0x104000a

    const/4 v3, 0x0

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 153
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 147
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->this$0:Lcom/android/systemui/qs/tiles/ScreenButtonTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ScreenButtonTile$ClickRunnable;->disabled:Z

    if-eqz v1, :cond_1

    .line 158
    const v1, 0x9100579

    .line 157
    :goto_1
    invoke-static {v2, v1, v3}, Lcom/android/systemui/qs/tiles/ScreenButtonTile;->-wrap0(Lcom/android/systemui/qs/tiles/ScreenButtonTile;II)V

    goto :goto_0

    .line 159
    :cond_1
    const v1, 0x9100578

    goto :goto_1
.end method
