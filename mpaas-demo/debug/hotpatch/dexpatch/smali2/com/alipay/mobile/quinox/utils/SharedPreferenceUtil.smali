.class public Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# static fields
.field public static final CONFIG_CRASHSDK_DELAY:Ljava/lang/String; = "CRASHSDK_DELAY"

.field public static final CONFIG_KEY_CPU_BOOST_CONFIG:Ljava/lang/String; = "cpu_perf_boost_config"

.field public static final CONFIG_KEY_CUBE_SAMPLE:Ljava/lang/String; = "cube_sample"

.field public static final CONFIG_KEY_DO_DEXPATCH_FUSE:Ljava/lang/String; = "dexp_do_fuse"

.field public static final CONFIG_KEY_GRID_CELL_BLUE_DOT_LAZY_LOAD:Ljava/lang/String; = "GRID_CELL_BLUE_DOT_LAZY_LOAD"

.field public static final CONFIG_KEY_GRID_CELL_LIMIT_TEXT_LAZY:Ljava/lang/String; = "GRID_CELL_LIMIT_TEXT_LAZY"

.field public static final CONFIG_KEY_HOME_GRID_IMAGE_CACHE:Ljava/lang/String; = "HOME_GRID_IMAGE_CACHE"

.field public static final CONFIG_KEY_HOME_HEADVIEW_LAZYLOAD:Ljava/lang/String; = "HOME_HEADVIEW_LAZYLOAD"

.field public static final CONFIG_KEY_HOME_PRELOAD_FOUR_ICON:Ljava/lang/String; = "HOME_PRELOAD_FOUR_ICON"

.field public static final CONFIG_KEY_INSTANT_START_APP:Ljava/lang/String; = "ig_instantStartApp"

.field public static final CONFIG_KEY_INSTANT_START_APP_SOURCE_APPID:Ljava/lang/String; = "ig_instantStartAppSourceAppid"

.field public static final CONFIG_KEY_IS_DELAY_DYNAMIC_RELEASE:Ljava/lang/String; = "ig_isDelayDR"

.field public static final CONFIG_KEY_IS_POST_IF_MAINLOOP:Ljava/lang/String; = "ig_isPostIfMain"

.field public static final CONFIG_KEY_LOADING_PEND_TIMEOUT:Ljava/lang/String; = "ig_loadingPendTimeout"

.field public static final CONFIG_KEY_MONITOR_ALL_SG_STACK:Ljava/lang/String; = "MONITOR_ALL_SG_STACK"

.field public static final CONFIG_KEY_PRELAUNCH_PRELOAD:Ljava/lang/String; = "prelaunch_preload"

.field public static final CONFIG_KEY_PRELAUNCH_PRELOAD2:Ljava/lang/String; = "prelaunch_preload2"

.field public static final CONFIG_KEY_PRELAUNCH_PRELOAD_GESTURE:Ljava/lang/String; = "prelaunch_preload_gesture"

.field public static final CONFIG_KEY_PRELOAD_BLACK_BIZ_ENTRY:Ljava/lang/String; = "preload_black_list_entry"

.field public static final CONFIG_KEY_PROFILO_CONFIG:Ljava/lang/String; = "profilo_config"

.field public static final CONFIG_KEY_QUINOX_JERK_MONITOR:Ljava/lang/String; = "enable_quinox_jerk_monitor"

.field public static final CONFIG_KEY_SG_INIT_HOOK_WAIT_TIME:Ljava/lang/String; = "SG_INIT_HOOK_WAIT_TIME"

.field public static final CONFIG_KEY_SUSPEND_GC:Ljava/lang/String; = "enable_suspend_gc"

.field public static final CONFIG_KEY_TOAST_FIX:Ljava/lang/String; = "enable_toast_fix"

.field public static final CONFIG_KEY_USE_DELETE_TO_CLEAR_SP:Ljava/lang/String; = "delete_file_to_clear_sp"

.field public static final CONFIG_KEY_USE_NEW_ACTIVITY_LAYOUT:Ljava/lang/String; = "use_new_welcome_layout"

.field public static final CONFIG_KEY_USE_OLD_TAB_LAYOUT:Ljava/lang/String; = "use_old_tab_layout"

