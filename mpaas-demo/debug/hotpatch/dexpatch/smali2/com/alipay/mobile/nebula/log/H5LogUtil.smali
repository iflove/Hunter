.class public Lcom/alipay/mobile/nebula/log/H5LogUtil;
.super Ljava/lang/Object;
.source "H5LogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V
    .locals 2
    .param p0, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;
    .param p1, "logConfig"    # Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    .local v1, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    .line 43
    :cond_0
    return-void
.end method

.method private static getJSApiBlackList(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 66
    .local v0, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 67
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "h5_apiLogBlackList"

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 69
    .local v2, "config":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 71
    return-object v1

    .line 74
    .end local v2    # "config":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-object v0
.end method

.method public static getPerformanceJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 57
    const-string/jumbo v0, "performance"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getJSApiBlackList(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 61
    const-string/jumbo v0, "security"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getJSApiBlackList(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 2
    .param p0, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 25
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->newH5MonitorLogConfig()Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v0

    .line 26
    const-string v1, "H-EM"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogHeader(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v0

    .line 27
    const-string v1, "H5Exception"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogType(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v0

    .line 28
    .local v0, "logConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V

    .line 29
    return-void
.end method

.method public static logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 2
    .param p0, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 17
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->newH5BehaviorLogConfig()Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v0

    .line 18
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setLogLevel(I)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v0

    .line 19
    const-string v1, "NebulaTech"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v0

    .line 20
    .local v0, "logConfig":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    .line 21
    return-void
.end method

.method public static monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V
    .locals 2
    .param p0, "logData"    # Lcom/alipay/mobile/nebula/log/H5LogData;
    .param p1, "logConfig"    # Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    .local v1, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static useNewLogUpload()Z
    .locals 3

    .line 46
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 47
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "h5_newLogUpload"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x1

    return v2

    .line 53
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
