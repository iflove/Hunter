.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;
.super Ljava/lang/Object;
.source "DomCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->b:Ljava/util/List;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;
    .locals 1

    .line 21
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector$a;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2b57081

    const-string v2, "domSize"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x6d806863

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "domWidthDepth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 42
    :cond_3
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 43
    .local v0, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "width"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string/jumbo v5, "max"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->d:I

    .line 44
    const-string v3, "depth"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->e:I

    goto :goto_3

    .line 39
    .end local v0    # "obj":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->c:I

    .line 40
    nop

    .line 47
    :goto_2
    move-object v0, v1

    :goto_3
    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->c:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->d:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->e:I

    if-eqz v3, :cond_6

    .line 48
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/TDPageUtil;->a()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "page":Ljava/lang/String;
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;

    invoke-direct {v5, v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;-><init>(Ljava/lang/String;)V

    .line 50
    .local v5, "appxPage":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 51
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->obtain()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    move-result-object v6

    .line 52
    .local v0, "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    move-object v0, v6

    const-string v7, "DOM"

    iput-object v7, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v6

    .line 54
    .local v6, "time":J
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    .line 55
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->endTime:Ljava/lang/String;

    .line 56
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 57
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v8

    const-string/jumbo v9, "page"

    invoke-virtual {v8, v9, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "domWidth"

    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "domDepth"

    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->detail:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v4}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V

    .line 63
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "send: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->b:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->recycle()V

    .line 67
    .end local v0    # "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    .end local v1    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "time":J
    :cond_5
    iput v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->c:I

    .line 68
    iput v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->d:I

    .line 69
    iput v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/DomCollector;->e:I

    .line 71
    .end local v3    # "page":Ljava/lang/String;
    .end local v5    # "appxPage":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;
    :cond_6
    return-void
.end method
