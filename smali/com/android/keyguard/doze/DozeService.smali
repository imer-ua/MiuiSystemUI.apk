.class public Lcom/android/keyguard/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/doze/DozeService;->finish()V

    .line 11
    return-void
.end method

.method public onDreamingStarted()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 17
    return-void
.end method

.method public onDreamingStopped()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 22
    return-void
.end method
