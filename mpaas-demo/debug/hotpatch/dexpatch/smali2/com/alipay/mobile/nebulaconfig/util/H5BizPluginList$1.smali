.class final Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;
.super Ljava/util/LinkedList;
.source "H5BizPluginList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 21

    .line 31
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/LinkedList;-><init>()V

    .line 35
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-mobilesdk-liteprocess"

    const-string v3, "com.alipay.mobile.liteprocess.perf.H5PerformancePlugin"

    const-string/jumbo v4, "page"

    const-string v5, "h5PageStarted|h5PageFinished|h5PageRender|pushWindow|h5PageClosed|onAppPerfEvent"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-wallet-h5worker"

    const-string v3, "com.alipay.mobile.worker.H5WorkerPlugin"

    const-string/jumbo v5, "service"

    const-string v6, "h5SessionResume|h5SessionPause|h5PageStart|h5PageFinishedSync|registerWorker|postMessage"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.worker.multiworker.TinyAppMultiJsWorkerPlugin"

    const-string v6, "createWorker|multiWorkerPostMessage|multiWorkerTerminate"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-wallet-nebula"

    const-string v3, "com.alipay.mobile.nebulacore.plugin.ApiDynamicPermissionPlugin"

    const-string v6, "internalAPI"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulacore.plugin.ui.H5TabBarPlugin"

    const-string/jumbo v6, "session"

    const-string/jumbo v7, "setTabBar"

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulacore.plugin.tinyapp.TinyAppUCFailPlugin"

    const-string/jumbo v7, "showUCFailDialog"

    invoke-direct {v1, v2, v3, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulacore.plugin.TinyAppCanvasApiPlugin"

    const-string/jumbo v7, "measureText"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-nebulaappproxy"

    const-string v7, "com.alipay.mobile.tinyappcommon.h5plugin.H5HideOptionMenuItemPlugin"

    const-string v8, "hideOptionMenuItem"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinymenu.H5ShowShareParamPlugin"

    const-string/jumbo v9, "setShowShareMenu|hideShareMenu"

    invoke-direct {v1, v3, v7, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5VConsolePlugin"

    const-string/jumbo v9, "shouldShowConsoleBtn|toggleDebugPanel|showToggleButton|clearStorage4Debug"

    invoke-direct {v1, v3, v7, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v7, "test.tinyapp.alipay.com.testlibrary.plugin.TestRouter"

    const-string/jumbo v9, "showPerformancePanel|hidePerformancePanel|pushWindow|onAppPerfEvent"

    invoke-direct {v1, v3, v7, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5MiniProgramOpenSettingPlugin"

    const-string/jumbo v9, "openSetting"

    invoke-direct {v1, v3, v7, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5MiniProgramGetSettingPlugin"

    const-string v9, "getSetting"

    invoke-direct {v1, v3, v7, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppBackHomePlugin"

    const-string/jumbo v9, "showBackHome|showBackToHomepage"

    invoke-direct {v1, v3, v7, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinymenu.H5HideOptionMenuItemPlugin"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5DebugConsolePlugin"

    const-string/jumbo v8, "tinyDebugConsole|sendMsgFromVConsoleToAppx"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.rpc.H5RpcPlugin"

    const-string/jumbo v8, "rpc"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.rpc.H5OpenRpcPlugin"

    const-string/jumbo v8, "openRpc"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getInsideType()Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    move-result-object v1

    sget-object v7, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    if-eq v1, v7, :cond_0

    .line 117
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.auth.H5OpenAuthPlugin"

    const-string v8, "getAuthCode|getAuthUserInfo|getComponentAuth|getBusinessAuth|getAuthorize"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.ui.H5PromptPlugin"

    const-string/jumbo v8, "prompt"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5ShareImageUrlPlugin"

    const-string v8, "getShareImageUrl"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.snapshot.TinyAppSnapshotPlugin"

    const-string/jumbo v8, "saveSnapshot|pushWindow|exitSession|h5PagePause|switchTab|h5PageBack"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppJSApiInterceptPlugin"

    const-string v8, "jsapiOnComplete|jsapiOnInvoke|h5PageClosed"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppRequestProxyPlugin"

    const-string v8, "httpRequest|request"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5MiniProgramNavigationPlugin"

    const-string/jumbo v8, "navigateToMiniProgram|navigateBackMiniProgram"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppCommonInfoPlugin"

    const-string/jumbo v8, "setAppxVersion"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.logging.TinyLoggingConfigPlugin"

    const-string/jumbo v8, "trackerConfig"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.config.ConfigPlugin"

    const-string v8, "configService.getConfig|getClientConfig"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppMiniServicePlugin"

    const-string/jumbo v8, "navigateToMiniService|navigateBackFromMiniService|startMiniService"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.rpc.H5TinyRpcPlugin"

    const-string/jumbo v8, "tinyRpc"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.ws.H5WebSocketConnectPlugin"

    const-string v8, "connectSocket"

    invoke-direct {v1, v3, v7, v6, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.ws.H5WebSocketClosePlugin"

    const-string v8, "closeSocket"

    invoke-direct {v1, v3, v7, v6, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.ws.H5WebSocketSendMsgPlugin"

    const-string/jumbo v8, "sendSocketMessage"

    invoke-direct {v1, v3, v7, v6, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.navigate.H5AppPlugin"

    const-string/jumbo v8, "startApp|exitApp"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.ui.H5AppearancePlugin"

    const-string/jumbo v8, "setBackgroundColor|setBackgroundTextStyle|setBackButton"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppRequestPlugin"

    const-string/jumbo v8, "request|operateRequestTask"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinymenu.TinyCustomPopMenuPlugin"

    const-string/jumbo v8, "setCustomPopMenu"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyShareAlipayContactPlugin"

    const-string/jumbo v8, "shareToAlipayContact"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.rpc.H5TinyAppxRpcPlugin"

    const-string v8, "appxrpc"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppUpdatePlugin"

    const-string/jumbo v8, "updateApp"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppMTopPlugin"

    const-string/jumbo v8, "sendMtop|getTBCode|getTBSessionInfo|setTBSessionInfo"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppUpdateManagerPlugin"

    const-string v8, "applyUpdate|registerUpdateManager"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyOpenThirdPartApp"

    const-string v8, "launchApp"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyTlsWhiteListPlugin"

    const-string v8, "downloadFile|uploadFile|httpRequest|request|connectSocket|h5PageShouldLoadUrl"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.subpackage.TinyAppSubPackagePlugin"

    const-string v8, "loadSubPackage"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5PkgResPlugin"

    const-string v8, "addPkgRes"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5TinyAppRemoteLogPlugin"

    const-string/jumbo v8, "tinyAppStandardLog"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulacore.plugin.tinyapp.TinyAppRunScenePlugin"

    const-string v8, "getRunScene"

    invoke-direct {v1, v2, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getInsideType()Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    if-eq v1, v2, :cond_1

    .line 269
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppAlipayUpdataPlugin"

    const-string/jumbo v7, "updateAlipayClient"

    invoke-direct {v1, v3, v2, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "com.alipay.mobile.nebulaappproxy.plugin.ui.AntUILinkagePickerPlugin"

    const-string v7, "antUIGetCascadePicker"

    invoke-direct {v1, v3, v2, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5TmallGeniePlugin"

    const-string v7, "genieForTaobaoStartLink|genieForTaobaoStopLink"

    invoke-direct {v1, v3, v2, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyNavigatorToAlipayPagePlugin"

    const-string/jumbo v7, "navigateToAlipayPage"

    invoke-direct {v1, v3, v2, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.TinyAppTypePlugin"

    const-string v7, "getTinyAppType"

    invoke-direct {v1, v3, v2, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "com.alipay.mobile.nebulaappproxy.template.TinyAppTemplateConfigPlugin"

    const-string v7, "getExtConfig"

    invoke-direct {v1, v3, v2, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5TinyPagePlugin"

    const-string v7, "getStartupParams"

    invoke-direct {v1, v3, v2, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-wallet-nebulauc"

    const-string v7, "com.alipay.mobile.nebulauc.plugin.H5UCPlugin"

    const-string/jumbo v8, "setServiceWorkerID|clearServiceWorker|pushSWMessage|flushUcLog|appendUCCorePerformanceData"

    invoke-direct {v1, v2, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulauc.plugin.H5UpdateUCCorePlugin"

    const-string v8, "downloadUCCore|reloadUCCore"

    invoke-direct {v1, v2, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-nebuladebug"

    const-string/jumbo v8, "test.tinyapp.alipay.com.testlib.router.NebulaTestPlugin"

    const-string/jumbo v9, "monitorH5Performance|h5PageFinishedSync|h5PerformanceError|h5PerformanceInfo|h5PageBack|h5Performance.coverage"

    invoke-direct {v1, v7, v8, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulauc.plugin.H5WirelessDebugPlugin"

    const-string/jumbo v8, "openWirelessDebug"

    invoke-direct {v1, v2, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v1

    const-string/jumbo v2, "scan"

    if-eqz v1, :cond_4

    .line 341
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.inside.contact.H5ContactPlugin"

    const-string v8, "contact"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.inside.plugin.H5StartPagePlugin"

    const-string/jumbo v8, "startH5App"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.inside.plugin.H5ScanPlugin"

    invoke-direct {v1, v3, v7, v5, v2}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.inside.plugin.H5APDataStoragePlugin"

    const-string/jumbo v8, "setAPDataStorage|getAPDataStorage|removeAPDataStorage|clearAPDataStorage|switchControl|getSwitchControlStatus"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_4
    sget-object v1, Lcom/alipay/mobile/nebula/util/InsideUtils;->INSIDE_TYPE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    sget-object v7, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    if-ne v1, v7, :cond_5

    .line 366
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.nebulaappproxy.inside.plugin.H5PhotoPlugin"

    const-string/jumbo v8, "photo"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_5
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-businesscommon-commonbiz"

    const-string v8, "com.alipay.mobile.h5plugin.H5LocationPlugin"

    const-string v9, "getLocation|startIndoorLocation|stopIndoorLocation|prefetchLocation|openLocation|chooseLocation|startContinuousLocation|stopContinuousLocation|getCurrentLocation|geoCode|reGeoCode|beehiveGetPOI"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.h5plugin.H5ResidentLocationPlugin"

    const-string v9, "getResidentLocation"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5SharePlugin"

    const-string/jumbo v9, "startShare|share|wechatShare|shareToChannel|shareToChannelSafety|systemShare|shareToChannelForSearchCode|shareToChannelForSearchCodeSafety"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.h5plugin.GuideAlivePlugin"

    const-string/jumbo v9, "showAuthGuide|hasPermissionGuidePath|startPermissionPage|getPermissionGuideContent|getSchemeAuthInfo"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.h5plugin.H5VoicePlugin"

    const-string/jumbo v9, "startRealtimeASR|stopRealtimeASR|startTTS"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-aompdevice"

    const-string v8, "com.alipay.mobile.aompdevice.systeminfo.h5plugin.H5WalletSystemInfoPlugin"

    const-string v9, "getSystemInfo|watchShake"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.wifi.h5plugin.H5SendUdpMsgPlugin"

    const-string/jumbo v9, "sendUdpMessage|getSSID"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.nfc.h5plugin.H5HCEPlugin"

    const-string v9, "getHCEState|startHCE|stopHCE|sendHCEMessage"

    invoke-direct {v1, v7, v8, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.deviceinfo.h5plugin.TinyAppDeviceInfoPlugin"

    const-string v9, "getDeviceInfo"

    invoke-direct {v1, v7, v8, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.phonecall.TinyMakePhoneCallPlugin"

    const-string/jumbo v9, "makePhoneCall"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.vibrate.H5VibratePlugin"

    const-string/jumbo v9, "vibrateLong|vibrateShort"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.wifi.h5plugin.H5WifiManagerPlugin"

    const-string/jumbo v9, "startWifi|stopWifi|connectWifi|getWifiList|getConnectedWifi"

    invoke-direct {v1, v7, v8, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.common.H5MemoryWarningPlugin"

    const-string v9, "h5PageStarted"

    invoke-direct {v1, v7, v8, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const/4 v15, 0x0

    const-string v11, "android-phone-wallet-aompdevice"

    const-string v12, "com.alipay.mobile.aompdevice.battery.TinyGetBatteryInfoPlugin"

    const-string/jumbo v13, "service"

    const-string v14, "getBatteryInfo"

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.orientation.h5plugin.TinyDeviceOrientationPlugin"

    const-string/jumbo v9, "startDeviceMotionListening|stopDeviceMotionListening"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.userdata.TinyOpenUserDataPlugin"

    const-string v9, "getOpenUserData"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.telephonyinfo.h5plugin.H5TelephonyInfoPlugin"

    const-string v9, "getCarrierName"

    invoke-direct {v1, v7, v8, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.rootstatus.h5plugin.H5DeviceRootStatusPlugin"

    const-string v9, "isSystemRoot"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.phonecontact.h5plugin.H5PhoneContactAddPlugin"

    const-string v9, "addPhoneContact"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "android-phone-wallet-aompservice"

    const-string v9, "com.alipay.mobile.aompservice.templatemsg.H5RequestTemplateDataPlugin"

    const-string/jumbo v10, "requestTemplateData"

    invoke-direct {v1, v8, v9, v4, v10}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v9, "com.alipay.mobile.aompdevice.wifi.h5plugin.H5WifiInfoPlugin"

    const-string v10, "getWifiInfo"

    invoke-direct {v1, v7, v9, v4, v10}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v9, "com.alipay.mobile.aompservice.lifeinfo.h5plugin.H5LifestylePlugin"

    const-string v10, "getLifestyleInfo"

    invoke-direct {v1, v8, v9, v4, v10}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v9, "com.alipay.mobile.aompservice.textsecurity.H5MySecurityPlugin"

    const-string/jumbo v10, "textRiskIdentification"

    invoke-direct {v1, v8, v9, v4, v10}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.aompdevice.shake.h5plugin.H5SensorPlugin"

    const-string/jumbo v9, "watchShake"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-yunoswea"

    const-string v8, "com.alipay.mobile.tinyappservice.h5plugin.H5IotCreateServicePlugin"

    const-string v9, "iotCreateService"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-yunoswea"

    const-string v8, "com.alipay.mobile.tinyappservice.h5plugin.H5IotCheckServicePlugin"

    const-string v9, "iotCheckService"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-beeaicomponent"

    const-string v8, "com.alipay.wallet.beeai.h5plugin.speech.H5SpeechPlugin"

    const-string/jumbo v9, "startSpeech|stopSpeech|isSpeechAvailable|cancelSpeech"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-beephoto"

    const-string v8, "com.alipay.mobile.beehive.plugin.H5CompressImagePlugin"

    const-string v9, "compressImage"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "android-phone-wallet-beeaudio"

    const-string v9, "com.alipay.mobile.beehive.audio.plugin.BeeH5VoiceRecordPlugin"

    const-string/jumbo v10, "startAudioRecord|stopAudioRecord|cancelAudioRecord|pauseAudioRecord|resumeAudioRecord|getAvailableAudioSources|h5PagePause|h5PageClosed"

    invoke-direct {v1, v8, v9, v4, v10}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v9, "android-phone-wallet-beehive"

    const-string v10, "com.alipay.mobile.beehive.plugins.video.VideoInfoPlugin"

    const-string v11, "getPosterFromVideoUrl"

    invoke-direct {v1, v9, v10, v5, v11}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "com.alipay.mobile.beehive.plugin.H5PhotoPlugin"

    const-string v11, "imageViewer|mediaBrowser"

    invoke-direct {v1, v7, v10, v4, v11}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "android-phone-wallet-beecitypicker"

    const-string v11, "com.alipay.mobile.beehive.cityselect.impl.H5PickCityPlugin"

    const-string v12, "getCities|getCustomCities|beehive.getProvinceCitys|setLocatedCity"

    invoke-direct {v1, v10, v11, v4, v12}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "com.alipay.mobile.beehive.video.h5.H5BeeVideoPlayerPlugin"

    const-string v11, "h5PagePhysicalBack"

    invoke-direct {v1, v9, v10, v4, v11}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "com.alipay.mobile.beehive.audio.plugin.AudioForegroundPlayPlugin"

    const-string/jumbo v11, "playForegroundAudio|pauseForegroundAudio|stopForegroundAudio|seekForegroundAudio|destroyForegroundAudio|setForegroundAudioOption|getForegroundAudioOption|startMonitorForegroundAudio|stopMonitorForegroundAudio"

    invoke-direct {v1, v8, v10, v6, v11}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "com.alipay.mobile.beehive.plugin.H5ImageInfoPlugin"

    const-string v11, "getImageInfo"

    invoke-direct {v1, v7, v10, v4, v11}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 557
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "android-phone-wallet-beeaicomponent"

    const-string v11, "com.alipay.wallet.beeai.h5plugin.ocr.H5OCRPlugin"

    const-string/jumbo v12, "ocr|ocrIdCard|ocrGeneral|ocrBankCard|ocrVehicle|ocrBusinessLicense|ocrTrainTicket|ocrDriverLicense|ocrBusinessCard|ocrPassport|ocrVehiclePlate|ocrVin"

    invoke-direct {v1, v10, v11, v4, v12}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "com.alipay.mobile.beehive.plugin.H5SaveVideoPlugin"

    const-string/jumbo v11, "saveVideoToPhotosAlbum"

    invoke-direct {v1, v7, v10, v4, v11}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "com.alipay.mobile.beehive.plugins.capture.CapturePlugin"

    const-string v11, "BEEPhotoCapture"

    invoke-direct {v1, v9, v10, v4, v11}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "com.alipay.mobile.beehive.plugin.VideoSelectPlugin"

    const-string v11, "BEEVideoCapture|chooseVideo"

    invoke-direct {v1, v7, v10, v4, v11}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v10, "com.alipay.mobile.beehive.plugin.ChooseImagePlugin"

    const-string v11, "chooseImage"

    invoke-direct {v1, v7, v10, v4, v11}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.beehive.audio.plugin.AudioBackgroundPlayPlugin"

    const-string/jumbo v10, "playBackgroundAudio|pauseBackgroundAudio|stopBackgroundAudio|seekBackgroundAudio|getBackgroundAudioPlayerState|startMonitorBackgroundAudio|stopMonitorBackgroundAudio|getBackgroundAudioOption|setBackgroundAudioOption"

    invoke-direct {v1, v8, v7, v5, v10}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.beehive.plugins.finchannel.FinChannelIconPlugin"

    const-string v8, "beehive.getChannelIcon"

    invoke-direct {v1, v9, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-beeimageedit"

    const-string v8, "com.alipay.mobile.beehive.imageedit.plugin.ImageEditPlugin"

    const-string v9, "editImage"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-beecapture"

    const-string v8, "com.alipay.mobile.beehive.capture.plugin.CaptureForIndustryPlugin"

    const-string v9, "CaptureForIndustry|UpdateCaptureUI|CaptureAction"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-nebulabiz"

    const-string v8, "com.alipay.mobile.nebulabiz.H5OpenBizPlugin"

    const-string/jumbo v9, "saveBizResult"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.track.H5TrackPlugin"

    const-string v9, "h5SessionStart|h5SessionExit|h5PageStart|h5PageClosed|h5PagePause|h5PageStarted|reportData|page.bizReady|monitorH5Performance|onAppPerfEvent"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5PreRpcPlugin"

    const-string/jumbo v9, "queryPreRpcRequest"

    invoke-direct {v1, v7, v8, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5DownloadPlugin"

    const-string v9, "h5PageDownload|downloadApp"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 632
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5TinyAppPlugin"

    const-string/jumbo v9, "restartTinyApp"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 636
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5PhotoPlugin"

    const-string/jumbo v9, "photo"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 640
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5AppPackagePlugin"

    const-string v9, "installApp"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5NetworkRepairPlugin"

    const-string/jumbo v9, "startRepair|h5PageReload"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v11, "android-phone-wallet-nebulabiz"

    const-string v12, "com.alipay.mobile.nebulabiz.H5PayPlugin"

    const-string/jumbo v13, "page"

    const-string v14, "h5PageShouldLoadUrl|specialCashPay"

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5SyncPlugin"

    const-string/jumbo v9, "registerSync|unregisterSync|responseSyncNotify|refreshSyncSkey"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5ServicePlugin"

    const-string v9, "login|checkApp|getConfig|thirdPartyAuth|getThirdPartyAuthcode|keyboardBecomeVisible|h5PageJsCall|h5PageShouldLoadUrl|h5PageLoadUrl"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5MainLinkPlugin"

    const-string v9, "h5MainLink"

    invoke-direct {v1, v7, v8, v6, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 665
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5FavoritesPlugin"

    const-string v9, "h5ToolbarMenuBt|h5PageScriptReady"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 669
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5ReportPlugin"

    const-string v9, "h5ToolbarMenuBt"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5BindTbPlugin"

    const-string v9, "bindTB"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 677
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5LongClickOptionPlugin"

    const-string v9, "h5PageLongClick"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5APDataStoragePlugin"

    const-string/jumbo v9, "setAPDataStorage|getAPDataStorage|removeAPDataStorage|clearAPDataStorage|switchControl|getSwitchControlStatus"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5PkgInfoPlugin"

    const-string v9, "getPackageInfo|isInstalledPkg|installPkg|isDownloadedPkg|installPP|downloadApp|isDownloadingPkg"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5UserInfoPlugin"

    const-string v9, "getUserInfo|getLdcUserInfo"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5DeviceTokenPlugin"

    const-string v9, "getAppToken"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5AlertPlugin"

    const-string v9, "limitAlert"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 701
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulabiz.H5ClientInfoPlugin"

    const-string v9, "getClientInfo"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.mobile.nebulaappproxy.plugin.tinyapp.H5ServerTimePlugin"

    const-string v9, "getServerTime"

    invoke-direct {v1, v3, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 709
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulabiz.H5AppInfoPlugin"

    const-string v8, "getAppInfo"

    invoke-direct {v1, v7, v3, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulabiz.H5AllContactsPlugin"

    const-string v8, "getAllContacts"

    invoke-direct {v1, v7, v3, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulabiz.H5ShortCutPlugin"

    const-string/jumbo v8, "setShortCut|removeShortCut|isSupportShortCut|haveShortCut"

    invoke-direct {v1, v7, v3, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 721
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulabiz.H5DTSchemePlugin"

    const-string v8, "getDTSchemeValue|setDTSchemeValue"

    invoke-direct {v1, v7, v3, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 725
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulabiz.H5RiskPlugin"

    const-string/jumbo v8, "riskAnalyze"

    invoke-direct {v1, v7, v3, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 729
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulabiz.H5WalletToastPlugin"

    const-string v8, "hideToast|toast"

    invoke-direct {v1, v7, v3, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 734
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.nebulabiz.afw.AFWLaunchHelperPlugin"

    const-string v8, "afw.checkDownload|afw.saveConfig|afw.stopSilentTask|afw.installApp"

    invoke-direct {v1, v7, v3, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-offlinepay"

    const-string v7, "com.alipay.android.phone.offlinepay.h5plugin.H5OfflineCodePlugin"

    const-string v8, "H5OfflineCodePlugin.generateCode|H5OfflineCodePlugin.queryNfcStatus|H5OfflineCodePlugin.queryNfcDeviceStatus|H5OfflineCodePlugin.openNfc|H5OfflineCodePlugin.closeNfc"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 746
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-offlinepay"

    const-string v7, "com.alipay.android.phone.offlinepay.h5plugin.H5CryptoPlugin"

    const-string v8, "crypto.sm2Sign|crypto.sm2Verify|crypto.ecdsaSign|crypto.ecdsaVerify|crypto.sm3Digest|crypto.sm3Verify|crypto.sha1Digest|crypto.sha1Verify|crypto.sha256Digest|crypto.sha256Verify"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-o2ocommon"

    const-string v7, "com.alipay.android.phone.o2o.o2ocommon.h5bridge.H5PluginRoute"

    const-string v8, "h5PageError|rewardComment|uploadToDjango|getKBLocation|openKBLocationSetting|controlKBLocationBar|openCitySelectPage|getRedDotSyncData|writeRedDotSyncData|getO2ODeviceToken|getKBCityInfo"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-o2omaya"

    const-string v7, "com.alipay.android.phone.o2o.maya.nebula.MayaPlugin"

    const-string/jumbo v8, "maya_display|maya_hide|maya_close|maya_embedded|maya_setModalThreshold|maya_operateViews|maya_syncOperateViews|maya_updateConfig|postO2ONotification|maya_feedback"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 766
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-mobilesdk-router"

    const-string v7, "com.alipay.mobile.pagerouter.impl.PagerRouterH5Plugin"

    const-string v8, "h5PageShouldLoadUrl"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.android.phone.securitycommon"

    const-string v7, "com.alipay.mobile.security.zim.plugin.ZIMH5Plugin"

    const-string/jumbo v8, "zimIdentity"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 776
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-mobilesdk-mtop"

    const-string v7, "com.alipay.android.phone.mobilesdk.mtop.H5MtopPlugin"

    const-string/jumbo v8, "mtop"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 782
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-mob"

    const-string v7, "com.alipay.mobile.plugin.H5ScanPlugin"

    invoke-direct {v1, v3, v7, v5, v2}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 788
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "com-android-mobile-tradeplugin"

    const-string v3, "com.android.mobile.tradeplugin.h5plugin.VideoOpenAccountPlugin"

    const-string/jumbo v7, "videoRecordNative|stockPhotoNative|stockCodeCache|stockRemoteVideo|stockLimitPhoto"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 794
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-wallet-transferapp"

    const-string v3, "com.alipay.transfer.api.TFShareH5Plugin"

    const-string v7, "TFShareWithCopyMgr|AlipayTransfer.validateName"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 800
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-wallet-socialcommonsdk"

    const-string v3, "com.alipay.mobile.socialcommonsdk.bizdata.plugin.H5ContactPlugin"

    const-string v7, "chooseContact|contact|alipayContact|contactSync"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 804
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.socialcommonsdk.bizdata.plugin.SocialH5ContactPluginNew"

    const-string v7, "APSocialNebulaPlugin.selectContactJSAPI|APSocialNebulaPlugin.queryGroupInfo|APSocialNebulaPlugin.saveSocialSettings|APSocialNebulaPlugin.queryGroupMemberCount|APSocialNebulaPlugin.queryGroupMembers"

    invoke-direct {v1, v2, v3, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 812
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.socialcommonsdk.api.plugin.SocialH5ContactPlugin"

    const-string v7, "APSocialNebulaPlugin.selectMultiContactJsApi|APSocialNebulaPlugin.shouldShowAcceptFriendWithUserId|APSocialNebulaPlugin.isMyFriend|APSocialNebulaPlugin.updateRecentListExternal|APSocialNebulaPlugin.removeRecentListExternal|APSocialNebulaPlugin.queryRecentStatusExternal|APSocialNebulaPlugin.queryExistingAccounts|APSocialNebulaPlugin.afterAcceptFriendRequest|APSocialNebulaPlugin.queryMobileContactAuthStatus|APSocialNebulaPlugin.queryFriendAndKnownMobileContactList|APSocialNebulaPlugin.addFriend|APSocialNebulaPlugin.queryMyGroups|APSocialNebulaPlugin.queryMyFriends|APSocialNebulaPlugin.queryAndSelectAccount"

    invoke-direct {v1, v2, v3, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 829
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.socialcommonsdk.api.plugin.SocialH5RewardPlugin"

    const-string v7, "APSocialNebulaPlugin.rewardJsApi"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 833
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.socialcommonsdk.api.plugin.SocialH5ReportPlugin"

    const-string v7, "APSocialNebulaPlugin.reportChatMessages"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 837
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-socialfeedsmob"

    const-string v7, "com.alipay.android.phone.wallet.socialfeedsmob.plugin.SocialPublishFeedNebulaPlugin"

    const-string v8, "SocialPublishFeedNebulaPlugin.publishFeedJsApi"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 841
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.socialcommonsdk.api.plugin.SocialH5ChatPlugin"

    const-string v7, "APSocialNebulaPlugin.shareMessageDirect|APSocialNebulaPlugin.socialChatScene|APSocialNebulaPlugin.mockChatMessage|APSocialNebulaPlugin.showShareDialog"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v2, "multimedia-jsbridge"

    const-string v3, "com.alipay.multimedia.js.image.H5DecodeApmlPathPlugin"

    const-string v7, "decodeApmlPath"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 854
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.bundle.H5ModuleDownloadPlugin"

    const-string v7, "loadDynamicModule"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 859
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.image.H5CompositeImagePlugin"

    const-string v7, "compositeImage"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 863
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.image.H5PaintImageFilterPlugin"

    const-string/jumbo v7, "paintImage"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.image.H5ImageColorPlugin"

    const-string v7, "imageColor"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 871
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.image.H5ImageComplexityPlugin"

    const-string v7, "imageComplexity"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 875
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.image.H5ImageBuildUrlPlugin"

    const-string v7, "buildUrl"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 879
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.image.H5UploadImagePlugin"

    const-string/jumbo v7, "uploadImage|downloadImage"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 883
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.voice.H5VoicePlayPlugin"

    const-string/jumbo v7, "startPlayAudio|pauseAudioPlay|resumeAudioPlay|stopAudioPlay"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 887
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.voice.H5VoiceUploadPlugin"

    const-string/jumbo v7, "uploadAudio"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 892
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.video.H5VideoUploadPlugin"

    const-string/jumbo v7, "uploadVideo"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 896
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.video.H5VideoCompressPlugin"

    const-string v7, "compressVideo"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 901
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.file.H5FileUploadPlugin"

    const-string/jumbo v7, "uploadMFile"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.file.H5FileDownloadPlugin"

    const-string v7, "downloadMFile|downloadMFileWithUrl|cancleDownloadFile|getStatusOfFile"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 909
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.cache.H5CachePlugin"

    const-string/jumbo v7, "queryMultimediaFileCache|queryMultimediaImageCache"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.multimedia.js.artvc.H5ArtvcPlugin"

    const-string v7, "createToyMachineVC|connectToToyMachine|leaveToyMachine|switchToyMachineCamera|fetchLiveUrl|createP2pViewController|createRoom|leaveRoom|invite|startFunctionCall|endFunctionCall|sendTextOrEvent|switchCamera|takeSnapshot|muteMicrophone|switchVideoView|minimizeVideoView|onEventData"

    invoke-direct {v1, v2, v3, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-wallet-globalsearch"

    const-string v3, "com.alibaba.android.babylon.search.H5ParamsPlugIn"

    const-string/jumbo v7, "setGlobalSearchArgs"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 924
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-wallet-onsitepay"

    const-string v3, "com.alipay.mobile.onsitepay9.payer.H5InterceptTouchEventPlugin"

    const-string/jumbo v7, "requestDisallowInterceptTouchEvent"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 930
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-publicplatformcommon"

    const-string v7, "com.alipay.android.phone.publicplatform.common.service.H5PublicPlatformPlugin"

    const-string v8, "addFollow|removeFollow|getRecommendList|getPPFollowStatus|showLifeH5Banner|getLifeHomeMsg"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 936
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-socialcardsdk"

    const-string v8, "com.alipay.mobile.socialcardsdk.api.plugin.ShareRouteH5Plugin"

    const-string v9, "ShareRouteH5Plugin.shareJsApi"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-socialcardsdk"

    const-string v8, "com.alipay.mobile.socialcardsdk.api.plugin.QuerryRemindH5Plugin"

    const-string/jumbo v9, "queryUnreadRemindCount"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-favorite"

    const-string v8, "com.alipay.android.phone.personalapp.favorite.jsapi.H5FavoritesPlugin"

    const-string v9, "AlipayFavorite.addFavoriteItem|AlipayFavorite.isItemAdded|AlipayFavorite.deleteItem"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 957
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-ppchat"

    const-string v8, "com.alipay.mobile.pubsvc.life.view.webview.H5LifeCommentPlugin"

    const-string/jumbo v9, "setupSocialComment|setupSocialCommentNOEmojiBtn|hiddenSocialComment|closeSocialComment|modifySocialCommentPlaceholder"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 963
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v1, v7, :cond_6

    .line 964
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-apble"

    const-string v8, "com.alipay.android.phone.bluetoothsdk.H5BlePlugin"

    const-string/jumbo v9, "openAPDeviceLib|closeAPDeviceLib|configAPDeviceLib|getAPDeviceInfos|sendDataToAPDevice|startScanAPDevice|stopScanAPDevice|connectAPDevice|disconnectAPDevice"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 971
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.android.phone.bluetoothsdk.better.ble.H5BetterBlePlugin"

    const-string/jumbo v9, "openBluetoothAdapter|closeBluetoothAdapter|getBluetoothAdapterState|startBluetoothDevicesDiscovery|stopBluetoothDevicesDiscovery|getBluetoothDevices|getConnectedBluetoothDevices|connectBLEDevice|disconnectBLEDevice|writeBLECharacteristicValue|readBLECharacteristicValue|notifyBLECharacteristicValueChange|getBLEDeviceServices|getBLEDeviceCharacteristics"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 979
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v8, "com.alipay.android.phone.bluetoothsdk.beacon.H5BeaconPlugin"

    const-string/jumbo v9, "startBeaconDiscovery|stopBeaconDiscovery|getBeacons"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 986
    :cond_6
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-o2ointlhome"

    const-string v8, "com.alipay.android.phone.wallet.o2ointl.h5.O2oIntlPerformanceH5Plugin"

    const-string/jumbo v9, "performanceMonitor"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 993
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.android.phone.publicplatform.common.service.H5LifePanelPlugin"

    const-string v8, "h5PageStarted"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 999
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.alipay.mobile.publicplatform.gray.GrayH5Plugin"

    const-string v8, "callBackLifeContentStatus"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1005
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-mobilecommon-falconrecmanager"

    const-string v7, "com.alipay.android.phone.falcon.aiinterface.FalconAIH5Plugin"

    const-string v8, "FalconAIRec|FalconAIModify"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1011
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string/jumbo v3, "multimedia-xmedia"

    const-string v7, "com.ant.phone.xmedia.hybrid.H5XMediaPlugin"

    const-string/jumbo v8, "startXMedia|stopXMedia"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1016
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-ppchat"

    const-string v7, "com.alipay.mobile.pubsvc.life.view.webview.H5LifeCityPlugin"

    const-string/jumbo v8, "switchCity"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1022
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-thirdparty-devicecenter"

    const-string v7, "com.aliyun.alink.business.devicecenter.extant.BoneDeviceWifiConfigurePlugin"

    const-string v8, "BoneDeviceWifiConfigure_getCurrentSsid|BoneDeviceWifiConfigure_startConfigure|BoneDeviceWifiConfigure_stopConfigure"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.aliyun.alink.business.devicecenter.extant.BoneDeviceHotspotConfigurePlugin"

    const-string v8, "BoneDeviceHotspotConfigure_isSupportedHotspot|BoneDeviceHotspotConfigure_autoSetupHotspot|BoneDeviceHotspotConfigure_closeHotspot|BoneDeviceHotspotConfigure_discoverDevices|BoneDeviceHotspotConfigure_stopDiscoverDevices|BoneDeviceHotspotConfigure_searchWifiList|BoneDeviceHotspotConfigure_stopSearchWifiList|BoneDeviceHotspotConfigure_switchToAccessPoint"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.aliyun.alink.business.devicecenter.extant.BoneDeviceDiscoveryPlugin"

    const-string v8, "BoneDeviceDiscovery_discoverDevices|BoneDeviceDiscovery_stopDiscoverDevices"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.aliyun.alink.business.devicecenter.extant.BoneDeviceAuthPlugin"

    const-string v8, "BoneDeviceAuth_authGetUuid|BoneDeviceAuth_authSetAuthToken"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1050
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-accountauthbiz"

    const-string v8, "com.alipay.mobile.security.h5.plugin.LoginH5Plugin"

    const-string v9, "launchWithLoginToken"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1055
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-securityapp"

    const-string v8, "com.alipay.mobile.recommend.firstlogin.plugin.VerifyH5Plugin"

    const-string/jumbo v9, "verifyAndEnable"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1061
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-fortunealertsdk"

    const-string v8, "com.alipay.android.fortune.service.fin.H5LastFinServicePlugin"

    const-string v9, "FortuneHome.getLastServiceIds|FortuneHome.setServiceIds"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1067
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-fortunealertsdk"

    const-string v8, "com.alipay.android.fortune.service.asset.AssetUnityCachePlugin"

    const-string v9, "FortuneHome.getAssetsCache"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1072
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-billhome"

    const-string v8, "com.alipay.mobile.bill.home.jsplugin.BillSelectionH5Plugin"

    const-string v9, "billApp.chooseBill"

    invoke-direct {v1, v7, v8, v5, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1077
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-securityapp"

    const-string v8, "com.alipay.mobile.rapidsurvey.plugin.RapidSurveyH5Plugin"

    const-string/jumbo v9, "questionaireJSAPI|questionaireH5Close|questionaireInProcessJSAPI"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1081
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-goldword"

    const-string v8, "com.alipay.android.phone.wallet.goldword.api.BatchBitmapGenerator"

    const-string v9, "gwGenerateBitmaps"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1087
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com-ali-money-shield-sdk-mssdkcleaner"

    const-string v8, "com.ali.money.shield.sdk.h5app.H5CleanerPlugin"

    const-string/jumbo v9, "qdclean.start|qdclean.stop|qdclean.clear|qdclean.getSdkInfo|qdclean.getScanData"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1093
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-thirdparty-infsword"

    const-string v8, "com.ali.money.shield.mssdk.api.MSSDKH5PluginForAlipay"

    const-string/jumbo v9, "mssdk.Security.checkDeviceRiskSync|mssdk.Security.isMoneyshieldInstalled|mssdk.Security.getInstalledMoneyshieldVersion|mssdk.Security.startMoneyshield|mssdk.Security.startMoneyshieldAntiVirus|mssdk.Security.getModuleState|mssdk.Security.setProtectState|mssdk.Security.getProtectState|mssdk.Security.unInstallVirus"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-o2ocommon"

    const-string v8, "com.alipay.android.phone.o2o.o2ocommon.util.semmonitor.core.h5plugin.H5SemLoggerPlugin"

    const-string/jumbo v9, "semLog"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1105
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-mobilesdk-monitor"

    const-string v8, "com.alipay.android.phone.mobilesdk.monitor.ueo.fulllink.H5AdvicePlugin"

    const-string v9, "h5PageStarted|h5PageFinished|h5PageClosed|pushWindow|monitorH5Performance|page.bizReady"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1112
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "android-phone-wallet-yunoswear"

    const-string v8, "com.alipay.android.phone.wear.SmartWearH5Plugin"

    const-string/jumbo v9, "smartWearSendMsg"

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1118
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v7, "com.aliyun.iot.breeze.alipayplugin.BreezePlugin"

    const-string v8, "com.aliyun.iot.breeze.startScan|com.aliyun.iot.breeze.stopScan|com.aliyun.iot.breeze.connect|com.aliyun.iot.breeze.disconnect|com.aliyun.iot.breeze.isReady|com.aliyun.iot.breeze.send|com.aliyun.iot.breeze.sendNoResponse|com.aliyun.iot.breeze.alipaySend"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-billhome"

    const-string v7, "com.alipay.mobile.bill.home.jsplugin.BillDateSelectionH5Plugin"

    const-string v8, "billApp.selectDate"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com-alipay-android-phone-multimedia-apmmodelmanager"

    const-string v7, "com.alipay.android.phone.multimedia.apmmodelmanager.api.h5.H5ModelManagerPlugin"

    const-string v8, "downloadModelFile"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1136
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.onsitepay9.payer.H5OspAddPaymentResultEventPlugin"

    const-string/jumbo v7, "ospAddPaymentResultEvent"

    invoke-direct {v1, v2, v3, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1142
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-buscode"

    const-string v7, "com.alipay.android.phone.wallet.buscode.jsapi.TinyAppJsApiPlugin"

    const-string v8, "buscode_query_data_for_applet"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1148
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-buscode"

    const-string v7, "com.alipay.android.phone.wallet.buscode.metro.jsapi.MetroJsPlugin"

    const-string v8, "buscode_check_device|buscode_get_metro_records|buscode_goto_change_account|buscode_get_device_white_list"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-mobilesdk-mtop"

    const-string v7, "com.alipay.android.phone.mobilesdk.mtop.H5OpenMtopPlugin"

    const-string/jumbo v8, "openMtop"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1161
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-qengine"

    const-string v7, "com.antfortune.wealth.qengine.core.jsapi.QEH5Plugin"

    const-string v8, "StockQEH5PluginEventRegister|StockQEH5PluginEventUnregister"

    invoke-direct {v1, v3, v7, v4, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1166
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-socialfeedsmob"

    const-string v7, "com.alipay.android.phone.wallet.socialfeedsmob.plugin.SocialPublishProcessPlugin"

    const-string/jumbo v8, "socialPublishProcess"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1172
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-openplatformcommon"

    const-string v7, "com.alipay.mobile.framework.service.ext.openplatform.service.OpenplatFormJsPlugin"

    const-string/jumbo v8, "recentUsedTinyApps|deleteRecentUsedTinyAppRecode|canAppAddToHomeStage|moveRecentUsedAppToTop|addAppToHomeStage|closeAddComponentAction|addToHomeWithComponent|shouldShowAddComponent|queryMarketStageAppInfo|checkAppGuideAlterAction|isAppShowingOnHomeStage"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1178
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-loggingjsextension"

    const-string v7, "com.alipay.android.phone.wallet.loggingjsextension.api.LoggerJsApiPlugin"

    const-string v8, "handleLoggingAction"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1184
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const/4 v14, 0x0

    const-string v10, "android-phone-wallet-advertisement"

    const-string v11, "com.alipay.android.phone.businesscommon.advertisement.trigger.AdH5Plugin"

    const-string/jumbo v12, "service"

    const-string v13, "getCdpSpaceInfo|getCdpSpaceInfos|cdpFeedback|cdpFeedbackForServer|cdpUpdateView|cdpRemoveView|addH5Notice|removeH5Notice|updateSpaceInfosForBiz|addLocalSpceInfo|removeLocalSpceInfo"

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1191
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const/16 v20, 0x0

    const-string v16, "android-phone-wallet-advertisement"

    const-string v17, "com.alipay.android.phone.businesscommon.advertisement.trigger.AdViewH5Plugin"

    const-string/jumbo v18, "page"

    const-string v19, "h5PageFinished|h5PageResume|h5PageError"

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1197
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const/4 v12, 0x0

    const-string v8, "android-phone-wallet-phonecashier"

    const-string v9, "com.alipay.mobile.phonecashier.H5PayPlugin"

    const-string/jumbo v10, "service"

    const-string/jumbo v11, "spsafepay.paywithbizreqdata|spsafepay.getdevinfo"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1204
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-badgesdk"

    const-string v7, "com.alipay.mobile.badgesdk.trigger.BadgeSDKH5Plugin"

    const-string/jumbo v8, "queryBadgeInfo|reportBadgeAction|reportBadgeShow|queryBadgeInfoBatch"

    invoke-direct {v1, v3, v7, v5, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1210
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-canvas"

    const-string v7, "com.alipay.mobile.canvas.tinyapp.CanvasPreloadImagePlugin"

    const-string/jumbo v8, "preloadCanvasImage"

    invoke-direct {v1, v3, v7, v6, v8}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1216
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-fortunehome"

    const-string v6, "com.alipay.android.widget.fortune.ext.finservice.AddFortuneServicePlugin"

    const-string v7, "FortuneHome.addFortuneService"

    invoke-direct {v1, v3, v6, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1222
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const/4 v13, 0x0

    const-string v9, "android-phone-wallet-phonecashier"

    const-string v10, "com.alipay.mobile.framework.service.ext.phonecashier.H5TradePayPlugin"

    const-string/jumbo v11, "page"

    const-string v12, "deposit|tradePay"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-securitycommon-verifyidentity"

    const-string v6, "com.alipay.mobile.verifyidentity.plugin.TinyUniversalCodePlugin"

    const-string/jumbo v7, "queryCodeRPC|generateCodeImage|openCode|genericDataCenter"

    invoke-direct {v1, v3, v6, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1235
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-redenvelope"

    const-string v6, "com.alipay.android.phone.discovery.envelope.plugin.GiftTemplateH5Plugin"

    const-string/jumbo v7, "uploadTemplateResources"

    invoke-direct {v1, v3, v6, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1241
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-sharetoken"

    const-string v6, "com.alipay.android.phone.wallet.sharetoken.Plugin.H5ShareTokenPlugin"

    const-string/jumbo v7, "shareToken|shareTokenImageSilent|createSearchCodeSilent"

    invoke-direct {v1, v3, v6, v4, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1247
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-ant3d"

    const-string v6, "com.alipay.android.phone.ant3d.H5TexelPlugin"

    const-string/jumbo v7, "synthesizeImage"

    invoke-direct {v1, v3, v6, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1253
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-thirdparty-sonicwavenfc"

    const-string v6, "com.alipay.sonicwavenfc.H5SonicWavePlugin"

    const-string/jumbo v7, "openWaveNFCAdapter|closeWaveNFCAdapter|setBkSoundRes|startSendWaveData|stopSendWaveData|startReceiveWaveData|stopReceiveWaveData|hasHeadset|resetAudioAndVolume|isOtherAudioPlaying|requestMicroPrivilege|getMicroStatus"

    invoke-direct {v1, v3, v6, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1259
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-orderprinter"

    const-string v6, "com.alipay.android.phone.wallet.printer.h5plugin.H5PrinterPlugin"

    const-string/jumbo v7, "printerSendMsg"

    invoke-direct {v1, v3, v6, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1265
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.onsitepay9.plugin.CodeLoopPlugin"

    const-string v6, "codeLoopService"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1271
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.onsitepay9.plugin.H5GenCodePlugin"

    const-string v6, "genCodeModule"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1276
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "android-phone-wallet-wasp"

    const-string v6, "com.alipay.android.phone.wallet.wasp.H5WaspPlugin"

    const-string v7, "h5SessionResume|h5SessionPause|h5SessionStart|h5SessionExit|h5PageStart|h5PageClosed|h5PagePause|h5PageStarted|reportData"

    invoke-direct {v1, v3, v6, v5, v7}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1282
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v3, "com.alipay.mobile.onsitepay9.plugin.H5QRCodePlugin"

    const-string v6, "getQRCodeImage|generateImageFromCode"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1288
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-securitycommon-verifyidentity"

    const-string v3, "com.alipay.mobile.verifyidentity.plugin.H5BIllPlugin"

    const-string v4, "dispatchJsFile"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1293
    new-instance v1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    const-string v2, "android-phone-securitycommon-verifyidentitybiz"

    const-string v3, "com.alipay.mobile.verifyidentity.alipay.H5Plugin.VerifyIdentityPlugin"

    const-string/jumbo v4, "verifyIdentity"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/alipay/mobile/nebula/config/H5PluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaconfig/util/H5BizPluginList$1;->add(Ljava/lang/Object;)Z

    .line 1298
    return-void
.end method
