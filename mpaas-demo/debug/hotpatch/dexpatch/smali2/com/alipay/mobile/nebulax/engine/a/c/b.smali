.class public Lcom/alipay/mobile/nebulax/engine/a/c/b;
.super Ljava/lang/Object;
.source "UCWorkerController.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Lcom/alipay/mobile/nebulax/engine/a/c/b;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "NebulaXEngine.UCWorker"

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b;->b:Z

    .line 43
    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .locals 8

    .line 78
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/b;->b:Z

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/alipay/mobile/h5container/api/H5PageData;->swFirstJsApiCallTime:J

    .line 82
    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 84
    const/4 v2, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 90
    :cond_1
    const-string v3, "element"

    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "canvas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const-string v3, "actionType"

    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "draw"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 93
    :goto_0
    if-nez v1, :cond_3

    .line 94
    sget-object v1, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intercept data ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_3
    const-string p1, "applicationId"

    invoke-static {v7, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    const-string p1, "action"

    invoke-static {v7, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    const-string p1, "requestId"

    invoke-static {v7, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 101
    const-string p1, "callback"

    invoke-static {v7, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    const-string p1, "mtop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "apiName"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".start"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    const-string v0, "main"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_4
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    move-result-object p1

    .line 112
    if-nez p1, :cond_5

    .line 113
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a:Ljava/lang/String;

    const-string v0, " workerProxy == null ,maybe it has destroy .return"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string p1, "H5_SW_PageNull"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    invoke-virtual {p1, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 118
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/a/c/d;->a()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 123
    :cond_5
    const-string v0, "postMessage"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;->getWorkerProcessor()Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    move-result-object p1

    invoke-interface {p1, v7}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;->postMessage(Lcom/alibaba/fastjson/JSONObject;)V

    .line 125
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/a/c/d;->a()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 127
    :cond_6
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;->getWorkerProcessor()Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;

    move-result-object v2

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;->jsapiCall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 85
    :cond_7
    :goto_1
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intercept data parse error for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v2
.end method

.method public static a()Lcom/alipay/mobile/nebulax/engine/a/c/b;
    .locals 1

    .line 36
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/a/c/b;->c:Lcom/alipay/mobile/nebulax/engine/a/c/b;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/c/b;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/a/c/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/a/c/b;->c:Lcom/alipay/mobile/nebulax/engine/a/c/b;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/a/c/b;->c:Lcom/alipay/mobile/nebulax/engine/a/c/b;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
    .locals 2

    .line 156
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebulax/engine/a/a;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;
    .locals 4

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/b;->b(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object v0

    .line 143
    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEngineProxyByWorkId  is null,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v1

    .line 147
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getWorkerProxy()Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    move-result-object p1

    return-object p1

    .line 134
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/a/c/b;->b()Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object p1

    .line 135
    if-nez p1, :cond_3

    .line 136
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a:Ljava/lang/String;

    const-string v0, "top engine proxy  is null"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v1

    .line 139
    :cond_3
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getWorkerProxy()Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
    .locals 2

    .line 152
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebulax/engine/a/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest4ServiceWorker(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;
    .locals 3

    .line 48
    new-instance v0, Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;-><init>()V

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;->processed:Z

    .line 52
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    if-eqz v1, :cond_3

    const-string v2, "NebulaX/1.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    return-object v0

    .line 65
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/a/c/d;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "https://alipay.kylinBridge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    .line 69
    return-object v0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/a/c/b;->b()Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/engine/a/c/d;->a(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    .line 73
    return-object v0

    .line 55
    :cond_3
    :goto_0
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a:Ljava/lang/String;

    const-string v1, "not nebulax  worker request. exit"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/alipay/mobile/nebula/provider/NXWebResourceResponse;->processed:Z

    .line 57
    return-object v0
.end method
