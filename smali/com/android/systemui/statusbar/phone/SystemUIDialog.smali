.class public Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.super Lmiui/app/AlertDialog;
.source "SystemUIDialog.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Lmiui/app/AlertDialog;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 40
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 34
    return-void
.end method

.method public static applyFlags(Lmiui/app/AlertDialog;)V
    .locals 2
    .param p0, "dialog"    # Lmiui/app/AlertDialog;

    .prologue
    .line 71
    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 72
    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xa0000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    return-void
.end method

.method public static setShowForAllUsers(Lmiui/app/AlertDialog;Z)V
    .locals 2
    .param p0, "dialog"    # Lmiui/app/AlertDialog;
    .param p1, "show"    # Z

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 60
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0
.end method


# virtual methods
.method public setMessage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "onClick"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "onClick"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 52
    return-void
.end method

.method public setShowForAllUsers(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Lmiui/app/AlertDialog;Z)V

    .line 44
    return-void
.end method
