.class public Lcom/android/keyguard/AnalyticsHelper;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# static fields
.field private static final IS_INTERNATIONAL_BUILD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/android/keyguard/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static record(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string/jumbo v0, "systemui_keyguard"

    invoke-static {v0, p0}, Lcom/android/keyguard/AnalyticsHelper;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static record(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/keyguard/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p0, p1}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recordCalculateEvent(Ljava/lang/String;J)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/keyguard/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "systemui_keyguard"

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V

    .line 167
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string/jumbo v0, "systemui_keyguard"

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static recordDownloadLockScreenMagazine()V
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "keyguard_download_lockscreen_magazine"

    invoke-static {v0}, Lcom/android/keyguard/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static recordEnterLeftview(Z)V
    .locals 3
    .param p0, "isLockScreenWallpaperOpen"    # Z

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "is_lockscreen_wallpaper_open"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_enter_left_view"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public static recordEnum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string/jumbo v0, "systemui_keyguard"

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static recordEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/keyguard/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static recordKeyguardPreviewButton(Ljava/lang/String;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_preview_button"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    return-void
.end method

.method public static recordLeftLockscreenMagazineButton(Z)V
    .locals 3
    .param p0, "isLockScreenWallpaperOpen"    # Z

    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "is_lockscreen_wallpaper_open"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_left_view_lockscreen_magazine_button"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    return-void
.end method

.method public static recordScreenOn(Z)V
    .locals 3
    .param p0, "isLockScreenWallpaperOpen"    # Z

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "is_lockscreen_wallpaper_open"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_screenon"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    return-void
.end method

.method public static recordUnlockWay(Ljava/lang/String;)V
    .locals 3
    .param p0, "way"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "way"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_unlock_way"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/keyguard/AnalyticsHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static trackCheckPasswordFailedException(Ljava/lang/String;)V
    .locals 3
    .param p0, "exception"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "exception"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "keyguard_check_password_failed_exception"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 121
    return-void
.end method

.method public static trackFaceUnlockFailCount(Z)V
    .locals 3
    .param p0, "hasFace"    # Z

    .prologue
    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "hasface"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v1, "systemui_keyguard"

    const-string/jumbo v2, "face_unlock_state_fail_count"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/AnalyticsHelper;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    return-void
.end method

.method public static trackFaceUnlockLocked()V
    .locals 2

    .prologue
    .line 118
    const-string/jumbo v0, "systemui_keyguard"

    const-string/jumbo v1, "face_unlock_locked"

    invoke-static {v0, v1}, Lcom/android/keyguard/AnalyticsHelper;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method
