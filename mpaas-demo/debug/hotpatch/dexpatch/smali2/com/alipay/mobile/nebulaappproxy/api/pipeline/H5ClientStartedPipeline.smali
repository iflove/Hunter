.class public Lcom/alipay/mobile/nebulaappproxy/api/pipeline/H5ClientStartedPipeline;
.super Ljava/lang/Object;
.source "H5ClientStartedPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->addListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 39
    return-void
.end method

.method private static b()V
    .locals 4

    .line 43
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver;-><init>()V

    .line 44
    .local v0, "h5UserActionReceiver":Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5UserActionReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const/4 v2, 0x0

    .line 45
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    move-object v2, v1

    const-string v3, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 27
    const-string v0, "H5ClientStartedPipeline"

    :try_start_0
    const-string v1, "H5ClientStartedPipeline start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/pipeline/H5ClientStartedPipeline;->a()V

    .line 29
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/pipeline/H5ClientStartedPipeline;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
