.class public Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;
.super Ljava/lang/Object;
.source "TinyAppRemoteDebugInterceptorImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;
.implements Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$onStateChangedActionListener;
.implements Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$b;,
        Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$a;,
        Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$c;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "channelId"

.field public static final TAG:Ljava/lang/String;

.field private static final WEBSOCKET_HOST_URL:Ljava/lang/String; = "wss://hpmweb.alipay.com/host/"

.field private static final WEBSOCKET_HOST_URL_PRE:Ljava/lang/String; = "wss://hpmweb-pre.alipay.com/host/"


# instance fields
.field private h5Event:Lcom/alipay/mobile/h5container/api/H5Event;

.field private mConnectParams:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$a;

.field private mConnectedStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

.field private mNetInfoReceiver:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$b;

.field private mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

.field private mWorkerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->initDataChannel()V

    .line 69
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    .line 70
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$onStateChangedActionListener;)V

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mConnectedStateMap:Ljava/util/Map;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$1;

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    return-object v0
.end method

.method private getDataChannel()Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;
    .locals 1

    .line 98
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;->WEBSOCKET_CHANNEL:Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;
    .locals 1

    .line 81
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$c;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;

    return-object v0
.end method

.method private getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 5

    .line 320
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 321
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    move-object v2, v0

    .line 322
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 323
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string v3, "getTopH5Page "

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-object v0

    .line 327
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;

    move-result-object v1

    move-object v3, v0

    .line 328
    .local v3, "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 329
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5BaseFragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0

    .line 332
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 333
    .end local v2    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v3    # "h5BaseFragment":Lcom/alipay/mobile/h5container/api/H5BaseFragment;
    :catchall_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTopH5Page...e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method private initDataChannel()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->getDataChannel()Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;->WEBSOCKET_CHANNEL:Lcom/alipay/mobile/nebulaappproxy/remotedebug/DataChannelEnum;

    if-ne v0, v1, :cond_0

    .line 90
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/websocket/WebSocketDataChannel;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel$DataStatusChangedListener;)V

    .line 95
    return-void
.end method

