.class public final Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;
.super Ljava/lang/Object;
.source "RequestCollectorProxy.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

.field private c:Ljava/lang/Object;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 1
    .param p1, "instance"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->c:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->d:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->e:Ljava/util/List;

    .line 40
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;)V
    .locals 5
    .param p0, "res"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;

    .line 263
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->obtain()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 264
    .local v2, "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    move-object v2, v0

    const-string v3, "NET"

    iput-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    .line 265
    iget-wide v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->e:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    .line 266
    iget-wide v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->f:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->endTime:Ljava/lang/String;

    .line 267
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 268
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->a:Ljava/lang/String;

    const-string v4, "httpCode"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->b:Ljava/lang/String;

    const-string/jumbo v3, "page"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->d:Ljava/lang/String;

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->c:Ljava/lang/String;

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-wide v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v3, "size"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->detail:Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trace: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V

    .line 276
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->recycle()V

    .line 277
    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z

    .line 143
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string v1, "doUpdateVisitedHistory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 145
    return-void
.end method

.method public final getJSBridge()Ljava/lang/String;
    .locals 2

    .line 185
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string v1, "getJSBridge"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getJSBridge()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPageUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestMap()Ljava/util/Map;
    .locals 2

    .line 203
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string v1, "getRequestMap"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getRequestMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 131
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onFirstVisuallyRender"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 133
    return-void
.end method

.method public final onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message1"    # Landroid/os/Message;

    .line 137
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onFormResubmission"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 139
    return-void
.end method

.method public final onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;

    .line 209
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLoadResource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->d:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v3

    invoke-direct {v2, p0, p2, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;Ljava/lang/String;J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "l"    # J

    .line 62
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method public final onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 58
    return-void
.end method

.method public final onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string/jumbo v2, "onReceivedError: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apHttpAuthHandler"    # Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceivedHttpAuthRequest"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public final onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V
    .locals 3
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string/jumbo v2, "onReceivedHttpError: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public final onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "s2"    # Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceivedLoginRequest"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedLoginRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public final onReceivedResponseHeader(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "onReceivedResponseHeader: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedResponseHeader(Ljava/util/Map;)V

    .line 193
    return-void
.end method

.method public final onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apSslErrorHandler"    # Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;
    .param p3, "sslError"    # Landroid/net/http/SslError;

    .line 149
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceivedSslError"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 151
    return-void
.end method

.method public final onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
    .locals 6
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "l"    # J

    .line 241
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResourceFinishLoad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v0

    .line 243
    .local v0, "endTime":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 244
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 245
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;

    .line 247
    .local v4, "res":Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;
    move-object v4, v5

    iget-object v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->d:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    iput-wide v0, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->f:J

    .line 249
    iput-wide p3, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->g:J

    .line 250
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->h:Z

    .line 251
    iget-boolean v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->i:Z

    if-eqz v5, :cond_1

    .line 252
    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;)V

    .line 253
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 257
    .end local v4    # "res":Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;
    :cond_0
    goto :goto_0

    .line 258
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 260
    return-void

    .line 258
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public final onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "hashMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onResourceResponse: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "url"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;

    .line 223
    .local v3, "res":Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;
    const-string/jumbo v4, "url"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->d:Ljava/lang/String;

    const-string/jumbo v5, "url"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    const-string v4, "httpcode"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "httpcode"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v4, "400"

    :goto_1
    iput-object v4, v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->a:Ljava/lang/String;

    .line 225
    const-string/jumbo v4, "mimetype"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "mimetype"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_1
    const-string v4, "NoneType"

    :goto_2
    iput-object v4, v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->c:Ljava/lang/String;

    .line 226
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->b:Ljava/lang/String;

    .line 227
    iput-boolean v2, v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->i:Z

    .line 228
    iget-boolean v2, v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->h:Z

    if-eqz v2, :cond_3

    .line 229
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;)V

    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 234
    .end local v3    # "res":Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;
    :cond_2
    goto :goto_0

    .line 235
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "v"    # F
    .param p3, "v1"    # F

    .line 173
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onScaleChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V

    .line 175
    return-void
.end method

.method public final onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message1"    # Landroid/os/Message;

    .line 99
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onTooManyRedirects"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onTooManyRedirects(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 101
    return-void
.end method

.method public final onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 167
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onUnhandledKeyEvent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V

    .line 169
    return-void
.end method

.method public final onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V
    .locals 3
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "type"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "onWebViewEvent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public final shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "apWebResourceRequest"    # Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "shouldInterceptRequest1: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string/jumbo v2, "shouldInterceptRequest2: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public final shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z
    .locals 4
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "hashMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "shouldInterceptResponse: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public final shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 161
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const-string/jumbo v1, "shouldOverrideKeyEvent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string/jumbo v2, "shouldOverrideUrlLoading: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # I

    .line 197
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string/jumbo v2, "shouldOverrideUrlLoadingForUC: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;->b:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoadingForUC(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
