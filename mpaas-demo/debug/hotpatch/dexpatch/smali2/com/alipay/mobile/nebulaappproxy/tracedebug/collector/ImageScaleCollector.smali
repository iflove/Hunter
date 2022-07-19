.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector;
.super Ljava/lang/Object;
.source "ImageScaleCollector.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 6
    .param p0, "result"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector;

    monitor-enter v0

    .line 20
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;

    .line 22
    .local v3, "usage":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/TDPageUtil;->b()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v4

    .line 23
    .local v2, "webview":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(function determineNaturalSize(url) {\nconst img = new Image();\nimg.src = url\nreturn {\nnaturalWidth: img.naturalWidth,\nnaturalHeight: img.naturalHeight\n}\n})(\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;

    invoke-direct {v5, v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;)V

    .line 24
    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v2    # "webview":Lcom/alipay/mobile/nebula/webview/APWebView;
    .end local v3    # "usage":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;
    :cond_0
    goto :goto_0

    .line 59
    :cond_1
    monitor-exit v0

    return-void

    .line 19
    .end local p0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