.field public static final CONFIG_KEY_VERIFY_CLASS:Ljava/lang/String; = "enable_verify_class"

.field public static final CONFIG_KEY_WEBVIEW_SUFFIX_PROCESS:Ljava/lang/String; = "SYS_WEBVIEW_SUFFIX_PROCESS"

.field public static final DEFAULT_VALUE_WEBVIEW_SUFFIX_PROCESS:Ljava/lang/String; = "lite0,lite1,lite2,lite3,lite4,lite5"

.field public static final KEY_NEED_PRELOAD_SG:Ljava/lang/String; = "need_preload_sg"

.field public static defaultSp:Landroid/content/SharedPreferences;

.field private static sInstance:Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;


# instance fields
.field private mDefaultSharedPreferences:Landroid/content/SharedPreferences;

.field private mPrivateSharedPreferencesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->mPrivateSharedPreferencesMap:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;
    .locals 2

    .line 104
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->sInstance:Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    if-nez v0, :cond_1

    .line 105
    const-class v0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->sInstance:Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->sInstance:Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    .line 109
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 111
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->sInstance:Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    return-object v0
.end method


# virtual methods
.method public getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 127
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 142
    if-nez p3, :cond_2

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->mPrivateSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    move-object v2, v1

    .line 148
    .local v2, "result":Landroid/content/SharedPreferences;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    .local v1, "applicationContext":Landroid/content/Context;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 151
    move-object v1, p1

    .line 154
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->mPrivateSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .end local v1    # "applicationContext":Landroid/content/Context;
    :cond_1
    return-object v2

    .line 143
    .end local v2    # "result":Landroid/content/SharedPreferences;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only Support Context.MODE_PRIVATE!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSharedPreferencesBottom(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 4
    .param p1, "mBaseContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 172
    if-nez p3, :cond_3

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->mPrivateSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    .line 178
    .local v1, "result":Landroid/content/SharedPreferences;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 179
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "quinox_sp_replace"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 180
    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->getInstance()Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->isFallback()Z

    move-result v0

    .line 182
    if-nez v0, :cond_1

    .line 186
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->getInstance()Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    move-object v1, v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v1, v0

    .line 194
    :goto_0
    if-eqz v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->mPrivateSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_2
    return-object v1

    .line 173
    .end local v1    # "result":Landroid/content/SharedPreferences;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only Support Context.MODE_PRIVATE!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyncConfigKeys()[Ljava/lang/String;
    .locals 29

    .line 212
    const-string v0, "ig_instantStartApp"

    const-string v1, "ig_loadingPendTimeout"

    const-string v2, "ig_isPostIfMain"

    const-string v3, "ig_isDelayDR"

    const-string v4, "ig_instantStartAppSourceAppid"

    const-string v5, "dexp_do_fuse"

    const-string v6, "profilo_config"

    const-string v7, "cube_sample"

    const-string v8, "prelaunch_preload"

    const-string v9, "prelaunch_preload2"

    const-string v10, "enable_suspend_gc"

    const-string v11, "enable_verify_class"

    const-string v12, "enable_quinox_jerk_monitor"

    const-string v13, "cpu_perf_boost_config"

    const-string v14, "enable_toast_fix"

    const-string v15, "use_new_welcome_layout"

    const-string v16, "HOME_GRID_IMAGE_CACHE"

    const-string v17, "use_old_tab_layout"

    const-string v18, "HOME_PRELOAD_FOUR_ICON"

    const-string v19, "HOME_HEADVIEW_LAZYLOAD"

    const-string v20, "GRID_CELL_LIMIT_TEXT_LAZY"

    const-string v21, "GRID_CELL_BLUE_DOT_LAZY_LOAD"

    const-string v22, "SG_INIT_HOOK_WAIT_TIME"

    const-string v23, "delete_file_to_clear_sp"

    const-string v24, "preload_black_list_entry"

    const-string v25, "CRASHSDK_DELAY"

    const-string v26, "MONITOR_ALL_SG_STACK"

    const-string v27, "prelaunch_preload_gesture"

    const-string v28, "SYS_WEBVIEW_SUFFIX_PROCESS"

    filled-new-array/range {v0 .. v28}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeSharedPreferenceCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->mPrivateSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method
