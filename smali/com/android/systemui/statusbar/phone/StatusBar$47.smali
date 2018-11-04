.class Lcom/android/systemui/statusbar/phone/StatusBar$47;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 1762
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get12(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingManager;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object v2

    .line 1763
    .local v2, "session":Landroid/net/Uri;
    if-nez v2, :cond_0

    return-void

    .line 1765
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1766
    .local v1, "message":Ljava/io/StringWriter;
    const-string/jumbo v3, "Build info: "

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1767
    const-string/jumbo v3, "ro.build.description"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1768
    const-string/jumbo v3, "\nSerial number: "

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1769
    const-string/jumbo v3, "ro.serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1770
    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1772
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1773
    .local v0, "falsingPw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 1774
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1776
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1777
    const-string/jumbo v5, "*/*"

    .line 1776
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1778
    const-string/jumbo v5, "android.intent.extra.SUBJECT"

    const-string/jumbo v6, "Rejected touch report"

    .line 1776
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1779
    const-string/jumbo v5, "android.intent.extra.STREAM"

    .line 1776
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 1780
    const-string/jumbo v5, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1776
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1781
    const-string/jumbo v5, "Share rejected touch report"

    .line 1776
    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 1782
    const/high16 v5, 0x10000000

    .line 1776
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 1761
    return-void
.end method
