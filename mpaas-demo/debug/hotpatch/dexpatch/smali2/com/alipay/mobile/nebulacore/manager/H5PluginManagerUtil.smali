.class public Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;
.super Ljava/lang/Object;
.source "H5PluginManagerUtil.java"


# static fields
.field private static a:Ljava/lang/Boolean;

.field public static instance:Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;


# instance fields
.field private b:Lcom/alibaba/fastjson/JSONArray;

.field private c:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->a:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->b:Lcom/alibaba/fastjson/JSONArray;

    .line 36
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->c:Lcom/alibaba/fastjson/JSONArray;

    .line 37
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 38
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    const-string v0, "h5_jsapiandPluginsConfig"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 42
    .local v1, "config":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->b:Lcom/alibaba/fastjson/JSONArray;

    const-string v3, "jsapis"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->b:Lcom/alibaba/fastjson/JSONArray;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->c:Lcom/alibaba/fastjson/JSONArray;

    const-string v3, "plugins"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->c:Lcom/alibaba/fastjson/JSONArray;

    .line 47
    return-void

    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public static enableFilterPlugin()Z
    .locals 2

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 69
    const-string v0, "h5_enableFilterPlugin"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "config":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->a:Ljava/lang/Boolean;

    .line 72
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->instance:Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->instance:Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    .line 31
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->instance:Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isInJsApiBlackList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "jsApiName"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->b:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 60
    .local v1, "result":Z
    move v1, v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unregister jsApi, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is in blackList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5PluginManagerUtil"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "PSD_Jsapi_Register_Forbidden"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "jsapi"

    invoke-virtual {v0, v2, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 64
    :cond_0
    return v1
.end method

.method public isInPluginBlackList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pluginName"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->c:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 51
    .local v1, "result":Z
    move v1, v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unregister plugin, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is in blackList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5PluginManagerUtil"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "PSD_Plugin_Register_Forbidden"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "plugin"

    invoke-virtual {v0, v2, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 55
    :cond_0
    return v1
.end method
