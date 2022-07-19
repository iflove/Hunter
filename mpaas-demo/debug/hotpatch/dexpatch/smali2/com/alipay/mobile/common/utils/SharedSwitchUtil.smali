.class public Lcom/alipay/mobile/common/utils/SharedSwitchUtil;
.super Ljava/lang/Object;
.source "SharedSwitchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;
    }
.end annotation


# static fields
.field public static final KEY_NET_SWITCH_ONE:Ljava/lang/String; = "netsdk_normal_switch"

.field public static final KEY_NET_SWITCH_TWO:Ljava/lang/String; = "android_network_core"

.field public static final MDAP_UPLOAD_WHITE_CONFIG:Ljava/lang/String; = "mdap_upload_white_config"

.field public static final POSITIVE_LOG_WHITE_CONFIG:Ljava/lang/String; = "positive_log_white_config"

.field public static final SHARED_FILE:Ljava/lang/String; = "sdkSharedSwitch.xml"

.field public static final SHARED_FILE_NAME:Ljava/lang/String; = "sdkSharedSwitch"

.field public static final THREAD_POOL_CONFIG:Ljava/lang/String; = "thread_pool_config"

.field public static final UNI_DOMAIN_CONFIG:Ljava/lang/String; = "spdy_uniformorigin_config"

.field private static a:Ljava/lang/Boolean;

.field public static switchChangedObserble:Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

.field public static switchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a:Ljava/lang/Boolean;

    .line 71
    new-instance v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;
    .locals 1

    .line 208
    sget-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchChangedObserble:Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    invoke-direct {v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchChangedObserble:Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    .line 211
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchChangedObserble:Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    return-object v0
.end method

.method public static final addSwitchChangedListener(Ljava/util/Observer;)V
    .locals 1
    .param p0, "observer"    # Ljava/util/Observer;

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a()Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;->addObserver(Ljava/util/Observer;)V

    .line 205
    return-void
.end method

.method public static declared-synchronized getSharedSwitch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;

    monitor-enter v0

    .line 96
    :try_start_0
    const-string/jumbo v1, "sdkSharedSwitch"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 95
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPrefName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;

    monitor-enter v0

    .line 199
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 200
    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 198
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "sharedPrefName":Ljava/lang/String;
    .end local p2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final isDebugger(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 225
    sget-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 231
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 232
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 233
    sput-object v1, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 234
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public static notifySwitchUpdate()V
    .locals 1

    .line 245
    invoke-static {}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a()Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;->notifyObservers()V

    .line 246
    return-void
.end method

.method public static refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string/jumbo v0, "sdkSharedSwitch"

    .line 160
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 161
    .local v3, "spf":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 162
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    move-object v2, v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    nop

    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "spf":Landroid/content/SharedPreferences;
    return-void

    .line 164
    :catchall_0
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "SDK\u5c42\u5f00\u5173\u914d\u7f6e\u5904\u7406"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public static refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPrefName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 183
    .local v2, "spf":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    nop

    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "spf":Landroid/content/SharedPreferences;
    return-void

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshSharedSwitch, sharedPrefName=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], key=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], value=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SharedSwitchUtil"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public static declared-synchronized refreshSharedSwitch(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "switchMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;

    monitor-enter v0

    .line 117
    :try_start_0
    const-string/jumbo v1, "sdkSharedSwitch"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 118
    .local v3, "spf":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 120
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v4, 0x0

    .line 121
    .local v4, "hasSwitch":Z
    sget-object v5, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 122
    .local v6, "key":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 123
    .local v2, "value":Ljava/lang/String;
    move-object v2, v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 124
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v4, 0x1

    .line 135
    .end local v2    # "value":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    if-nez v4, :cond_2

    .line 137
    monitor-exit v0

    return-void

    .line 140
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    invoke-static {}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a()Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;->notifyObservers(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "spf":Landroid/content/SharedPreferences;
    .end local v4    # "hasSwitch":Z
    monitor-exit v0

    return-void

    .line 143
    :catchall_0
    move-exception v1

    .line 144
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v2, "sdkSharedSwitch"

    const-string v3, "SDK\u5c42\u5f00\u5173\u914d\u7f6e\u5904\u7406"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    .end local v1    # "ex":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 116
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "switchMap":Ljava/util/Map;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
