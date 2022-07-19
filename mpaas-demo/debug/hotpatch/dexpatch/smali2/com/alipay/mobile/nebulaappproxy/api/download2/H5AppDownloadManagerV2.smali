.class public Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;
.super Ljava/lang/Object;
.source "H5AppDownloadManagerV2.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;

.field private e:Z

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->c:Ljava/util/Map;

    .line 60
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->d:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->e:Z

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->f:Ljava/util/Set;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "H5AppDownloadManagerV2"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 67
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a:Landroid/os/Handler;

    .line 69
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 70
    .local v1, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)V

    const-string v3, "h5_pkgpredownload"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "cfgStr":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Ljava/lang/String;)V

    .line 79
    .end local v0    # "cfgStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->c:Ljava/util/Map;

    return-object v0
.end method

.method private a()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->d:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a()Landroidx/core/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 192
    .local v1, "pair":Landroidx/core/util/Pair;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$3;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;Landroidx/core/util/Pair;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Z)V
    .locals 12
    .param p1, "request"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
    .param p3, "isUrgentResource"    # Z

    .line 207
    const-class v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 209
    .local v2, "downloadService":Lcom/alipay/mobile/framework/service/common/DownloadService;
    move-object v2, v0

    const-string v3, "H5AppDownloadManagerV2"

    if-nez v0, :cond_0

    .line 210
    const-string v0, "downloadService == null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "downloadUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 215
    .local v5, "fileName":Ljava/lang/String;
    move-object v5, v4

    const-string v6, "/"

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v5    # "fileName":Ljava/lang/String;
    .local v4, "fileName":Ljava/lang/String;
    goto :goto_1

    .line 216
    .end local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    .end local v5    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 221
    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v1

    .line 223
    .local v7, "downloadDir":Ljava/lang/String;
    move-object v7, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v8, 0x0

    if-nez v5, :cond_7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 228
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "filePath":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 230
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;

    invoke-direct {v6, p0, p1, v5, v8}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$TransportCallbackWrapper;-><init>(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;B)V

    .line 233
    .local v6, "wrappedCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    new-instance v8, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-direct {v8, v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    .line 234
    .local v9, "downloadRequest":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    move-object v9, v8

    invoke-virtual {v8, v5}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v9, v6}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 236
    const-string/jumbo v8, "nebula_app"

    .line 237
    .local v8, "bizId":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 238
    const-string/jumbo v8, "nebula_app_high"

    .line 240
    :cond_4
    const-string v10, "bizId"

    invoke-virtual {v9, v10, v8}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "addDownloadInner-appId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " url: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " isUrgentResource: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " downloadDir: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 242
    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    if-eqz p3, :cond_5

    .line 249
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setUrgentResource(Z)V

    .line 252
    :cond_5
    invoke-virtual {v2, v9}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 254
    .local v1, "task":Ljava/util/concurrent/Future;
    move-object v1, v3

    if-eqz v3, :cond_6

    .line 255
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_6
    return-void

    .line 224
    .end local v1    # "task":Ljava/util/concurrent/Future;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "wrappedCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    .end local v8    # "bizId":Ljava/lang/String;
    .end local v9    # "downloadRequest":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    :cond_7
    :goto_2
    const-string/jumbo v1, "save path can not create"

    invoke-virtual {p2, p1, v8, v1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
    .param p3, "x3"    # Z

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .param p1, "cfgStr"    # Ljava/lang/String;

    .line 82
    const-string v0, "H5AppDownloadManagerV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyPreDownloadControl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 84
    .local v2, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 85
    const-string/jumbo v0, "yes"

    const-string/jumbo v3, "switch"

    const-string/jumbo v4, "yes"

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->e:Z

    .line 86
    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    const-string/jumbo v0, "whitelist"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 90
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->f:Ljava/util/Set;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->f:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 93
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 96
    :try_start_1
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "appId":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->f:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v5    # "appId":Ljava/lang/String;
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v5

    .line 99
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "H5AppDownloadManagerV2"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 105
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 172
    if-nez p2, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 176
    .local v1, "callbackList":Ljava/util/List;
    move-object v1, v0

    const-string v2, "H5AppDownloadManagerV2"

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "add callback for new task: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 179
    move-object v1, v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "add callback for downloading task: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b:Ljava/util/Map;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 108
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->d:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a()V

    return-void
.end method


# virtual methods
.method public addDownload(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 8
    .param p1, "request"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 116
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 117
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "downloadUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addDownload-appId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getScene()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " downloadUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v2, "H5AppDownloadManagerV2"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->isFromPreDownload()Z

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    .line 125
    .local v4, "fromPreDownload":Z
    move v4, v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string/jumbo v1, "not enable predownload!"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 130
    :cond_0
    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    move v1, v3

    .line 133
    .local v1, "isUrgentResource":Z
    const/4 v2, 0x0

    .line 135
    .local v2, "needTriggerDownload":Z
    const-string v3, "h5_needCancelDownloading"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "YES"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 137
    .local v3, "needCancelDownloading":Z
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 138
    const/4 v2, 0x1

    .line 140
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->cancel(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    const/4 v6, 0x0

    .line 145
    .local v6, "future":Ljava/util/concurrent/Future;
    move-object v6, v5

    if-eqz v5, :cond_4

    invoke-interface {v6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v6}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 153
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    goto :goto_1

    .line 147
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v7, 0x14

    if-le v5, v7, :cond_5

    .line 148
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->d:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;

    invoke-virtual {v5, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    goto :goto_1

    .line 150
    :cond_5
    const/4 v2, 0x1

    .line 157
    .end local v6    # "future":Ljava/util/concurrent/Future;
    :goto_1
    if-eqz v2, :cond_6

    .line 158
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->a:Landroid/os/Handler;

    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$2;

    invoke-direct {v6, p0, p1, p2, v1}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .end local v0    # "downloadUrl":Ljava/lang/String;
    .end local v1    # "isUrgentResource":Z
    .end local v2    # "needTriggerDownload":Z
    .end local v3    # "needCancelDownloading":Z
    .end local v4    # "fromPreDownload":Z
    :cond_6
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 263
    .local v1, "future":Ljava/util/concurrent/Future;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    .line 267
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5AppDownloadManagerV2"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->d:Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5PendingTaskPool;->a(Ljava/lang/String;)V

    .line 274
    .end local v1    # "future":Ljava/util/concurrent/Future;
    :cond_0
    return-void
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 2
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 280
    .local v1, "future":Ljava/util/concurrent/Future;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    return v0

    .line 284
    .end local v1    # "future":Ljava/util/concurrent/Future;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
