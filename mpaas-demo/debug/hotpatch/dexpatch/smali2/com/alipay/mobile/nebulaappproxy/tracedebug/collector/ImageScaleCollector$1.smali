.class final Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;
.super Ljava/lang/Object;
.source "ImageScaleCollector.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 35
    .local v0, "img":Lcom/alibaba/fastjson/JSONObject;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->getClientRect()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->getClientRect()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 36
    .local v1, "displayHeight":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->getClientRect()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->getClientRect()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ClientRect;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 37
    .local v2, "displayWidth":I
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 38
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v3

    .line 39
    .local v3, "time":J
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->obtain()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 40
    .local v7, "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    move-object v7, v5

    const-string v8, "SCALE"

    iput-object v8, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    .line 41
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    .line 42
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->endTime:Ljava/lang/String;

    .line 43
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 44
    .local v6, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v5

    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/ResUsage;->getSrc()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "url"

    invoke-virtual {v5, v9, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/TDPageUtil;->a()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "page"

    invoke-virtual {v6, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "clientHeight"

    invoke-virtual {v6, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "clientWidth"

    invoke-virtual {v6, v8, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v5, "naturalHeight"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v5, "naturalWidth"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->detail:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v5

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "send: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->recycle()V

    .line 55
    .end local v3    # "time":J
    .end local v6    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/ImageScaleCollector$1;->a(Ljava/lang/String;)V

    return-void
.end method
