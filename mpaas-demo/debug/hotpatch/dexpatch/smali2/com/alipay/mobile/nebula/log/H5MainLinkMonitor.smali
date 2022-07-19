.class public Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;
.super Ljava/lang/Object;
.source "H5MainLinkMonitor.java"


# static fields
.field public static final CLIENT_CALL_NODE:Ljava/lang/String; = "client_call"

.field public static final FIRST_REQUEST_HANDLE:Ljava/lang/String; = "firstRequest_handle"

.field public static FIRST_REQUEST_HANDLE_TIME:I = 0x0

.field public static final FIRST_REQUEST_START:Ljava/lang/String; = "firstRequest_start"

.field public static FIRST_REQUEST_START_TIME:I = 0x0

.field public static final LINK_ID:Ljava/lang/String; = "app_start"

.field public static final PAGE_APPEAR:Ljava/lang/String; = "page_appear"

.field public static PAGE_APPEAR_TIME:I = 0x0

.field public static final PAGE_FAIL:Ljava/lang/String; = "page_fail"

.field public static final PAGE_FINISH:Ljava/lang/String; = "page_finish"

.field public static PAGE_FINISH_TIME:I = 0x0

.field public static final PAGE_START:Ljava/lang/String; = "page_start"

.field public static PAGE_START_TIME:I = 0x0

.field public static final SESSION_CREATE:Ljava/lang/String; = "session_create"

.field public static SESSION_CREATE_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "H5LinkMonitorImpl"

.field public static mainLinkConfig:Lcom/alibaba/fastjson/JSONObject;

.field private static mainLinkEnable:Z