.method private recvRenderDebugMessage(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "data"

    .line 295
    const-string v1, "CMD:RECV_RENDER_DEBUG:"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 296
    .local v3, "msg":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recvRenderDebugMessage...msg is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v4, v2

    .line 302
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v1

    if-nez v1, :cond_1

    .line 303
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recvRenderDebugMessage...h5Page is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void

    .line 308
    :cond_1
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v5, v2

    .line 309
    .local v5, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v1

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v6, v2

    .line 311
    .local v6, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v1

    invoke-virtual {v1, v0, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const-string/jumbo v1, "renderDebugMessage"

    invoke-interface {v0, v1, v6, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 313
    :catchall_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "recvRenderDebugMessage...e="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private registerNetInfoReceiver()V
    .locals 4

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->h5Event:Lcom/alipay/mobile/h5container/api/H5Event;

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$b;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mNetInfoReceiver:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$b;

    .line 371
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 372
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->h5Event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mNetInfoReceiver:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$b;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerNetInfoReceiver: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private unregisterNetInfoReceiver()V
    .locals 4

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mNetInfoReceiver:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->h5Event:Lcom/alipay/mobile/h5container/api/H5Event;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mNetInfoReceiver:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$b;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterActionReceiver: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mNetInfoReceiver:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$b;

    .line 393
    return-void
.end method


# virtual methods
.method public exitDebugMode()V
    .locals 3

    .line 347
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string v1, "exitDebugMode"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

    const-string v1, "CMD:LOCAL_DISCONNECTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;->a(Ljava/lang/String;)Z

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

    const/16 v1, 0x3e9

    const-string/jumbo v2, "user_exit_debug"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;->a(ILjava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->unregisterNetInfoReceiver()V

    .line 354
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 355
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "exitSession"

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 358
    :cond_0
    return-void
.end method

.method public exitDebugModeExternally()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_EXITED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V

    .line 362
    return-void
.end method

.method public isRemoteDebugConnected(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    return v1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mConnectedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 194
    .local v2, "isConnected":Ljava/lang/Boolean;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onConnectClosed(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 235
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConnectClosed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mConnectedStateMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_CONNECT_FAILED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V

    .line 238
    return-void
.end method

.method public onConnectError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnectError...error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",errorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mConnectedStateMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_CONNECT_FAILED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V

    .line 245
    return-void
.end method

.method public onConnectFailed()V
    .locals 2

    .line 229
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConnectFailed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_CONNECT_FAILED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V

    .line 231
    return-void
.end method

.method public onConnectSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConnectSuccess"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mConnectedStateMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_CONNECTED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V

    .line 205
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mWorkerId:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Android"

    aput-object v4, v3, v2

    const-string v2, "CMD:REGISTER_WORKER:%s:%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;->a(Ljava/lang/String;)Z

    .line 208
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mWorkerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/worker/WorkerManager;->getWorker(Ljava/lang/String;)Lcom/alipay/mobile/worker/H5Worker;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/worker/WebWorker;

    const/4 v2, 0x0

    .line 219
    .local v2, "worker":Lcom/alipay/mobile/worker/WebWorker;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recv...worker is null: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mWorkerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void

    .line 224
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/worker/WebWorker;->onAlipayJSBridgeReady()V

    .line 225
    return-void
.end method

.method public recv(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 249
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recv..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const-string/jumbo v1, "recv...message is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 263
    :cond_0
    const-string v1, "CMD:REMOTE_DISCONNECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_REMOTE_DISCONNECTED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V

    .line 266
    return-void

    .line 267
    :cond_1
    const-string v1, "CMD:HIT_BREAKPOINT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_HIT_BREAKPOINT:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V

    .line 270
    return-void

    .line 271
    :cond_2
    const-string v1, "CMD:RELEASE_BREAKPOINT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_RELEASE_BREAKPOINT:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V

    .line 274
    return-void

    .line 275
    :cond_3
    const-string v1, "CMD:RECV_RENDER_DEBUG:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->recvRenderDebugMessage(Ljava/lang/String;)V

    .line 277
    return-void

    .line 280
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mWorkerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/worker/WorkerManager;->getWorker(Ljava/lang/String;)Lcom/alipay/mobile/worker/H5Worker;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/worker/WebWorker;

    const/4 v2, 0x0

    .line 281
    .local v2, "worker":Lcom/alipay/mobile/worker/WebWorker;
    move-object v2, v1

    if-nez v1, :cond_5

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recv...worker is null: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mWorkerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void

    .line 286
    :cond_5
    invoke-virtual {v2}, Lcom/alipay/mobile/worker/WebWorker;->getWorkerControllerProvider()Lcom/alipay/mobile/worker/H5WorkerControllerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/worker/H5WorkerControllerProvider;->handleMsgFromWorker(Ljava/lang/String;)Z

    .line 287
    return-void
.end method

.method public recv([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 341
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recv"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->recv(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public registerWorker(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 8
    .param p1, "workerId"    # Ljava/lang/String;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 108
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 109
    .local v2, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v2, v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->supportRemoteDebugMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->get()Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/worker/remotedebug/TinyAppRemoteDebugInterceptorManager;->setRemoteDebug(Z)V

    .line 112
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerWorker...remoteDebug is not open"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 117
    :cond_0
    if-nez p2, :cond_1

    .line 118
    return-void

    .line 121
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    move-object v4, v1

    .line 122
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v0

    if-nez v0, :cond_2

    .line 123
    return-void

    .line 126
    :cond_2
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->h5Event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 128
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    const-string v5, "channelId"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    .line 130
    .local v5, "channelId":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerWorker...channelId is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void

    .line 135
    :cond_3
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mWorkerId:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mStateManager:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Landroid/app/Activity;)V

    .line 137
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->registerNetInfoReceiver()V

    .line 139
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "registerWorker..."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "wss://hpmweb.alipay.com/host/"

    .line 143
    .local v0, "webSocketHost":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v6

    if-nez v6, :cond_5

    .line 144
    const-string v6, "h5_remote_debug_host"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    .line 145
    .local v7, "webSocketHostConfig":Ljava/lang/String;
    move-object v7, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v7

    goto :goto_0

    :cond_4
    move-object v6, v0

    :goto_0
    move-object v0, v6

    .line 165
    .end local v7    # "webSocketHostConfig":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "webSocketUrl":Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$a;

    invoke-direct {v7, v3}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$a;-><init>(B)V

    iput-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mConnectParams:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$a;

    .line 168
    iput-object v1, v7, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$a;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mConnectParams:Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$a;

    iput-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl$a;->a:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

    invoke-virtual {v1, v6, p2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 173
    return-void
.end method

.method public remoteLoadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "remoteLoadUrl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;->a(Ljava/lang/String;)Z

    .line 179
    return-void
.end method

.method public sendMessageToRemoteWorker(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 183
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMessageToRemoteWorker"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->mDataChannel:Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/AbstractDataChannel;->a(Ljava/lang/String;)Z

    .line 185
    return-void
.end method
