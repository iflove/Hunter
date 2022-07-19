.class public Lcom/alipay/mobile/nebulax/engine/a/c/c;
.super Lcom/alipay/mobile/worker/H5WorkerControllerProvider;
.source "WebWorkerController.java"


# instance fields
.field protected a:Z

.field protected b:Lcom/alipay/mobile/worker/H5Worker;

.field private c:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/worker/H5Worker;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/worker/H5WorkerControllerProvider;-><init>(Lcom/alipay/mobile/worker/H5Worker;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->a:Z

    .line 35
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->d:Z

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->b:Lcom/alipay/mobile/worker/H5Worker;

    .line 42
    instance-of v0, p1, Lcom/alipay/mobile/worker/WebWorker;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/worker/WebWorker;

    invoke-virtual {p1}, Lcom/alipay/mobile/worker/WebWorker;->getBridgeToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->e:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->d:Z

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->d:Z

    .line 153
    const-string v0, "AlipayJSBridgeReady"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consoleMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/worker/WebWorkerUtils;->workerErrorLogMonitor(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->c:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    .line 47
    return-void
.end method

.method public handleMsgFromWorker(Ljava/lang/String;)Z
    .locals 7

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    return v1

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/c;->a(Ljava/lang/String;)V

    .line 97
    const-string v0, "AlipayJSBridgeReady"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 98
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->b:Lcom/alipay/mobile/worker/H5Worker;

    invoke-virtual {p1}, Lcom/alipay/mobile/worker/H5Worker;->onAlipayJSBridgeReady()V

    .line 99
    return v2

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMsgFromWorker msg = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WebWorkerController"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    nop

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "h5container.message: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jserror:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_3
    move-object v0, v5

    .line 114
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    return v1

    .line 117
    :cond_4
    const-string v4, ""

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 119
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 122
    :cond_5
    const-string v0, "data"

    invoke-static {p1, v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 124
    if-nez v0, :cond_6

    .line 125
    const-string p1, "invalid param, handleMsgFromWorker data = null"

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_6
    const-string v0, "handlerName"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "postMessage"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->c:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;->postMessage(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 131
    :cond_7
    const-string v4, "callbackId"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 133
    const-string p1, "invalid callbackId"

    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return v1

    .line 136
    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->c:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/nebulax/engine/a/c/c$1;

    invoke-direct {v3, p0, v4}, Lcom/alipay/mobile/nebulax/engine/a/c/c$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/c/c;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1, v3}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;->handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;)V

    .line 147
    :goto_1
    return v2

    .line 120
    :cond_9
    :goto_2
    return v1
.end method

.method public shouldInterceptRequest4Worker(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9

    .line 52
    const-string v0, "index.worker.js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WebWorkerController"

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "shouldInterceptRequest4Worker index.worker.js"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/a/c/d;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->a:Z

    if-eqz v2, :cond_1

    .line 60
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->a:Z

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/alipay/mobile/h5container/api/H5PageData;->swFirstJsApiCallTime:J

    .line 64
    :cond_1
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldInterceptRequest4ServiceWorker data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 68
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    const-string p1, "action"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    const-string p1, "requestId"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 74
    const-string p1, "applicationId"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    const-string p1, "callback"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->c:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    invoke-interface/range {v3 .. v8}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;->jsapiCall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 69
    :cond_3
    :goto_0
    return-object v0

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/c;->c:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;->workerjsLoad(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    return-object p1

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    const-string v2, "catch exception "

    invoke-static {v1, v2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-object v0
.end method
