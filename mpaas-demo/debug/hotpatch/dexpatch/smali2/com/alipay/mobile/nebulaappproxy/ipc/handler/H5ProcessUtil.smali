.class public Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;
.super Ljava/lang/Object;
.source "H5ProcessUtil.java"


# static fields
.field public static final DOWNLOAD_FAIL_CODE:Ljava/lang/String; = "downloadFailCode"

.field public static final DOWNLOAD_FAIL_NSG:Ljava/lang/String; = "downloadFailMsg"

.field public static final DOWNLOAD_FILE_PATH:Ljava/lang/String; = "downloadFilePath"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "downloadUrl"

.field public static final JS_API_CALL:I = 0x1312d43

.field public static final JS_API_CALL_RESULT:I = 0x1312dca

.field public static final JS_API_CALL_SEND_TO_WEB:I = 0x1312dcb

.field public static final JS_API_CALL_SYNC_COOKIE:I = 0x1312dcc

.field public static final MSG_LITE_PROCESS_PAGE_ID:Ljava/lang/String; = "msg_lite_process_page_id"

.field public static final MSG_TYPE:Ljava/lang/String; = "msg_type"

.field public static final TAG:Ljava/lang/String; = "H5MultiProcess"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/alipay/mobile/nebula/process/H5EventHandler;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5BridgeContext;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-string v0, "dispatcherOnWorkThread"

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->a:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "startParamUrl"

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->b:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->d:Ljava/util/Map;

    .line 222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static H5EventToBundle(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/os/Bundle;
    .locals 1
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->H5EventToBundle(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static H5EventToBundle(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;
    .locals 6
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 67
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    .local v1, "pageParams":Landroid/os/Bundle;
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "appId"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->b:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz v1, :cond_0

    const-string/jumbo v3, "parentAppId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v3, "tinySource"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v1    # "pageParams":Landroid/os/Bundle;
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "clientId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "func"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "msgType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->isKeepCallback()Z

    move-result v1

    const-string v3, "keepCallback"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "param"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->isDispatcherOnWorkerThread()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 89
    .local v2, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    move-object v2, v1

    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerH5EventToBundleForIpc(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Landroid/os/Bundle;)V

    .line 92
    :cond_3
    return-object v0
.end method

.method public static bundleToH5Event(Landroid/os/Bundle;)Lcom/alipay/mobile/h5container/api/H5Event;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->toH5EventWhitExtra(Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/Context;Z)Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    return-object v0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadCallback"    # Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;
    .param p3, "appId"    # Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>()V

    move-object v2, v1

    .line 227
    .local v2, "request":Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;
    move-object v2, v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setShowRunningNotification(Z)V

    .line 232
    const-class v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExtServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 234
    .local v1, "downloadManager":Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v1, v2, p2}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 237
    .end local v1    # "downloadManager":Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;
    .end local v2    # "request":Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;
    :cond_0
    return-void

    .line 239
    :cond_1
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 242
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v1, p0, p1, p3}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_2
    return-void

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5MultiProcess"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public static getDownloadCallback(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 252
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    return-object v0
.end method

.method public static getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;
    .locals 1

    .line 162
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->c:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    if-nez v0, :cond_0

    .line 163
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->c:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    .line 165
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->c:Lcom/alipay/mobile/nebula/process/H5EventHandler;

    return-object v0
.end method

.method public static getSubProH5BridgeContext(Lcom/alipay/mobile/h5container/api/H5Event;Z)Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .locals 2
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "keep"    # Z

    .line 175
    if-nez p1, :cond_0

    .line 176
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    return-object v0

    .line 178
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    return-object v0
.end method

.method public static isDownloading(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 201
    const-class v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExtServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    .line 203
    .local v1, "downloadManager":Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 206
    .end local v1    # "downloadManager":Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 211
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 212
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->isDownloading(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 216
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_2
    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5MultiProcess"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static putSubProH5BridgeContext(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 171
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public static sendDataToTinyProcessWithMsgType(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # I

    const-string v0, "appId "

    const-string v1, "H5MultiProcess"

    .line 184
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->findProcessByAppId(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v2

    const/4 v3, 0x0

    .line 186
    .local v3, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, "message":Landroid/os/Message;
    const-string/jumbo v2, "msg_type"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {v3}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v2

    const-string/jumbo v4, "nebulaApp"

    invoke-static {v2, v4, v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v0    # "message":Landroid/os/Message;
    .end local v3    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    return-void

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public static toH5EventWhitExtra(Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/Context;Z)Lcom/alipay/mobile/h5container/api/H5Event;
    .locals 20
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "extra"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "needH5Page"    # Z

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "clientId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "clientId":Ljava/lang/String;
    const-string v3, "func"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "msgType"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "msgType":Ljava/lang/String;
    const-string v5, "keepCallback"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    .line 108
    .local v5, "keep":Z
    const-string/jumbo v7, "param"

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "params":Ljava/lang/String;
    const-string/jumbo v9, "url"

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 112
    .local v10, "url":Ljava/lang/String;
    const-string v11, "appId"

    invoke-static {v0, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 113
    .local v12, "appId":Ljava/lang/String;
    sget-object v13, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->a:Ljava/lang/String;

    invoke-static {v0, v13, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    .line 114
    .local v6, "workThread":Z
    sget-object v13, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->b:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, "startParamUrl":Ljava/lang/String;
    const-string/jumbo v14, "parentAppId"

    invoke-static {v0, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, "parentAppId":Ljava/lang/String;
    const-string/jumbo v8, "tinySource"

    move/from16 v17, v6

    .end local v6    # "workThread":Z
    .local v17, "workThread":Z
    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "tinySource":Ljava/lang/String;
    move/from16 v18, v5

    .end local v5    # "keep":Z
    .local v18, "keep":Z
    const-string/jumbo v5, "msg_lite_process_page_id"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v5

    .line 121
    .local v5, "liteProcessPageId":I
    const/16 v19, 0x0

    .line 122
    .local v19, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz p3, :cond_3

    .line 124
    invoke-static {v1, v12, v5}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 125
    move-object/from16 v19, v0

    instance-of v0, v0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 127
    move-object/from16 v0, v19

    check-cast v0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;->setH5Context(Landroid/content/Context;)V

    .line 130
    :cond_0
    if-eqz v19, :cond_2

    .line 131
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageUrl(Ljava/lang/String;)V

    .line 132
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v11, 0x1

    const-string v1, "isTinyApp"

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v9, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_2
    move-object/from16 v0, v19

    goto :goto_0

    .line 122
    :cond_3
    move-object/from16 v0, v19

    .line 145
    .end local v19    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :goto_0
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    const/4 v8, 0x0

    move-object v9, v8

    .line 146
    .local v9, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    move-object v8, v1

    .end local v9    # "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    .local v8, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 148
    move/from16 v9, v18

    .end local v18    # "keep":Z
    .local v9, "keep":Z
    invoke-virtual {v1, v9}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 149
    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->extra(Ljava/lang/Object;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 150
    move/from16 v14, v17

    .end local v17    # "workThread":Z
    .local v14, "workThread":Z
    invoke-virtual {v1, v14}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->dispatcherOnWorkerThread(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 151
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v1

    .line 152
    .local v1, "h5Event":Lcom/alipay/mobile/h5container/api/H5Event;
    const-class v17, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    const/16 v16, 0x0

    .line 153
    .local v16, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    move-object/from16 v18, v17

    .end local v16    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    .local v18, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    if-eqz v17, :cond_4

    .line 154
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v4, v18

    move-object/from16 v2, p0

    .end local v2    # "clientId":Ljava/lang/String;
    .end local v18    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    .local v4, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    .local v16, "clientId":Ljava/lang/String;
    .local v17, "msgType":Ljava/lang/String;
    invoke-interface {v4, v3, v2, v1, v0}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerBundleToH5EventForIpc(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Page;)V

    goto :goto_1

    .line 153
    .end local v16    # "clientId":Ljava/lang/String;
    .end local v17    # "msgType":Ljava/lang/String;
    .restart local v2    # "clientId":Ljava/lang/String;
    .local v4, "msgType":Ljava/lang/String;
    .restart local v18    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v4, v18

    move-object/from16 v2, p0

    .line 156
    .end local v2    # "clientId":Ljava/lang/String;
    .end local v18    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    .local v4, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    .restart local v16    # "clientId":Ljava/lang/String;
    .restart local v17    # "msgType":Ljava/lang/String;
    :goto_1
    return-object v1
.end method
