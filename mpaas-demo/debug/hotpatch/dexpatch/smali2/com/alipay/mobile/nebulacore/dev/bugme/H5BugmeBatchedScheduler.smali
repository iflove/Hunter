.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;
.super Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;
.source "H5BugmeBatchedScheduler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    const-string v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;I)Lcom/alibaba/fastjson/JSONObject;
    .locals 7
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "singleValueLengthLimit"    # I

    .line 128
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 129
    .local v0, "clippedObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 133
    .local v4, "value":Ljava/lang/Object;
    const-string v5, "extra"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 134
    const-string v5, "app"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 135
    const-string v5, "img"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 141
    .local v2, "strValue":Ljava/lang/String;
    move-object v2, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, p1, :cond_2

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    :cond_2
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v2    # "strValue":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 137
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    :goto_1
    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    goto :goto_0

    .line 149
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 40
    const-string v0, ""

    .line 41
    .local v0, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->a:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v2, 0x0

    .line 46
    .local v2, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->a:Ljava/lang/String;

    .line 51
    .end local v2    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected onSchedule(Ljava/util/List;)V
    .locals 14
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "bodyBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    .line 58
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v9

    const-string v10, "bugmeSwitchOpen"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v9

    .line 59
    .local v9, "bugmeSwitchOpen":Z
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v10

    const-class v12, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 62
    .local v4, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v4, v10

    if-eqz v10, :cond_1

    .line 63
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getmDid()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "did":Ljava/lang/String;
    const-string v10, "did"

    invoke-virtual {v3, v10, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v5    # "did":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->a()Ljava/lang/String;

    move-result-object v10

    const-string v12, "uid"

    invoke-virtual {v3, v12, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v10, "extra"

    invoke-static {v3, v10, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 70
    .local v5, "extra":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v12

    if-nez v12, :cond_2

    .line 71
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v5, v12

    .line 73
    :cond_2
    const-string v12, "h5_bug_me_dom_debug"

    invoke-static {v12, v11}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "vorlon"

    invoke-virtual {v5, v12, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "performance"

    invoke-virtual {v5, v12, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v3, v10, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v10, "app"

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 78
    .local v6, "appInfo":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v11

    if-eqz v11, :cond_3

    .line 79
    invoke-virtual {v3, v10, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    const-string v10, "type"

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 85
    if-nez v10, :cond_4

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 86
    const/16 v10, 0x400

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->a(Lcom/alibaba/fastjson/JSONObject;I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enqueueLog(Lcom/alibaba/fastjson/JSONObject;)V

    .line 89
    :cond_4
    if-eqz v9, :cond_0

    .line 93
    const-string v10, "viewId"

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, "viewId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->getInstance()Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->getConsole(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    move-result-object v11

    .line 95
    .local v7, "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    move-object v7, v11

    if-eqz v11, :cond_5

    .line 96
    invoke-virtual {v7, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->recordLog(Lcom/alibaba/fastjson/JSONObject;)V

    .line 100
    :cond_5
    const/16 v11, 0x1388

    invoke-static {v3, v11}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeBatchedScheduler;->a(Lcom/alibaba/fastjson/JSONObject;I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 101
    .local v8, "objectToSend":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v11

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, "logData":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "send data:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "H5WalletDevDebugProvider"

    invoke-static {v13, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v5    # "extra":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "appInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    .end local v8    # "objectToSend":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "bugmeSwitchOpen":Z
    .end local v10    # "viewId":Ljava/lang/String;
    .end local v11    # "logData":Ljava/lang/String;
    goto/16 :goto_0

    .line 107
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 108
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;-><init>()V

    .line 110
    const-string v2, "https://hpmweb.alipay.com/report/android/batch"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->url(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v1

    .line 111
    const-string v2, "Content-Type"

    const-string v3, "text/plain"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v1

    .line 112
    const-string v2, "User-Agent"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->body(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->execute()Ljava/lang/String;

    .line 117
    :cond_7
    return-void
.end method
