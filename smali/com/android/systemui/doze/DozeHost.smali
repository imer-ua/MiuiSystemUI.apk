.class public interface abstract Lcom/android/systemui/doze/DozeHost;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeHost$Callback;,
        Lcom/android/systemui/doze/DozeHost$PulseCallback;
    }
.end annotation


# virtual methods
.method public abstract fireAodState(Z)V
.end method

.method public abstract isDozing()Z
.end method

.method public abstract stopDozing()V
.end method
