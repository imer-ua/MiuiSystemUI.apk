.class final Landroid/view/WindowManagerCompat$1;
.super Ljava/lang/Object;
.source "WindowManagerCompat.java"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerCompat;->requestAppKeyboardShortcuts(Landroid/view/WindowManager;Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$receiver:Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;


# direct methods
.method constructor <init>(Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;)V
    .locals 0
    .param p1, "val$receiver"    # Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;

    .prologue
    .line 16
    iput-object p1, p0, Landroid/view/WindowManagerCompat$1;->val$receiver:Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardShortcutsReceived(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Landroid/view/WindowManagerCompat$1;->val$receiver:Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerCompat$IKeyboardShortcutsReceiver;->onKeyboardShortcutsReceived(Ljava/util/List;)V

    .line 18
    return-void
.end method
