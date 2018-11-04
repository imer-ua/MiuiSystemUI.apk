.class Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "GuestResumeSessionReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GuestResumeSessionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetSessionDialog"
.end annotation


# instance fields
.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 158
    const v0, 0x91001b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    const v0, 0x91001b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setCanceledOnTouchOutside(Z)V

    .line 163
    const v0, 0x91001b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    const v0, 0x91001b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    iput p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    .line 155
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 172
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/systemui/GuestResumeSessionReceiver;->-wrap0(Landroid/content/Context;I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->dismiss()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->cancel()V

    goto :goto_0
.end method
