.class public Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;
.super Lcom/alipay/mobile/h5container/service/UcService;
.source "UcServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UcService"


# instance fields
.field private mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/UcService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static isInLiteIdleTask()Z
    .locals 2

    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h5_tiny_initUc_idleTask"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized registerUcInitSuccessReceiver(Z)V
    .locals 4
    .param p1, "enableHA"    # Z

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 76
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 82
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->onUcInitAbandonedInLiteProcess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    .local v0, "thr":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "H5UcService"

    const-string v2, "call PerformanceLogger.setUcInitAbandoned() error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->mUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "uc_init_success_in_main"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    monitor-exit p0

    return-void

    .line 74
    .end local p0    # "this":Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;
    .end local p1    # "enableHA":Z
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public createWebView(Landroid/content/Context;Z)Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enableHA"    # Z

    .line 212
    const-string v0, "H5UcService"

    const-string v1, "createWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->init(Z)Z

    .line 216
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v1

    .line 217
    .local v1, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    if-eqz v2, :cond_0

    .line 218
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->uploadUcRetryResult(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    goto :goto_0

    .line 220
    .end local v1    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :catchall_0
    move-exception v1

    .line 221
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "create uc webview exception."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    .line 223
    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->initUcNormal:Z

    .line 225
    const/4 v3, 0x0

    .line 226
    .local v3, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 227
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    .line 228
    const-string v2, "H5_UC_CREATE_FAILED"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v4, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isTinyApp"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    .line 231
    const-string v5, "ucVersion"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ext0"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 228
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    move-object v1, v3

    .line 234
    .end local v3    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .local v1, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :goto_0
    const-string v2, "createWebView end"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-object v1
.end method

.method public createWebViewForNebulaX(Landroid/content/Context;ZZ)Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enableHA"    # Z
    .param p3, "usedForEmbed"    # Z

    .line 182
    const-string v0, "H5UcService"

    const-string v1, "createWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->init(Z)Z

    .line 186
    const/4 v1, 0x1

    invoke-static {p1, v1, p3}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->getInstance(Landroid/content/Context;ZZ)Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    move-result-object v2

    .line 187
    .local v2, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    sget-boolean v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    if-eqz v3, :cond_0

    .line 188
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->uploadUcRetryResult(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    goto :goto_0

    .line 190
    .end local v2    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :catchall_0
    move-exception v1

    .line 191
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "create uc webview exception."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    .line 193
    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->initUcNormal:Z

    .line 195
    const/4 v3, 0x0

    .line 196
    .local v3, "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 197
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    .line 198
    const-string v2, "H5_UC_CREATE_FAILED"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v4, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isTinyApp"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    .line 201
    const-string v5, "ucVersion"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ext0"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 198
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    move-object v2, v3

    .line 204
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    .restart local v2    # "webView":Lcom/alipay/mobile/nebulauc/impl/UCWebView;
    :goto_0
    const-string v1, "createWebView end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-object v2
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 259
    invoke-static {p1}, Lcom/uc/webview/export/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 241
    invoke-static {p1}, Lcom/uc/webview/export/extension/UCCore;->getResponseByUrl(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    .line 242
    .local v0, "wrs":Lcom/uc/webview/export/WebResourceResponse;
    if-nez v0, :cond_0

    .line 243
    const/4 v1, 0x0

    return-object v1

    .line 245
    :cond_0
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/uc/webview/export/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getUcVersion()Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Z)Z
    .locals 6
    .param p1, "enableHA"    # Z

    .line 134
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->isInLiteIdleTask()Z

    move-result v0

    const-string v1, "H5UcService"

    if-eqz v0, :cond_2

    .line 135
    const-string v0, "detect lite idleTask!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->enablePreheadInit()Z

    move-result v0

    const-string v2, "not trigger idle task because uc version changed!"

    const-string v3, "lite_blocked"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getLastVersionDecompressDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "lastSuccessVersion":Ljava/lang/String;
    if-eqz v0, :cond_1

    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->registerUcInitSuccessReceiver(Z)V

    .line 143
    const-string v1, "0"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v4

    .line 147
    .end local v0    # "lastSuccessVersion":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    const-string v5, "KEY_LAST_SUCCESS_ODEX_VERSION"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0    # "lastSuccessVersion":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 149
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->registerUcInitSuccessReceiver(Z)V

    .line 151
    const-string v1, "1"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return v4

    .line 157
    :cond_1
    const-string v2, "KEY_MAIN_UCODEX_INIT_SUCCESS"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    const-string v2, "not trigger idle task because main process uc not init!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;->registerUcInitSuccessReceiver(Z)V

    .line 160
    const-string v1, "2"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return v4

    .line 164
    .end local v0    # "lastSuccessVersion":Ljava/lang/String;
    :cond_2
    const-string v0, "uc_init"

    const-string v2, "UcServiceImpl.init.start"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->init(Z)Z

    move-result v2

    .line 166
    .local v2, "result":Z
    const-string v3, "UcServiceImpl.init.end"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 168
    .local v0, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "h5_action_uc_init_finish"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "result"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    .line 173
    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->initUcNormal:Z

    .line 175
    invoke-virtual {v0, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 176
    return v2
.end method

.method public initUC7zSo()Ljava/lang/String;
    .locals 1

    .line 249
    const-string v0, "unsupport"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 50
    const-string v0, "uc_init"

    const-string v1, "UcServiceImpl.onCreate()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "H5UcService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 54
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5HttpCacheProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulauc/provider/UCHttpCacheProvider;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulauc/provider/UCHttpCacheProvider;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 64
    const-string v0, "H5UcService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
