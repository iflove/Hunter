.class public Lcom/alipay/mobile/nebulax/engine/cube/a/c;
.super Ljava/lang/Object;
.source "HttpHandlerAdapter.java"

# interfaces
.implements Lcom/antfin/cube/platform/handler/ICKRequestHandler;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "NebulaXEngine.HttpHandlerAdapter"

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a/c;Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a(Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;)V

    return-void
.end method

.method private a(Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;)V
    .locals 7

    .line 48
    const-string v0, "httpRequest exception"

    invoke-interface {p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/a/f;->a()Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    move-result-object v2

    .line 53
    invoke-interface {p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;->getParameters()Ljava/util/Map;

    move-result-object v3

    const-string v4, "PARAM_KEY_APP_INSTANCE"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "2"

    if-eqz v4, :cond_0

    .line 55
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load fail appInstanceId is null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, v5}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    move-result-object p1

    const-string v0, "appInstanceId proxy is empty"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->b(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a()Lcom/alipay/mobile/nebulax/engine/cube/a/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;->onHttpFinish(Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpResponse;)V

    .line 57
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object v4

    const-class v6, Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-virtual {v4, v6, v3}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load fail engine proxy is null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v5}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    move-result-object p1

    const-string v0, "engine proxy is null"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->b(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a()Lcom/alipay/mobile/nebulax/engine/cube/a/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;->onHttpFinish(Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpResponse;)V

    .line 63
    return-void

    .line 67
    :cond_1
    const-class v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-static {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    .line 68
    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->newBuilder()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v5

    .line 69
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->uri(Landroid/net/Uri;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v5

    .line 70
    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->sourceNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->originUrl(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;

    move-result-object v3

    .line 68
    invoke-interface {v4, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;->load(Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v4}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 73
    iget-object p1, v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load success from pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a([B)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a()Lcom/alipay/mobile/nebulax/engine/cube/a/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;->onHttpFinish(Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpResponse;)V

    .line 76
    return-void

    .line 80
    :cond_2
    const-class v3, Lcom/alipay/mobile/nebulax/common/network/NXTransportService;

    invoke-static {v3}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulax/common/network/NXTransportService;

    .line 81
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->newBuilder()Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;

    move-result-object v4

    .line 82
    invoke-interface {p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->method(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;

    move-result-object v4

    .line 83
    invoke-interface {p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;->getBody()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->requestData([B)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;

    move-result-object v4

    .line 84
    invoke-interface {p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;->getTimeouts()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->timeout(J)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->url(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;

    move-result-object p1

    const/4 v4, 0x0

    .line 86
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->useSpdy(Z)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->build()Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    move-result-object p1

    .line 89
    :try_start_0
    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebulax/common/network/NXTransportService;->httpRequest(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;

    move-result-object p1

    .line 90
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;->getResStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;->getResStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 92
    sget-object v3, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load success from online "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a([B)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a()Lcom/alipay/mobile/nebulax/engine/cube/a/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;->onHttpFinish(Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpResponse;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-void

    .line 100
    :catch_0
    move-exception p1

    .line 101
    sget-object v3, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 98
    :catch_1
    move-exception p1

    .line 99
    sget-object v3, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :catch_2
    move-exception p1

    .line 97
    sget-object v3, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    invoke-static {v3, v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :cond_3
    :goto_0
    nop

    .line 104
    :goto_1
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load fail "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string p1, "3"

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    move-result-object p1

    const-string v0, "unknow error"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->b(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a()Lcom/alipay/mobile/nebulax/engine/cube/a/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;->onHttpFinish(Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpResponse;)V

    .line 106
    return-void
.end method


# virtual methods
.method public sendRequest(Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;)V
    .locals 3

    .line 36
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/a/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/a/c$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a/c;Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpRequest;Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKOnHttpListener;)V

    const-string p1, "URGENT_DISPLAY"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
