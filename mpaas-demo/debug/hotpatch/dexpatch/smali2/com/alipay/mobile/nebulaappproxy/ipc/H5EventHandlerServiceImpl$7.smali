.class Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$7;
.super Ljava/lang/Object;
.source "H5EventHandlerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->preConnectSpdy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;

    .line 976
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$7;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "H5EventHandlerImpl"

    .line 980
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 981
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 982
    const-string v1, "h5_preLoadInTinyProcess"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 983
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const/4 v3, 0x1

    .line 984
    .local v3, "preConnectSpdy":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 985
    const/4 v4, 0x1

    const-string/jumbo v5, "preConnectSpdy"

    invoke-static {v1, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 987
    :cond_0
    if-eqz v3, :cond_1

    .line 988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 990
    .local v4, "time":J
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 991
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->newInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    move-result-object v6

    const-string v7, "IO"

    .line 992
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->asynPreConnect(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 994
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AndroidSpdyHttpClient speed "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    return-void

    .line 995
    :catchall_0
    move-exception v6

    .line 996
    .local v6, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1000
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "preConnectSpdy":Z
    .end local v4    # "time":J
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
