.class public Lcom/android/systemui/miui/statusbar/notification/HookViewHelper;
.super Ljava/lang/Object;
.source "HookViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 12
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 48
    const/4 v8, 0x0

    .line 50
    .local v8, "listener":Landroid/view/View$OnClickListener;
    :try_start_0
    const-string/jumbo v10, "android.view.View"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "mListenerInfo"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 52
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    .line 53
    .local v9, "listenerInfo":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 54
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 57
    .end local v9    # "listenerInfo":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v10, "android.view.View$ListenerInfo"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 58
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "mOnClickListener"

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 59
    .local v3, "declaredField":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_1

    if-eqz v9, :cond_1

    .line 60
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/view/View$OnClickListener;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "declaredField":Ljava/lang/reflect/Field;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "listener":Landroid/view/View$OnClickListener;
    :cond_1
    :goto_0
    return-object v8

    .line 66
    .restart local v8    # "listener":Landroid/view/View$OnClickListener;
    :catch_0
    move-exception v5

    .line 67
    .local v5, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v10, "HookViewManager"

    const-string/jumbo v11, "IllegalAccessException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 64
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v6

    .line 65
    .local v6, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v10, "HookViewManager"

    const-string/jumbo v11, "NoSuchFieldException"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v6    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v4

    .line 63
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v10, "HookViewManager"

    const-string/jumbo v11, "ClassNotFoundException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static hookView(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper;->getClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 40
    .local v1, "oldOnClickListener":Landroid/view/View$OnClickListener;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    return-void

    .line 43
    :cond_1
    new-instance v0, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;-><init>(Landroid/view/View$OnClickListener;Ljava/lang/Runnable;)V

    .line 44
    .local v0, "newOnClickListener":Lcom/android/systemui/miui/statusbar/notification/HookViewHelper$OnClickListenerProxy;
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
