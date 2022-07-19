.class public Lcom/alipay/mobile/nebula/dev/H5DevConfig;
.super Ljava/lang/Object;
.source "H5DevConfig.java"


# static fields
.field public static final BATCHED_SERVER:Ljava/lang/String; = "https://hpmweb.alipay.com/report/android/batch"

.field public static final DEFAULT_SERVER:Ljava/lang/String; = "https://hpmweb.alipay.com/report/android"

.field public static final H5_ALIPAY_NETWORK:Ljava/lang/String; = "h5_alipay_network"

.field public static final H5_BUG_ME_DEBUG_SWITCH:Ljava/lang/String; = "h5_bug_me_debug_switch"

.field public static final H5_BUG_ME_DEBUG_SWITCH_KEEP:Ljava/lang/String; = "h5_bug_me_debug_switch_keep"

.field public static final H5_BUG_ME_DOM_DEBUG:Ljava/lang/String; = "h5_bug_me_dom_debug"

.field public static final H5_BUG_ME_FORCE_NO_DUMP:Ljava/lang/String; = "h5_bug_me_force_no_dump"

.field public static final H5_BUG_ME_JS_INJECTOR:Ljava/lang/String; = "h5_bug_me_js_injector"

.field public static final H5_BUG_ME_SHOW_ICON:Ljava/lang/String; = "h5_bug_me_show_icon"

.field public static final H5_BUG_ME_SUPER_USER:Ljava/lang/String; = "h5_bug_me_super_user"

.field public static final H5_BUG_ME_WIRED_DEBUG:Ljava/lang/String; = "h5_bug_me_wired_debug"

.field public static final H5_DELETE_UNUSED_APP_PACKAGE:Ljava/lang/String; = "h5_delete_unused_app_package"

.field public static H5_DEV_URL:Ljava/lang/String; = null

.field public static final H5_FORCE_V8WORKER:Ljava/lang/String; = "h5_force_v8worker"

.field public static final H5_JSAPI_PERMISSION:Ljava/lang/String; = "h5_jsapi_permission"

.field public static final H5_LAUNCH_URL:Ljava/lang/String; = "h5_param_url"

.field public static H5_LOAD_JS:Ljava/lang/String; = null

.field public static final H5_POST_EVENT:Ljava/lang/String; = "h5_post_event"

.field public static final H5_PREFER_APP_LIST:Ljava/lang/String; = "h5_prefer_app_list"

.field public static final H5_READ_SNAPSHOT:Ljava/lang/String; = "h5_read_snapshot"

.field public static final H5_READ_USE_WEBVIEW_CONFIG:Ljava/lang/String; = "h5_read_use_webview_config"

.field public static final H5_TRACE_DEBUG_SWITCH:Ljava/lang/String; = "h5_trace_debug_switch"

.field public static final H5_UPLOAD_ALL_APP_INFO:Ljava/lang/String; = "h5_upload_all_app_info"

.field public static final H5_USE_PRESET_PKG_INFO:Ljava/lang/String; = "h5_use_preset_pkg_info"

.field public static final H5_USE_UC_WEBVIEW:Ljava/lang/String; = "h5_use_uc_webview"

.field private static final TAG:Ljava/lang/String; = "H5DevConfig"

.field public static final h5_not_use_tiny_permission:Ljava/lang/String; = "h5_not_use_tiny_permission"

.field public static final h5_read_use_dev_app_config:Ljava/lang/String; = "h5_read_use_dev_app_config"

.field public static final h5_read_use_dev_db:Ljava/lang/String; = "h5_read_use_dev_db"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->H5_LOAD_JS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugSwitch(ZZZZZ)V
    .locals 4
    .param p0, "debugSwitch"    # Z
    .param p1, "domDebug"    # Z
    .param p2, "wiredDebug"    # Z
    .param p3, "showIcon"    # Z
    .param p4, "performanceTrace"    # Z

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "H5DevConfig"

    if-nez v0, :cond_0

    .line 129
    const-string v0, "h5DevGlobal.getContext is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "debugSwitch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x0

    const-string v2, "h5_bug_me_debug_switch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 139
    .local v1, "previewsSwitch":Z
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 140
    const-string v3, "h5_bug_me_dom_debug"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 141
    const-string v3, "h5_bug_me_wired_debug"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 142
    const-string v3, "h5_bug_me_show_icon"

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 143
    const-string v3, "h5_trace_debug_switch"

    invoke-interface {v2, v3, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    if-eq v1, p0, :cond_1

    .line 147
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    const/4 v3, 0x0

    .line 148
    .local v3, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->onBugMeSwitched(Z)V

    .line 152
    .end local v3    # "service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_1
    return-void
.end method

.method public static getBooleanConfig(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "df"    # Z

    .line 82
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    return p1

    .line 85
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    return p1
.end method

.method public static getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "df"    # Ljava/lang/String;

    .line 94
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    return-object p1

    .line 97
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    return-object p1
.end method

.method public static resetBugMeSettings()V
    .locals 5

    .line 156
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "H5DevConfig"

    if-nez v0, :cond_0

    .line 157
    const-string v0, "h5DevGlobal.getContext is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void

    .line 161
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "resetBugMeSettings"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "h5_bug_me_debug_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 166
    .local v3, "previewsSwitch":Z
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 167
    const-string v4, "h5_bug_me_dom_debug"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 168
    const-string v4, "h5_bug_me_show_icon"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 169
    const-string v4, "h5_bug_me_wired_debug"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 170
    const-string v4, "h5_bug_me_debug_switch_keep"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 171
    const-string v4, "h5_bug_me_super_user"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 172
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    if-eqz v3, :cond_1

    .line 175
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    const/4 v4, 0x0

    .line 176
    .local v4, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v4, v1

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->onBugMeSwitched(Z)V

    .line 180
    .end local v4    # "service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_1
    return-void
.end method

.method public static setBooleanConfig(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .line 114
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "H5DevConfig"

    const-string v1, "h5DevGlobal.getContext is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    return-void
.end method

.method public static setStringConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "H5DevConfig"

    const-string v1, "h5DevGlobal.getContext is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method
