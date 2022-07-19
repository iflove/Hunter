.class public Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;
.super Ljava/lang/Object;
.source "H5ServiceWorkerControllerProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;


# static fields
.field private static final TIMEOUT:I = 0x7d0

.field private static final kylinBridge:Ljava/lang/String; = "https://alipay.kylinBridge"

.field private static final viewId:Ljava/lang/String; = "viewId"


# instance fields
.field private TAG:Ljava/lang/String;

.field private isFirstJsApi:Z

.field private pageMonitorRunOnIoThread:Ljava/lang/Boolean;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H5ServiceWorkerControllerProviderImpl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isFirstJsApi:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->pageMonitorRunOnIoThread:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getTargetPageByViewId(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method private static enableAsync()Z
    .locals 4

    .line 674
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 675
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 676
    const-string v2, "h5_enableSWAsync"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "value":Ljava/lang/String;
    const-string v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v1, v3

    return v1

    .line 679
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private enableWorkSession(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 457
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private findSession(Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 12
    .param p1, "service"    # Lcom/alipay/mobile/h5container/service/H5Service;
    .param p2, "request"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .line 337
    const-string v0, "h5_swGetSessionFromUrl"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "config":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string v2, "findSession h5_swGetSessionFromUrl is \'no\', get top session."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    return-object v1

    .line 345
    :cond_0
    const/4 v1, 0x0

    .line 347
    .local v1, "referer":Ljava/lang/String;
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    .line 348
    .local v2, "reqHeader":Ljava/util/Map;
    if-eqz v2, :cond_2

    .line 349
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 350
    .local v4, "key":Ljava/lang/String;
    const-string v5, "referer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 352
    goto :goto_1

    .line 354
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 357
    :cond_2
    :goto_1
    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    .line 358
    .local v3, "requestUri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 360
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .local v4, "host":Ljava/lang/String;
    goto :goto_2

    .line 362
    .end local v4    # "host":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 365
    .restart local v4    # "host":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findSession host: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 368
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v5

    .line 369
    .local v5, "sessions":Ljava/util/Stack;
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v6

    .line 370
    .local v6, "size":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_6

    .line 371
    invoke-virtual {v5, v7}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 372
    .local v8, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    if-nez v8, :cond_4

    .line 373
    goto :goto_4

    .line 376
    :cond_4
    invoke-direct {p0, v8, v4}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isMatchSession(Lcom/alipay/mobile/h5container/api/H5Session;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 377
    iget-object v9, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " findSession find match session, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-object v8

    .line 370
    .end local v8    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 383
    .end local v5    # "sessions":Ljava/util/Stack;
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string v6, "findSession cannot find match session, get top session."

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v5

    return-object v5
.end method

.method private getHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->pageMonitorRunOnIoThread:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 652
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 653
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 654
    const-string v1, "h5_pageMonitorRunInIoThread"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->pageMonitorRunOnIoThread:Ljava/lang/Boolean;

    goto :goto_0

    .line 657
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->pageMonitorRunOnIoThread:Ljava/lang/Boolean;

    .line 660
    .end local v0    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->getDefaultAsyncJsApiList()Ljava/util/List;

    move-result-object v0

    const-string v1, "pageMonitor"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->pageMonitorRunOnIoThread:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 661
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    invoke-static {}, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->getDefaultAsyncJsApiList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->getDefaultAsyncJsApiList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->enableAsync()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5EventDispatchHandler;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 668
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->uiHandler:Landroid/os/Handler;

    .line 670
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNotDevSession()Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 8

    .line 425
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 426
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_3

    .line 428
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v1

    .line 429
    .local v1, "sessions":Ljava/util/Stack;
    if-eqz v1, :cond_2

    .line 430
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 431
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 432
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 433
    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 434
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    if-eqz v3, :cond_0

    .line 435
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isDevSession(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 438
    monitor-exit v1

    return-object v3

    .line 432
    .end local v3    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 442
    .end local v2    # "index":I
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 446
    .end local v1    # "sessions":Ljava/util/Stack;
    .restart local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_2
    :goto_1
    goto :goto_2

    .line 444
    :catchall_1
    move-exception v1

    .line 445
    .local v1, "throwable":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTargetH5Page(ILjava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 6
    .param p1, "id"    # I
    .param p2, "workerId"    # Ljava/lang/String;

    .line 493
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 494
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getH5page viewId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " workerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    if-eqz v0, :cond_9

    .line 496
    const-class v1, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;

    monitor-enter v1

    .line 497
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    const/4 v2, 0x0

    .line 524
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v3

    .line 525
    .local v3, "baseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    if-eqz v3, :cond_1

    .line 526
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    move-object v2, v4

    .line 528
    :cond_1
    if-eqz v2, :cond_2

    .line 529
    monitor-exit v1

    return-object v2

    .line 531
    :cond_2
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessionByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    move-object v2, v4

    .line 532
    if-eqz v2, :cond_3

    .line 533
    monitor-exit v1

    return-object v2

    .line 535
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string v5, "fatal error h5Page == null #3"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 498
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v3    # "baseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    :cond_4
    :goto_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    .line 500
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v2

    .line 501
    .local v2, "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 502
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 504
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string v4, "fatal error h5Page == null #1"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    .line 506
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 507
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string v5, "not send work to web-view"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getTopServiceWorkPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 510
    :cond_6
    monitor-exit v1

    return-object v3

    .line 514
    .end local v2    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_7
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragmentByViewId(I)Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v2

    .line 515
    .restart local v2    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 516
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 518
    :cond_8
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string v4, "fatal error h5Page == null #2"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .end local v2    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    nop

    .line 538
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 540
    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string v2, "fatal error h5Service==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTargetPageByViewId(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 5
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "workerId"    # Ljava/lang/String;

    .line 548
    const/4 v0, -0x1

    .line 550
    .local v0, "viewIdValue":I
    const-string v1, "viewId"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    .line 551
    const/4 v2, 0x0

    const-string v4, "data"

    invoke-static {p1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 552
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 553
    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 555
    .end local v2    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    goto :goto_0

    .line 556
    :cond_1
    invoke-static {p1, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 559
    :goto_0
    if-gt v0, v3, :cond_2

    .line 560
    invoke-direct {p0, v3, p2}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getTargetH5Page(ILjava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    goto :goto_1

    .line 562
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getTargetH5Page(ILjava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 564
    .restart local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :goto_1
    return-object v1
.end method

.method private getTopServiceWorkPage()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 6

    .line 467
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 468
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_3

    .line 470
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessions()Ljava/util/Stack;

    move-result-object v1

    .line 471
    .local v1, "sessions":Ljava/util/Stack;
    if-eqz v1, :cond_2

    .line 472
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 473
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 474
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 475
    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 476
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    if-eqz v3, :cond_0

    .line 477
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "id":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 479
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v5

    monitor-exit v1

    return-object v5

    .line 474
    .end local v3    # "session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 483
    .end local v2    # "index":I
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 487
    .end local v1    # "sessions":Ljava/util/Stack;
    .restart local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_2
    :goto_1
    goto :goto_2

    .line 485
    :catchall_1
    move-exception v1

    .line 486
    .local v1, "throwable":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getWorkResponse(Lcom/alipay/mobile/h5container/api/H5Session;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "workSession"    # Lcom/alipay/mobile/h5container/api/H5Session;
    .param p2, "u"    # Ljava/lang/String;

    .line 407
    if-eqz p1, :cond_1

    .line 408
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    .line 409
    .local v0, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v0, :cond_0

    .line 410
    nop

    .line 411
    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 412
    .local v1, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v1, :cond_0

    .line 413
    return-object v1

    .line 416
    .end local v0    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v1    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_0
    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "workSession is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;Ljava/lang/String;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "h5ServiceWorkerHook4Bridge"    # Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;
    .param p4, "workerId"    # Ljava/lang/String;

    .line 570
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$3;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    return-void
.end method

.method private isDevSession(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "68687029"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFromTinyApp(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Z
    .locals 5
    .param p1, "apWebResourceRequest"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .line 66
    const-string v0, "h5_swReqCheckFromTinyApp"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "config":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    .line 70
    .local v2, "headers":Ljava/util/Map;
    const-string v3, "Referer"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    .local v3, "refererUrl":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    :cond_0
    const-string v4, "referer"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 74
    :cond_1
    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->matchAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v1, v4

    return v1

    .line 78
    .end local v2    # "headers":Ljava/util/Map;
    .end local v3    # "refererUrl":Ljava/lang/String;
    :cond_2
    nop

    .line 79
    return v1

    .line 76
    :catchall_0
    move-exception v2

    .line 77
    .local v2, "throwable":Ljava/lang/Throwable;
    return v1
.end method

.method private isMatchSession(Lcom/alipay/mobile/h5container/api/H5Session;Ljava/lang/String;)Z
    .locals 3
    .param p1, "session"    # Lcom/alipay/mobile/h5container/api/H5Session;
    .param p2, "host"    # Ljava/lang/String;

    .line 393
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 394
    return v1

    .line 397
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Session;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 398
    return v1

    .line 401
    :cond_1
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Session;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "sessionHost":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public shouldInterceptRequest4ServiceWorker(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 26
    .param p1, "apWebResourceRequest"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .line 85
    move-object/from16 v7, p0

    const-string v0, "data"

    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v8

    .line 86
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_19

    .line 88
    :try_start_0
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 89
    .local v10, "u":Ljava/lang/String;
    iget-object v1, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 91
    .local v11, "scheme":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 92
    .local v12, "host":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 94
    .local v13, "kylinPrefix":Ljava/lang/String;
    const-string v1, "https://alipay.kylinBridge"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v1, :cond_12

    .line 95
    :try_start_1
    iget-boolean v1, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isFirstJsApi:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 96
    :try_start_2
    iput-boolean v2, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isFirstJsApi:Z

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/alipay/mobile/h5container/api/H5PageData;->swFirstJsApiCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 327
    .end local v10    # "u":Ljava/lang/String;
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "kylinPrefix":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    move-object v5, v8

    goto/16 :goto_f

    .line 100
    .restart local v10    # "u":Ljava/lang/String;
    .restart local v11    # "scheme":Ljava/lang/String;
    .restart local v12    # "host":Ljava/lang/String;
    .restart local v13    # "kylinPrefix":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 101
    .local v14, "data":Ljava/lang/String;
    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v15, v1

    .line 102
    .local v15, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v15, :cond_11

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v20, v8

    move-object/from16 v22, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    goto/16 :goto_a

    .line 109
    :cond_1
    const-string v1, "canvas"

    const-string v3, "element"

    invoke-static {v15, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    :try_start_4
    const-string v1, "draw"

    const-string v3, "actionType"

    .line 110
    invoke-static {v15, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move/from16 v16, v2

    .line 111
    .local v16, "isCanvasDrawCmd":Z
    if-nez v16, :cond_3

    .line 112
    iget-object v1, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldInterceptRequest4ServiceWorker data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    :cond_3
    :try_start_5
    const-string v1, "action"

    invoke-static {v15, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 117
    .local v6, "action":Ljava/lang/String;
    const-string v1, "requestId"

    invoke-static {v15, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 118
    .local v3, "requestId":I
    const-string v1, "applicationId"

    invoke-static {v15, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 119
    .local v5, "applicationId":Ljava/lang/String;
    const-string v1, "callback"

    invoke-static {v15, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 121
    .local v4, "callback":Ljava/lang/String;
    const-string v1, "mtop"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_4

    .line 122
    :try_start_6
    const-string v1, "main"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    move-object/from16 v17, v11

    .end local v11    # "scheme":Ljava/lang/String;
    .local v17, "scheme":Ljava/lang/String;
    const-string v11, "apiName"

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".start"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 121
    .end local v17    # "scheme":Ljava/lang/String;
    .restart local v11    # "scheme":Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v11

    .line 127
    .end local v11    # "scheme":Ljava/lang/String;
    .restart local v17    # "scheme":Ljava/lang/String;
    :goto_2
    :try_start_7
    const-string v1, "postMessage"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v9, ""

    const-string v11, "application/json"

    const-string v2, "utf-8"

    move-object/from16 v18, v12

    .end local v12    # "host":Ljava/lang/String;
    .local v18, "host":Ljava/lang/String;
    const-string v12, "UTF-8"

    if-eqz v1, :cond_6

    .line 128
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v15, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v19

    move-object/from16 v1, v19

    .line 129
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v19, v13

    .end local v13    # "kylinPrefix":Ljava/lang/String;
    .local v19, "kylinPrefix":Ljava/lang/String;
    const-string v13, "viewId"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v20, v8

    .end local v8    # "uri":Landroid/net/Uri;
    .local v20, "uri":Landroid/net/Uri;
    const/4 v8, -0x1

    :try_start_9
    invoke-static {v1, v13, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v8

    .line 130
    .local v8, "viewId":I
    invoke-direct {v7, v8, v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getTargetH5Page(ILjava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v13

    .line 131
    .local v13, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v13, :cond_5

    invoke-interface {v13}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 132
    new-instance v21, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object/from16 v22, v21

    .line 133
    .local v22, "dataWrap":Lcom/alibaba/fastjson/JSONObject;
    move/from16 v21, v8

    move-object/from16 v8, v22

    .end local v22    # "dataWrap":Lcom/alibaba/fastjson/JSONObject;
    .local v8, "dataWrap":Lcom/alibaba/fastjson/JSONObject;
    .local v21, "viewId":I
    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-interface {v13}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    move-object/from16 v22, v1

    .end local v1    # "params":Lcom/alibaba/fastjson/JSONObject;
    .local v22, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "message"

    move-object/from16 v23, v13

    const/4 v13, 0x0

    .end local v13    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v23, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-interface {v0, v1, v8, v13}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    goto :goto_3

    .line 131
    .end local v21    # "viewId":I
    .end local v22    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v23    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v1    # "params":Lcom/alibaba/fastjson/JSONObject;
    .local v8, "viewId":I
    .restart local v13    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_5
    move-object/from16 v22, v1

    move/from16 v21, v8

    move-object/from16 v23, v13

    .line 136
    .end local v1    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "viewId":I
    .end local v13    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .restart local v21    # "viewId":I
    .restart local v22    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v23    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :goto_3
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 137
    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v11, v12, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 136
    return-object v0

    .line 140
    .end local v19    # "kylinPrefix":Ljava/lang/String;
    .end local v20    # "uri":Landroid/net/Uri;
    .end local v21    # "viewId":I
    .end local v22    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v23    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v8, "uri":Landroid/net/Uri;
    .local v13, "kylinPrefix":Ljava/lang/String;
    :cond_6
    move-object/from16 v20, v8

    move-object/from16 v19, v13

    .end local v8    # "uri":Landroid/net/Uri;
    .end local v13    # "kylinPrefix":Ljava/lang/String;
    .restart local v19    # "kylinPrefix":Ljava/lang/String;
    .restart local v20    # "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v1, "reject "

    if-nez v0, :cond_f

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "hasPermission":Z
    :try_start_a
    invoke-static {}, Lcom/alipay/mobile/h5container/api/WorkerApiConfig;->getDefaultSyncJsApiSet()Ljava/util/Set;

    move-result-object v8

    .line 153
    .local v8, "syncJsApiSet":Ljava/util/Set;
    const-string v9, "h5_swSyncJsApiConfig"

    .line 154
    invoke-static {v9}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 156
    .local v9, "syncConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string v11, "added"

    const/4 v13, 0x0

    invoke-static {v9, v11, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v11

    .line 157
    .local v11, "addList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v11, :cond_8

    .line 158
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v13

    .line 159
    .local v13, "size":I
    const/16 v21, 0x0

    move/from16 v22, v0

    move/from16 v0, v21

    .local v0, "i":I
    .local v22, "hasPermission":Z
    :goto_4
    if-ge v0, v13, :cond_7

    .line 160
    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v23, v21

    .line 161
    .local v23, "jsApi":Ljava/lang/String;
    move/from16 v21, v13

    move-object/from16 v13, v23

    .end local v23    # "jsApi":Ljava/lang/String;
    .local v13, "jsApi":Ljava/lang/String;
    .local v21, "size":I
    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    nop

    .end local v13    # "jsApi":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v21

    goto :goto_4

    .end local v21    # "size":I
    .local v13, "size":I
    :cond_7
    move/from16 v21, v13

    .end local v13    # "size":I
    .restart local v21    # "size":I
    goto :goto_5

    .line 157
    .end local v21    # "size":I
    .end local v22    # "hasPermission":Z
    .local v0, "hasPermission":Z
    :cond_8
    move/from16 v22, v0

    .line 165
    .end local v0    # "hasPermission":Z
    .restart local v22    # "hasPermission":Z
    :goto_5
    const-string v0, "black_list"

    const/4 v13, 0x0

    invoke-static {v9, v0, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 166
    .local v0, "blackList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v11, :cond_a

    .line 167
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v13

    .line 168
    .restart local v13    # "size":I
    const/16 v21, 0x0

    move-object/from16 v23, v9

    move/from16 v9, v21

    .local v9, "i":I
    .local v23, "syncConfig":Lcom/alibaba/fastjson/JSONObject;
    :goto_6
    if-ge v9, v13, :cond_9

    .line 169
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v24, v21

    .line 170
    .local v24, "jsapi":Ljava/lang/String;
    move-object/from16 v21, v0

    move-object/from16 v0, v24

    .end local v24    # "jsapi":Ljava/lang/String;
    .local v0, "jsapi":Ljava/lang/String;
    .local v21, "blackList":Lcom/alibaba/fastjson/JSONArray;
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 168
    nop

    .end local v0    # "jsapi":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v21

    goto :goto_6

    .end local v21    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .local v0, "blackList":Lcom/alibaba/fastjson/JSONArray;
    :cond_9
    move-object/from16 v21, v0

    .end local v0    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v21    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_7

    .line 166
    .end local v13    # "size":I
    .end local v21    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .end local v23    # "syncConfig":Lcom/alibaba/fastjson/JSONObject;
    .restart local v0    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .local v9, "syncConfig":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    move-object/from16 v21, v0

    move-object/from16 v23, v9

    .line 174
    .end local v0    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "syncConfig":Lcom/alibaba/fastjson/JSONObject;
    .restart local v21    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v23    # "syncConfig":Lcom/alibaba/fastjson/JSONObject;
    :goto_7
    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 175
    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .end local v22    # "hasPermission":Z
    .local v0, "hasPermission":Z
    goto :goto_8

    .line 177
    .end local v0    # "hasPermission":Z
    .restart local v22    # "hasPermission":Z
    :cond_b
    move/from16 v0, v22

    .end local v22    # "hasPermission":Z
    .restart local v0    # "hasPermission":Z
    :goto_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 178
    iget-object v9, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v8

    .end local v8    # "syncJsApiSet":Ljava/util/Set;
    .local v22, "syncJsApiSet":Ljava/util/Set;
    const-string v8, "sync hasPermission "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "action "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    .line 177
    .end local v22    # "syncJsApiSet":Ljava/util/Set;
    .restart local v8    # "syncJsApiSet":Ljava/util/Set;
    :cond_c
    move-object/from16 v22, v8

    .line 180
    .end local v8    # "syncJsApiSet":Ljava/util/Set;
    .restart local v22    # "syncJsApiSet":Ljava/util/Set;
    :goto_9
    const-string v8, "application/javascript"

    if-eqz v0, :cond_e

    .line 181
    :try_start_b
    new-instance v9, Landroid/os/ConditionVariable;

    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    .line 182
    .local v9, "syncLock":Landroid/os/ConditionVariable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v13, "syncResult":Ljava/lang/StringBuilder;
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    move/from16 v24, v0

    .end local v0    # "hasPermission":Z
    .local v24, "hasPermission":Z
    const-string v0, "("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isFromTinyApp(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 186
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$1;

    invoke-direct {v0, v7, v6, v13, v9}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/ConditionVariable;)V

    invoke-direct {v7, v6, v15, v0, v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->close()V

    .line 214
    const-wide/16 v0, 0x7d0

    invoke-virtual {v9, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    .line 215
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 218
    move-object/from16 v25, v9

    .end local v9    # "syncLock":Landroid/os/ConditionVariable;
    .local v25, "syncLock":Landroid/os/ConditionVariable;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v8, v12, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 216
    return-object v0

    .line 220
    .end local v25    # "syncLock":Landroid/os/ConditionVariable;
    .restart local v9    # "syncLock":Landroid/os/ConditionVariable;
    :cond_d
    move-object/from16 v25, v9

    .end local v9    # "syncLock":Landroid/os/ConditionVariable;
    .restart local v25    # "syncLock":Landroid/os/ConditionVariable;
    iget-object v0, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v13    # "syncResult":Ljava/lang/StringBuilder;
    .end local v25    # "syncLock":Landroid/os/ConditionVariable;
    nop

    .line 228
    .end local v11    # "addList":Lcom/alibaba/fastjson/JSONArray;
    .end local v21    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .end local v22    # "syncJsApiSet":Ljava/util/Set;
    .end local v23    # "syncConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v24    # "hasPermission":Z
    move-object/from16 v22, v10

    goto/16 :goto_c

    .line 223
    .restart local v0    # "hasPermission":Z
    .restart local v11    # "addList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v21    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .restart local v22    # "syncJsApiSet":Ljava/util/Set;
    .restart local v23    # "syncConfig":Lcom/alibaba/fastjson/JSONObject;
    :cond_e
    move/from16 v24, v0

    .end local v0    # "hasPermission":Z
    .restart local v24    # "hasPermission":Z
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "(\'not in H5_SWSYNCAPILIST\')"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 226
    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v8, v12, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 223
    return-object v0

    .line 230
    .end local v11    # "addList":Lcom/alibaba/fastjson/JSONArray;
    .end local v21    # "blackList":Lcom/alibaba/fastjson/JSONArray;
    .end local v22    # "syncJsApiSet":Ljava/util/Set;
    .end local v23    # "syncConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v24    # "hasPermission":Z
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isFromTinyApp(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 231
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$2;

    move-object v1, v0

    move-object v8, v2

    move-object/from16 v2, p0

    move-object v13, v4

    .end local v4    # "callback":Ljava/lang/String;
    .local v13, "callback":Ljava/lang/String;
    move-object v4, v5

    move-object/from16 v21, v13

    move-object v13, v5

    .end local v5    # "applicationId":Ljava/lang/String;
    .local v13, "applicationId":Ljava/lang/String;
    .local v21, "callback":Ljava/lang/String;
    move-object v5, v6

    move-object/from16 v22, v10

    move-object v10, v6

    .end local v6    # "action":Ljava/lang/String;
    .local v10, "action":Ljava/lang/String;
    .local v22, "u":Ljava/lang/String;
    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-direct {v7, v10, v15, v0, v13}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5ServiceWorkerHook4Bridge;Ljava/lang/String;)V

    .line 272
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 273
    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v11, v12, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 272
    return-object v0

    .line 275
    .end local v13    # "applicationId":Ljava/lang/String;
    .end local v21    # "callback":Ljava/lang/String;
    .end local v22    # "u":Ljava/lang/String;
    .restart local v4    # "callback":Ljava/lang/String;
    .restart local v5    # "applicationId":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .local v10, "u":Ljava/lang/String;
    :cond_10
    move-object/from16 v21, v4

    move-object v13, v5

    move-object/from16 v22, v10

    move-object v10, v6

    .end local v4    # "callback":Ljava/lang/String;
    .end local v5    # "applicationId":Ljava/lang/String;
    .end local v6    # "action":Ljava/lang/String;
    .local v10, "action":Ljava/lang/String;
    .restart local v13    # "applicationId":Ljava/lang/String;
    .restart local v21    # "callback":Ljava/lang/String;
    .restart local v22    # "u":Ljava/lang/String;
    iget-object v0, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 102
    .end local v3    # "requestId":I
    .end local v16    # "isCanvasDrawCmd":Z
    .end local v17    # "scheme":Ljava/lang/String;
    .end local v18    # "host":Ljava/lang/String;
    .end local v19    # "kylinPrefix":Ljava/lang/String;
    .end local v20    # "uri":Landroid/net/Uri;
    .end local v21    # "callback":Ljava/lang/String;
    .end local v22    # "u":Ljava/lang/String;
    .local v8, "uri":Landroid/net/Uri;
    .local v10, "u":Ljava/lang/String;
    .local v11, "scheme":Ljava/lang/String;
    .restart local v12    # "host":Ljava/lang/String;
    .local v13, "kylinPrefix":Ljava/lang/String;
    :cond_11
    move-object/from16 v20, v8

    move-object/from16 v22, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    .line 103
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v10    # "u":Ljava/lang/String;
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "kylinPrefix":Ljava/lang/String;
    .restart local v17    # "scheme":Ljava/lang/String;
    .restart local v18    # "host":Ljava/lang/String;
    .restart local v19    # "kylinPrefix":Ljava/lang/String;
    .restart local v20    # "uri":Landroid/net/Uri;
    .restart local v22    # "u":Ljava/lang/String;
    :goto_a
    iget-object v0, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptRequest4ServiceWorker data parse error for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 105
    const/4 v1, 0x0

    return-object v1

    .line 327
    .end local v14    # "data":Ljava/lang/String;
    .end local v15    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "scheme":Ljava/lang/String;
    .end local v18    # "host":Ljava/lang/String;
    .end local v19    # "kylinPrefix":Ljava/lang/String;
    .end local v22    # "u":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    :goto_b
    move-object/from16 v5, v20

    goto/16 :goto_f

    .end local v20    # "uri":Landroid/net/Uri;
    .restart local v8    # "uri":Landroid/net/Uri;
    :catchall_2
    move-exception v0

    move-object/from16 v2, p1

    move-object v5, v8

    .end local v8    # "uri":Landroid/net/Uri;
    .restart local v20    # "uri":Landroid/net/Uri;
    goto/16 :goto_f

    .line 94
    .end local v20    # "uri":Landroid/net/Uri;
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v10    # "u":Ljava/lang/String;
    .restart local v11    # "scheme":Ljava/lang/String;
    .restart local v12    # "host":Ljava/lang/String;
    .restart local v13    # "kylinPrefix":Ljava/lang/String;
    :cond_12
    move-object/from16 v20, v8

    move-object/from16 v22, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    .line 286
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v10    # "u":Ljava/lang/String;
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "kylinPrefix":Ljava/lang/String;
    .restart local v17    # "scheme":Ljava/lang/String;
    .restart local v18    # "host":Ljava/lang/String;
    .restart local v19    # "kylinPrefix":Ljava/lang/String;
    .restart local v20    # "uri":Landroid/net/Uri;
    .restart local v22    # "u":Ljava/lang/String;
    :goto_c
    :try_start_c
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "blob"

    move-object/from16 v1, v22

    .end local v22    # "u":Ljava/lang/String;
    .local v1, "u":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 287
    iget-object v0, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "work load url begin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 289
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_15

    .line 290
    move-object/from16 v2, p1

    :try_start_d
    invoke-direct {v7, v0, v2}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->findSession(Lcom/alipay/mobile/h5container/service/H5Service;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v3

    .line 291
    .local v3, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    if-eqz v3, :cond_13

    .line 292
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v4

    .line 293
    .local v4, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v4, :cond_13

    .line 294
    nop

    .line 295
    invoke-interface {v4, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v5

    .line 296
    .local v5, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v5, :cond_13

    .line 297
    iget-object v6, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "work load url from pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-object v5

    .line 302
    .end local v4    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v5    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_13
    if-eqz v3, :cond_16

    .line 304
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v4

    .line 305
    .local v4, "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    if-eqz v4, :cond_14

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v5

    if-eqz v5, :cond_14

    const-string v5, "h5_enableWebSession"

    invoke-direct {v7, v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->enableWorkSession(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 306
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v5

    .line 307
    .local v5, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v6

    invoke-direct {v7, v6, v1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getWorkResponse(Lcom/alipay/mobile/h5container/api/H5Session;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v6

    .line 308
    .local v6, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v6, :cond_14

    .line 309
    iget-object v8, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "work load url form mainPageResourceResponse :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object v6

    .line 314
    .end local v5    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v6    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_14
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->isDevSession(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "h5_enableDevSession"

    invoke-direct {v7, v5}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->enableWorkSession(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 315
    iget-object v5, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is dev session "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getNotDevSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v5

    invoke-direct {v7, v5, v1}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->getWorkResponse(Lcom/alipay/mobile/h5container/api/H5Session;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v5

    .line 317
    .local v5, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v5, :cond_16

    .line 318
    iget-object v6, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "work load url form mainPageResourceResponse inDevSession:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 319
    return-object v5

    .line 327
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v1    # "u":Ljava/lang/String;
    .end local v3    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v4    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    .end local v5    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    .end local v17    # "scheme":Ljava/lang/String;
    .end local v18    # "host":Ljava/lang/String;
    .end local v19    # "kylinPrefix":Ljava/lang/String;
    :catchall_3
    move-exception v0

    goto/16 :goto_b

    .line 289
    .restart local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .restart local v1    # "u":Ljava/lang/String;
    .restart local v17    # "scheme":Ljava/lang/String;
    .restart local v18    # "host":Ljava/lang/String;
    .restart local v19    # "kylinPrefix":Ljava/lang/String;
    :cond_15
    move-object/from16 v2, p1

    .line 325
    :cond_16
    :try_start_e
    iget-object v3, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "work load url form online:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-object/from16 v5, v20

    .end local v20    # "uri":Landroid/net/Uri;
    .local v5, "uri":Landroid/net/Uri;
    :try_start_f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_d

    .line 327
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v1    # "u":Ljava/lang/String;
    .end local v17    # "scheme":Ljava/lang/String;
    .end local v18    # "host":Ljava/lang/String;
    .end local v19    # "kylinPrefix":Ljava/lang/String;
    :catchall_4
    move-exception v0

    goto :goto_f

    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v20    # "uri":Landroid/net/Uri;
    :catchall_5
    move-exception v0

    goto :goto_e

    .line 286
    .restart local v1    # "u":Ljava/lang/String;
    .restart local v17    # "scheme":Ljava/lang/String;
    .restart local v18    # "host":Ljava/lang/String;
    .restart local v19    # "kylinPrefix":Ljava/lang/String;
    :cond_17
    move-object/from16 v2, p1

    move-object/from16 v5, v20

    .end local v20    # "uri":Landroid/net/Uri;
    .restart local v5    # "uri":Landroid/net/Uri;
    goto :goto_d

    .end local v1    # "u":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v20    # "uri":Landroid/net/Uri;
    .restart local v22    # "u":Ljava/lang/String;
    :cond_18
    move-object/from16 v2, p1

    move-object/from16 v5, v20

    move-object/from16 v1, v22

    .line 329
    .end local v17    # "scheme":Ljava/lang/String;
    .end local v18    # "host":Ljava/lang/String;
    .end local v19    # "kylinPrefix":Ljava/lang/String;
    .end local v20    # "uri":Landroid/net/Uri;
    .end local v22    # "u":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    :goto_d
    goto :goto_10

    .line 327
    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v20    # "uri":Landroid/net/Uri;
    :catchall_6
    move-exception v0

    move-object/from16 v2, p1

    :goto_e
    move-object/from16 v5, v20

    .end local v20    # "uri":Landroid/net/Uri;
    .restart local v5    # "uri":Landroid/net/Uri;
    goto :goto_f

    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v8    # "uri":Landroid/net/Uri;
    :catchall_7
    move-exception v0

    move-object/from16 v2, p1

    move-object v5, v8

    .line 328
    .end local v8    # "uri":Landroid/net/Uri;
    .local v0, "throwable":Ljava/lang/Throwable;
    .restart local v5    # "uri":Landroid/net/Uri;
    :goto_f
    iget-object v1, v7, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerControllerProviderImpl;->TAG:Ljava/lang/String;

    const-string v3, "catch exception "

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 86
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_19
    move-object/from16 v2, p1

    move-object v5, v8

    .line 332
    .end local v8    # "uri":Landroid/net/Uri;
    .restart local v5    # "uri":Landroid/net/Uri;
    :goto_10
    const/4 v1, 0x0

    return-object v1
.end method
