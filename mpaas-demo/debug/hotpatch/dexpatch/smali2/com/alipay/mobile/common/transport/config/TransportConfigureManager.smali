.class public Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
.super Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;
.source "TransportConfigureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;
    }
.end annotation


# static fields
.field public static final SDCARD_CONFIG_FILE:Ljava/lang/String; = "transport_config.json"

.field public static final SDCARD_SRV_CONFIG_FILE:Ljava/lang/String; = "srv_transport_config.json"

.field public static transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a:I

    .line 39
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b:Z

    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a()V

    .line 62
    return-void
.end method

.method private a()V
    .locals 4

    .line 250
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 251
    .local v1, "context":Landroid/content/Context;
    move-object v1, v0

    const-string v2, "Conf_TransportConfigureManager"

    if-nez v0, :cond_0

    .line 252
    const-string/jumbo v0, "specialHandle.  context is null. "

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 257
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    return-void

    .line 262
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    return-void

    .line 267
    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isRealPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    return-void

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->c:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;

    if-nez v0, :cond_4

    .line 272
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getSharedPrefsDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "sharedPrefsDir":Ljava/lang/String;
    new-instance v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->c:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;

    .line 274
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$ConfigFileListener;->startWatching()V

    .line 275
    const-string v3, "configFileListener startWatching"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v0    # "sharedPrefsDir":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    const-string v0, "64"

    const-string v1, "Conf_TransportConfigureManager"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "gwfurl":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, "url":Ljava/net/URL;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initConfigItemsByEnv. gw url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOnlineUrl(Ljava/net/URL;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "T"

    if-eqz v4, :cond_0

    .line 144
    :try_start_1
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 145
    const-string v4, "initConfigItemsByEnv. Open online env spdy finish."

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isTestUrl(Ljava/net/URL;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 148
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getTestGwUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 149
    const-string v4, "initConfigItemsByEnv. Open test env spdy finish."

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isSandboxUrl(Ljava/net/URL;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "F"

    if-eqz v4, :cond_2

    .line 151
    :try_start_2
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 152
    const-string v4, "initConfigItemsByEnv. Close sandbox env spdy finish."

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    const-string v4, "initConfigItemsByEnv. Close unknow env amnet and spdy finish."

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v7, "0,0"

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 156
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 158
    :goto_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DJG_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 160
    const-string v4, "initConfigItemsByEnv. Debug env, default open django switch."

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IPRANK_AB_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 163
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->EASTEREGGS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 166
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->LOGIN_REFRESH_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->getInstance()Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->enableRefresh()V

    .line 171
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GO_URLCONNECTION_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 174
    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->TRANSPORT_LOCAL_AMNET:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->setValue(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->TRANSPORT_LOCAL_AMNET:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .end local v2    # "gwfurl":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :cond_3
    return-void

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->d:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 4

    .line 337
    new-instance v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager$1;-><init>(Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 345
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 213
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->loadConfigFromSettingTool(Landroid/content/Context;)Z

    .line 214
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->c(Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "Conf_TransportConfigureManager"

    .line 219
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    return-void

    .line 223
    :cond_0
    const-string/jumbo v1, "transport_config.json"

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getConfigFromSdcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 224
    .local v2, "configFromSdcard":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "loadConfigFromSdcard: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-super {p0, v2}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->parseObject(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->mergeConfig(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v2    # "configFromSdcard":Ljava/lang/String;
    :cond_1
    return-void

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 234
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a(Landroid/content/Context;)V

    .line 235
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 2

    .line 47
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    if-eqz v0, :cond_0

    .line 48
    return-object v0

    .line 50
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    if-eqz v1, :cond_1

    .line 52
    monitor-exit v0

    return-object v1

    .line 54
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->transportConfigureManager:Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    .line 55
    monitor-exit v0

    .line 56
    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected delayNotifyConfigureChangedEvent()V
    .locals 3

    .line 241
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delayNotifyConfigureChangedEvent sleep exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Conf_TransportConfigureManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    .line 246
    return-void
.end method

.method protected enableAmnetSetting(Landroid/content/Context;Ljava/lang/String;Ljava/net/URL;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gwUrlStr"    # Ljava/lang/String;
    .param p3, "gwUrl"    # Ljava/net/URL;

    .line 416
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 417
    .local v1, "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v3, "64"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_DOWN_HTTPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "1-1"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPCV2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_BLACK_LIST_PHONE_BRAND:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_BLACK_LIST_PHONE_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_BLACK_LIST_CPU_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DISABLED_NET_KEY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DISABLED_SDK_VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setAmnetConfigByDns(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setAmnetConfigByGwUrl(Landroid/content/Context;Ljava/lang/String;Ljava/net/URL;Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;)V

    .line 430
    :cond_0
    const-string v0, "Conf_TransportConfigureManager"

    const-string v2, "enableAmnetSetting done"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method protected enableSpdySetting(Ljava/net/URL;)V
    .locals 4
    .param p1, "gwUrl"    # Ljava/net/URL;

    .line 399
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 400
    .local v1, "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v3, "0,0,0"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 401
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOnlineUrl(Ljava/net/URL;)Z

    move-result v0

    const-string v2, "Conf_TransportConfigureManager"

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isTestUrl(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v3, "F"

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "enableSpdySetting. Server does not support spdy, server url = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void

    .line 402
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v3, "T"

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_BLACK_LIST_PHONE_BRAND:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_BLACK_LIST_PHONE_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_BLACK_LIST_CPU_MODEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 406
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_DISABLED_NET_KEY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_DISABLED_SDK_VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 408
    const-string v0, "enableSpdySetting done"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public firstUpdateConfig(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b:Z

    .line 75
    const-string v0, "Conf_TransportConfigureManager"

    const-string v1, "=====> firstUpdateConfig <====="

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getClientABTag()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->generateClientABTagValues()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->d:Ljava/lang/String;

    .line 352
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfgureVersion()Ljava/lang/String;
    .locals 1

    .line 194
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestVersion()I
    .locals 3

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getConfgureVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    .local v1, "configureVersion":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getVersionSecond()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v2

    return v0

    .line 186
    .end local v1    # "configureVersion":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLatestVersion exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Conf_TransportConfigureManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionSecond()I
    .locals 1

    .line 198
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION2:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    return v0
.end method

.method public loadConfigFromSettingTool(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "]"

    const-string v1, "Conf_TransportConfigureManager"

    .line 358
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    return v2

    .line 362
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 363
    .local v5, "settingServerUrl":Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;
    move-object v5, v3

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isEnableAmnetSetting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    .line 364
    .local v3, "enableAmnetSetting":Ljava/lang/Boolean;
    invoke-virtual {v5, p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isEnableSpdySetting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v6

    .line 366
    .local v6, "enableSpdySetting":Ljava/lang/Boolean;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "enableAmnetSetting=["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "enableSpdySetting=["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    if-nez v6, :cond_1

    if-nez v3, :cond_1

    .line 370
    return v2

    .line 373
    :cond_1
    invoke-virtual {v5, p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "gwUrlStr":Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 377
    .local v7, "gwUrl":Ljava/net/URL;
    if-eqz v3, :cond_2

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v8, :cond_2

    .line 378
    invoke-virtual {p0, p1, v0, v7}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->enableAmnetSetting(Landroid/content/Context;Ljava/lang/String;Ljava/net/URL;)V

    goto :goto_0

    .line 379
    :cond_2
    if-eqz v6, :cond_3

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v6, v8, :cond_3

    .line 380
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->enableSpdySetting(Ljava/net/URL;)V

    goto :goto_0

    .line 382
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v8

    .line 383
    .local v4, "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    move-object v4, v8

    sget-object v9, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v10, "F"

    invoke-virtual {v8, v9, v10}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 384
    sget-object v8, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v9, "0,0,0"

    invoke-virtual {v4, v8, v9}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 385
    sget-object v8, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_DOWN_HTTPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v9, "0-1"

    invoke-virtual {v4, v8, v9}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 386
    sget-object v8, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPCV2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v9, "T"

    invoke-virtual {v4, v8, v9}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 387
    const-string v8, "Disable ext transport!"

    invoke-static {v1, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v4    # "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    :goto_0
    const-string/jumbo v4, "settings config load finish!"

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    const/4 v1, 0x1

    return v1

    .line 391
    .end local v0    # "gwUrlStr":Ljava/lang/String;
    .end local v3    # "enableAmnetSetting":Ljava/lang/Boolean;
    .end local v5    # "settingServerUrl":Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;
    .end local v6    # "enableSpdySetting":Ljava/lang/Boolean;
    .end local v7    # "gwUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    return v2
.end method

.method public notifyConfigureChangedEvent()V
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLatestVersion()I

    move-result v0

    .line 204
    .local v0, "latestVersion":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyConfigureChangedEvent. currentVersion=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], latestVersion=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Conf_TransportConfigureManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->notifyConfigureChangedEvent()V

    .line 208
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b()V

    .line 209
    return-void
.end method

.method public resetConfig(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "Conf_TransportConfigureManager"

    const-string/jumbo v1, "resetConfig"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->a:I

    .line 67
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected setAmnetConfigByDns(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 434
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 435
    .local v0, "configureManager":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getAmnetDnsSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 436
    .local v2, "amnetDnsSetting":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 437
    return v3

    .line 439
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 440
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    return v3

    .line 443
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 444
    const-string v1, ":8903"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "Conf_TransportConfigureManager"

    if-eqz v1, :cond_2

    .line 445
    const-string/jumbo v1, "setAmnetConfigByDns port is 8903, don\'t need to shake hands"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_HS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v4, "F"

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_HS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v4, "T"

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 450
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAmnetConfigByDns finish,  amnetDnsSetting=["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v1, 0x1

    return v1
.end method

.method protected setAmnetConfigByGwUrl(Landroid/content/Context;Ljava/lang/String;Ljava/net/URL;Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gwUrlStr"    # Ljava/lang/String;
    .param p3, "gwUrl"    # Ljava/net/URL;
    .param p4, "configureManager"    # Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    .line 455
    invoke-static {p3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOnlineUrl(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isRCVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v1, "mygwrc.alipay.com:443"

    invoke-virtual {p4, v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v1, "mygw.alipay.com:443"

    invoke-virtual {p4, v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_1
    invoke-static {p3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPreUrl(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v1, "mygwpre.alipay.com:443"

    invoke-virtual {p4, v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {p3}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "T"

    if-eq v0, v1, :cond_4

    .line 465
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p3}, Ljava/net/URL;->getPort()I

    move-result v0

    const/16 v1, 0x22c7

    if-ne v0, v1, :cond_3

    .line 467
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_HS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v1, "F"

    invoke-virtual {p4, v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_3
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_HS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p4, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_4
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":443"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_HS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p4, v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 476
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableAmnetSetting gw_url=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] mapping to amnet_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {p4, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conf_TransportConfigureManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public updateConfig(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    const-string/jumbo v0, "sdkSharedSwitch"

    const-string v1, "Conf_TransportConfigureManager"

    const-string/jumbo v2, "updateConfig"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->d(Landroid/content/Context;)V

    .line 83
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->clearConfig()V

    .line 84
    const-string/jumbo v2, "netsdk_normal_switch"

    invoke-super {p0, p1, v0, v2}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    const-string v2, "android_network_core"

    invoke-super {p0, p1, v0, v2}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b(Landroid/content/Context;)V

    .line 87
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->isLoadedConfig()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    .line 87
    return v0

    .line 92
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    .line 93
    nop

    .line 94
    const/4 v0, 0x0

    return v0

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->notifyConfigureChangedEvent()V

    throw v0
.end method

.method public updateConfig(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "clear"    # Z

    .line 98
    const-string/jumbo v0, "sdkSharedSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateConfig json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Conf_TransportConfigureManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz p3, :cond_0

    .line 101
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->clearConfig()V

    .line 103
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->d(Landroid/content/Context;)V

    .line 104
    const-string/jumbo v1, "netsdk_normal_switch"

    invoke-super {p0, p1, v0, v1}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    const-string v1, "android_network_core"

    invoke-super {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->updateFromJsonStrAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->b(Landroid/content/Context;)V

    .line 107
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->isLoadedConfig()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->delayNotifyConfigureChangedEvent()V

    .line 107
    return v0

    .line 112
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->delayNotifyConfigureChangedEvent()V

    .line 113
    nop

    .line 114
    const/4 v0, 0x0

    return v0

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->delayNotifyConfigureChangedEvent()V

    throw v0
.end method

.method public updateConfig(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Ljava/util/Map;
    .param p3, "switchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateConfig map config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conf_TransportConfigureManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->d(Landroid/content/Context;)V

    .line 128
    const-string/jumbo v0, "sdkSharedSwitch"

    invoke-super {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->partialUpdateFromMapAndSave(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    invoke-super {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->isLoadedConfig()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->delayNotifyConfigureChangedEvent()V

    .line 129
    return v0

    .line 133
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->delayNotifyConfigureChangedEvent()V

    .line 134
    nop

    .line 135
    const/4 v0, 0x0

    return v0

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->delayNotifyConfigureChangedEvent()V

    throw v0
.end method
