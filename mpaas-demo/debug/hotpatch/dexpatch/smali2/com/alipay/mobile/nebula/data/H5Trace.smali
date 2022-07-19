.class public Lcom/alipay/mobile/nebula/data/H5Trace;
.super Ljava/lang/Object;
.source "H5Trace.java"


# static fields
.field private static sEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/data/H5Trace;->sEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebula/data/H5Trace;->isTraceEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    const/4 v1, 0x0

    .line 43
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5TraceProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {p2}, Lcom/alipay/mobile/nebula/data/H5Trace;->formatParam([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-interface {v1, p0, p1, v0}, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;->event(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 46
    :cond_1
    return-void
.end method

.method private static formatParam([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p0, "params"    # [Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 24
    .local v0, "jobj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 28
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 25
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static isTraceEnable()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/alipay/mobile/nebula/data/H5Trace;->sEnabled:Z

    return v0
.end method

.method public static varargs sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/alipay/mobile/nebula/data/H5Trace;->isTraceEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    const/4 v1, 0x0

    .line 58
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5TraceProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {p2}, Lcom/alipay/mobile/nebula/data/H5Trace;->formatParam([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-interface {v1, p0, p1, v0}, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;->sessionBegin(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 61
    :cond_1
    return-void
.end method

.method public static varargs sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebula/data/H5Trace;->isTraceEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;

    const/4 v1, 0x0

    .line 73
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5TraceProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {p2}, Lcom/alipay/mobile/nebula/data/H5Trace;->formatParam([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-interface {v1, p0, p1, v0}, Lcom/alipay/mobile/nebula/provider/H5TraceProvider;->sessionEnd(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 76
    :cond_1
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "sEnabled"    # Z

    .line 15
    sput-boolean p0, Lcom/alipay/mobile/nebula/data/H5Trace;->sEnabled:Z

    .line 16
    return-void
.end method
