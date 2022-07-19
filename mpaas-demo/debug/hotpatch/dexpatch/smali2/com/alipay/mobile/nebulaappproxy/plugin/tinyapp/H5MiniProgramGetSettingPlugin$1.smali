.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;
.super Ljava/lang/Object;
.source "H5MiniProgramGetSettingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic e:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin;Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin;

    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->e:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->a:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->d:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "H5MiniProgramGetSettingPlugin"

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->a:Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/H5ApiManagerImpl;->getAllPermissions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 103
    .local v1, "permissionsMap":Ljava/util/Map;
    :try_start_0
    new-instance v2, Lcom/alipay/minicenter/common/service/rpc/request/JsApiInvokeRequestPB;

    invoke-direct {v2}, Lcom/alipay/minicenter/common/service/rpc/request/JsApiInvokeRequestPB;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 104
    .local v4, "request":Lcom/alipay/minicenter/common/service/rpc/request/JsApiInvokeRequestPB;
    move-object v4, v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->c:Ljava/lang/String;

    iput-object v5, v2, Lcom/alipay/minicenter/common/service/rpc/request/JsApiInvokeRequestPB;->appId:Ljava/lang/String;

    .line 105
    const-string v2, "getAuthSetting"

    iput-object v2, v4, Lcom/alipay/minicenter/common/service/rpc/request/JsApiInvokeRequestPB;->method:Ljava/lang/String;

    .line 106
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->getRpcService(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    move-result-object v2

    .line 107
    const-class v5, Lcom/alipay/minicenter/common/service/rpc/api/MobilegwInvokeService;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/minicenter/common/service/rpc/api/MobilegwInvokeService;

    .line 108
    invoke-interface {v2, v4}, Lcom/alipay/minicenter/common/service/rpc/api/MobilegwInvokeService;->jsApiInvoke(Lcom/alipay/minicenter/common/service/rpc/request/JsApiInvokeRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/JsApiInvokeResultPB;

    move-result-object v2

    move-object v5, v3

    .line 110
    .local v5, "result":Lcom/alipay/minicenter/common/service/rpc/result/JsApiInvokeResultPB;
    move-object v5, v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, v5, Lcom/alipay/minicenter/common/service/rpc/result/JsApiInvokeResultPB;->response:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, v5, Lcom/alipay/minicenter/common/service/rpc/result/JsApiInvokeResultPB;->response:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v6, v3

    .line 113
    .local v6, "resultJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v2

    if-eqz v2, :cond_0

    .line 114
    const-string/jumbo v2, "response"

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v7, v3

    .line 115
    .local v7, "response":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v2

    if-eqz v2, :cond_0

    .line 116
    const-string/jumbo v2, "validScopeNicks"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 117
    .local v3, "validScopeNicks":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 119
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    .end local v3    # "validScopeNicks":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "request":Lcom/alipay/minicenter/common/service/rpc/request/JsApiInvokeRequestPB;
    .end local v5    # "result":Lcom/alipay/minicenter/common/service/rpc/result/JsApiInvokeResultPB;
    .end local v6    # "resultJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "response":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "size":I
    :cond_0
    goto :goto_1

    .line 127
    :catchall_0
    move-exception v2

    move-object v4, v2

    .line 128
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[handleEvent] openSetting Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v4

    .line 131
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string v5, "authSetting"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[getSetting] result= "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramGetSettingPlugin$1;->d:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 134
    return-void
.end method
