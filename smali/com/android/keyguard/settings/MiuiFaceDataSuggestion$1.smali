.class Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$1;
.super Ljava/lang/Object;
.source "MiuiFaceDataSuggestion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;


# direct methods
.method constructor <init>(Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    const-string/jumbo v0, "face_unlock_click_suggestion"

    invoke-static {v0}, Lcom/android/keyguard/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->setResult(I)V

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion$1;->this$0:Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;

    invoke-virtual {v0}, Lcom/android/keyguard/settings/MiuiFaceDataSuggestion;->finish()V

    .line 31
    return-void
.end method