.field private static monitorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/16 v0, 0x1388

    sput v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->SESSION_CREATE_TIME:I

    .line 34
    const/16 v0, 0xbb8

    sput v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_APPEAR_TIME:I

    .line 36
    sput v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_HANDLE_TIME:I

    .line 38
    sput v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_START_TIME:I

    .line 40
    sput v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_START_TIME:I

    .line 42
    const/16 v0, 0x1f40

    sput v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_FINISH_TIME:I

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->monitorMap:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkEnable:Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelLinkMonitor(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->monitorMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    const/4 v1, 0x0

    .line 118
    .local v1, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    const-string v0, "app_start"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->cancelLinkMonitor(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private static checkValidity(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 1
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 227
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->linkCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static enableMainLinkMonitor()Z
    .locals 5

    .line 54
    sget-object v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkConfig:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 56
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "h5_mainLinkConfig"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v1

    .line 58
    .local v3, "config":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sput-object v3, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkConfig:Lcom/alibaba/fastjson/JSONObject;

    .line 60
    const-string v0, "enable"

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 61
    .local v0, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v4, "timeout"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->setTimeout(Lcom/alibaba/fastjson/JSONObject;)V

    .line 62
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, "app_start"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 64
    sput-boolean v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkEnable:Z

    return v1

    .line 68
    .end local v0    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "config":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    nop

    .line 71
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->mainLinkEnable:Z

    return v0
.end method

.method private static logLinkTimingStatistic(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V
    .locals 8
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "h5LinkMonitor"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    .line 210
    const-string v0, "H5_LINK_TIMING_STATISTIC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "linkId"

    const-string v2, "app_start"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 212
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-interface {p1, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->getLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 213
    .local v2, "nodeList":Ljava/util/List;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    .line 215
    .local v3, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 216
    .end local v3    # "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    goto :goto_0

    .line 219
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 223
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 224
    return-void
.end method

.method private static setTimeout(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p0, "config"    # Lcom/alibaba/fastjson/JSONObject;

    .line 75
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    const-string v0, "client_call^session_create"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 79
    .local v2, "sessionCreateT":I
    move v2, v0

    if-lez v0, :cond_1

    .line 80
    sput v2, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->SESSION_CREATE_TIME:I

    .line 82
    :cond_1
    const-string/jumbo v0, "session_create^page_appear"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    move v3, v1

    .line 83
    .local v3, "pageAppearT":I
    move v3, v0

    if-lez v0, :cond_2

    .line 84
    sput v3, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_APPEAR_TIME:I

    .line 86
    :cond_2
    const-string/jumbo v0, "session_create^firstRequest_handle"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    move v4, v1

    .line 87
    .local v4, "firstRequestHandleT":I
    move v4, v0

    if-lez v0, :cond_3

    .line 88
    sput v4, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_HANDLE_TIME:I

    .line 90
    :cond_3
    const-string v0, "firstRequest_handle^firstRequest_start"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    move v5, v1

    .line 91
    .local v5, "firstRequestStartT":I
    move v5, v0

    if-lez v0, :cond_4

    .line 92
    sput v5, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_START_TIME:I

    .line 94
    :cond_4
    const-string v0, "firstRequest_start^page_start"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    move v6, v1

    .line 95
    .local v6, "pageStartT":I
    move v6, v0

    if-lez v0, :cond_5

    .line 96
    sput v6, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_START_TIME:I

    .line 98
    :cond_5
    const-string/jumbo v0, "page_start^page_finish"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v1, "pageFinishT":I
    move v1, v0

    if-lez v0, :cond_6

    .line 100
    sput v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_FINISH_TIME:I

    .line 102
    :cond_6
    return-void

    .line 76
    .end local v1    # "pageFinishT":I
    .end local v2    # "sessionCreateT":I
    .end local v3    # "pageAppearT":I
    .end local v4    # "firstRequestHandleT":I
    .end local v5    # "firstRequestStartT":I
    .end local v6    # "pageStartT":I
    :cond_7
    :goto_0
    return-void
.end method

.method public static startMainLinkMonitor(Ljava/lang/String;)V
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->enableMainLinkMonitor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "H5LinkMonitorImpl"

    const-string v1, "enableMainLinkMonitor false, return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;-><init>()V

    .line 110
    .local v0, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    sget-object v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->monitorMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v7, "app_start"

    invoke-interface {v0, v7}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->addLinkMonitorTree(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v2, "app_start"

    const-string v3, "client_call"

    move-object v1, v0

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 113
    sget v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->SESSION_CREATE_TIME:I

    const-string/jumbo v2, "session_create"

    const-string v3, "client_call"

    invoke-interface {v0, v7, v2, v3, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 114
    return-void
.end method

.method public static triggerAppearLink(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 5
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 139
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 142
    const-string v3, "app_start"

    const-string/jumbo v4, "page_appear"

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    return-void
.end method

.method public static triggerHandleUrlLink(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 4
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 147
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_START_TIME:I

    const-string v2, "firstRequest_handle"

    const-string v3, "firstRequest_start"

    invoke-static {v0, v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerNodeEvent(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    return-void
.end method

.method public static triggerLoadUrlLink(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 4
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 155
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_START_TIME:I

    const-string v2, "firstRequest_start"

    const-string/jumbo v3, "page_start"

    invoke-static {v0, v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerNodeEvent(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method private static triggerNodeEvent(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "linkMonitor"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "nextNodeName"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .line 236
    if-nez p0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_start"

    invoke-interface {p0, v2, p1, v0, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V

    .line 240
    invoke-interface {p0, v2, p2, p1, p3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 241
    return-void
.end method

.method public static triggerPageFailLink(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 7
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 200
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v1

    const/4 v0, 0x0

    .line 204
    .local v0, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    move-object v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "app_start"

    const-string/jumbo v3, "page_fail"

    const-string/jumbo v6, "page_start"

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 205
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkCompleted(Z)V

    .line 206
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->logLinkTimingStatistic(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V

    .line 207
    return-void
.end method

.method public static triggerPageFinishLink(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 7
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 190
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v1

    const/4 v0, 0x0

    .line 194
    .local v0, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    move-object v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "app_start"

    const-string/jumbo v3, "page_finish"

    const-string/jumbo v6, "page_start"

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 195
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->setLinkCompleted(Z)V

    .line 196
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->logLinkTimingStatistic(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V

    .line 197
    return-void
.end method

.method public static triggerPageStartedLink(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 6
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 163
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->checkValidity(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    move-result-object v0

    const/4 v1, 0x0

    .line 167
    .local v1, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "app_start"

    const-string/jumbo v5, "page_start"

    invoke-interface {v0, v4, v5, v2, v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V

    .line 168
    sget v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_FINISH_TIME:I

    new-instance v2, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor$1;

    invoke-direct {v2}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor$1;-><init>()V

    const-string/jumbo v3, "page_finish"

    invoke-interface {v1, v4, v3, v0, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->checkExpectation(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V

    .line 187
    return-void
.end method

.method public static triggerSessionCreateLink(Lcom/alipay/mobile/h5container/api/H5Session;Ljava/lang/String;)V
    .locals 5
    .param p0, "session"    # Lcom/alipay/mobile/h5container/api/H5Session;
    .param p1, "appId"    # Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->monitorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;

    const/4 v1, 0x0

    .line 126
    .local v1, "linkMonitor":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    invoke-interface {p0, v1}, Lcom/alipay/mobile/h5container/api/H5Session;->setH5LinkMonitor(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V

    .line 130
    nop

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 130
    const-string v0, "app_start"

    const-string/jumbo v4, "session_create"

    invoke-interface {v1, v0, v4, v2, v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V

    .line 132
    sget v2, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_APPEAR_TIME:I

    const-string/jumbo v3, "page_appear"

    invoke-interface {v1, v0, v3, v4, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 134
    sget v2, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->FIRST_REQUEST_HANDLE_TIME:I

    const-string v3, "firstRequest_handle"

    invoke-interface {v1, v0, v3, v4, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 136
    return-void
.end method
