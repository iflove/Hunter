.class public Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5MiniProgramNavigationPlugin.java"


# static fields
.field public static final NAVIGATE_BACK_MINI_PROGRAM:Ljava/lang/String; = "navigateBackMiniProgram"

.field public static final NAVIGATE_TO_MINI_PROGRAM:Ljava/lang/String; = "navigateToMiniProgram"

.field public static final PARAM_CHANNEL:Ljava/lang/String; = "chInfo"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Ljava/lang/String;

    .line 43
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x1"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 43
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->b(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 321
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 322
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v0, "errorMessage"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-interface {p0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 325
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 1
    .param p0, "x1"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p1, "x3"    # Ljava/lang/String;

    .line 43
    const/16 v0, 0x1f

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 91
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .param p4, "x4"    # Z

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p5, "x5"    # Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .param p6, "x6"    # Z

    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;Z)V
    .locals 6
    .param p1, "currentAppId"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "targetAppEnv"    # Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .param p4, "acStartModeOnline"    # Z

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "callParam":Lcom/alibaba/fastjson/JSONObject;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "param"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 340
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startAppInternal..appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Landroid/os/Bundle;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    move-object v3, v2

    .line 344
    .local v3, "startParams":Landroid/os/Bundle;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 345
    move-object v3, v1

    const-string v4, "FROM_TINY_APP_ID"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "chInfo"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 347
    const-string v4, "ch_othertinyapp"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->isNavigateAppDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    invoke-virtual {p3, v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->putToBundle(Landroid/os/Bundle;)V

    .line 351
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    const-string/jumbo v4, "nbsv"

    if-eq p3, v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v5, "version"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    .line 353
    .local v5, "nbsv":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    const-string v5, "*"

    .line 356
    :cond_2
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .end local v5    # "nbsv":Ljava/lang/String;
    goto :goto_0

    .line 358
    :cond_3
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 360
    :goto_0
    if-eqz p4, :cond_4

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-ne p3, v1, :cond_4

    .line 361
    const-string v1, "ac_start_mode"

    const-string/jumbo v4, "online"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 365
    invoke-interface {v1, v2, p2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 404
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;Z)V
    .locals 22
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "currentAppId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p5, "targetAppEnv"    # Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .param p6, "acStartModeOnline"    # Z

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "a_m_p_n_k"

    const-string/jumbo v5, "n_a_m_p_n_k"

    const-string v6, "YES"

    const-string/jumbo v7, "\u8df3\u8f6c\u5931\u8d25"

    .line 226
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->rpcGoWallet()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 227
    new-instance v6, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;

    invoke-direct {v6}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;-><init>()V

    move-object v9, v10

    .line 228
    .local v9, "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    move-object v9, v6

    iput-object v2, v6, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;->appId:Ljava/lang/String;

    .line 229
    iput-object v1, v9, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;->userId:Ljava/lang/String;

    .line 230
    iput-object v3, v9, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;->targetId:Ljava/lang/String;

    .line 232
    invoke-static {v10}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->getRpcService(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    move-result-object v6

    move-object v11, v10

    .line 233
    .local v11, "rpcService":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
    const-class v12, Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;

    invoke-virtual {v6, v12}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;

    .line 234
    .end local v11    # "rpcService":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
    .local v6, "checkRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;
    move-object v13, v10

    move-object v14, v13

    move-object v12, v11

    move-object v11, v14

    goto/16 :goto_0

    .line 235
    .end local v6    # "checkRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;
    .end local v9    # "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    .line 236
    .local v11, "uuid":Ljava/lang/String;
    new-instance v9, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;

    invoke-direct {v9}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;-><init>()V

    move-object v12, v10

    .line 237
    .local v12, "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    move-object v12, v9

    iput-object v2, v9, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;->appId:Ljava/lang/String;

    .line 238
    iput-object v1, v12, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;->userId:Ljava/lang/String;

    .line 239
    iput-object v3, v12, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;->targetId:Ljava/lang/String;

    .line 241
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v13, v10

    .line 242
    .local v13, "requestParams":Landroid/os/Bundle;
    move-object v13, v9

    const-string v14, "appId"

    iget-object v15, v12, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;->appId:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v9, "userId"

    iget-object v14, v12, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;->userId:Ljava/lang/String;

    invoke-virtual {v13, v9, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v9, "targetId"

    iget-object v14, v12, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;->targetId:Ljava/lang/String;

    invoke-virtual {v13, v9, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    move-result-object v9

    invoke-virtual {v9, v11, v13}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->executeSkipIdentifyAuth(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 248
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v14, v10

    .line 249
    .local v14, "extParams":Ljava/util/Map;
    move-object v14, v9

    const-string v15, "OpenAuthLogin"

    invoke-interface {v9, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v9, "needOpenAuth"

    invoke-interface {v14, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v6, "bizSource"

    const-string/jumbo v9, "tinyapp"

    invoke-interface {v14, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v6, "cAuthUUID"

    invoke-interface {v14, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getInstance()Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getRpcService()Lcom/alipay/android/phone/inside/commonservice/RpcService;

    move-result-object v6

    move-object v9, v10

    .line 254
    .local v9, "rpcService":Lcom/alipay/android/phone/inside/commonservice/RpcService;
    const-class v15, Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;

    invoke-virtual {v6, v15, v14}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;

    move-object/from16 v21, v11

    move-object v11, v9

    move-object v9, v12

    move-object/from16 v12, v21

    .line 256
    .end local v11    # "uuid":Ljava/lang/String;
    .end local v12    # "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    .end local v13    # "requestParams":Landroid/os/Bundle;
    .end local v14    # "extParams":Ljava/util/Map;
    .restart local v6    # "checkRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;
    .local v9, "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    :goto_0
    invoke-interface {v6, v9}, Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;->checkRelation(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;

    move-result-object v15

    .line 257
    .local v12, "resultPB":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
    move-object v12, v15

    if-eqz v15, :cond_4

    iget-object v15, v12, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->success:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v15, p0

    goto/16 :goto_2

    .line 263
    :cond_1
    const-class v15, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 264
    .local v13, "scs":Lcom/alipay/mobile/framework/service/common/SecurityCacheService;
    move-object v13, v15

    invoke-static/range {p1 .. p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v10, v8}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v11, "jsonObject":Lorg/json/JSONObject;
    .local v14, "miniProgInfo":Ljava/lang/String;
    move-object v14, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 267
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .local v8, "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 269
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    const-string/jumbo v11, "m_p_n_d_k"

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    move-object/from16 v20, v14

    .end local v14    # "miniProgInfo":Ljava/lang/String;
    .local v20, "miniProgInfo":Ljava/lang/String;
    add-long v14, v16, v18

    .line 271
    invoke-virtual {v8, v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 273
    iget-object v11, v12, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->jumpable:Ljava/lang/Boolean;

    if-eqz v11, :cond_3

    iget-object v11, v12, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->jumpable:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v11, :cond_3

    .line 274
    :try_start_1
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "checkSameSubjectMiniAppInfoFromRPC...allowed: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 276
    .local v11, "allowedInfo":Ljava/lang/String;
    invoke-static {v3, v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 277
    .local v14, "newAllowedInfo":Ljava/lang/String;
    invoke-virtual {v8, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v15, "checkSameSubjectMiniAppInfoFromRPC..allowed: "

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static/range {p1 .. p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v10, v0, v5}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    move-object/from16 v15, p0

    move-object/from16 v5, p5

    move/from16 v10, p6

    :try_start_2
    invoke-direct {v15, v2, v3, v5, v10}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;Z)V

    .line 282
    .end local v11    # "allowedInfo":Ljava/lang/String;
    .end local v14    # "newAllowedInfo":Ljava/lang/String;
    return-void

    .line 292
    .end local v6    # "checkRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    .end local v12    # "resultPB":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
    .end local v13    # "scs":Lcom/alipay/mobile/framework/service/common/SecurityCacheService;
    .end local v20    # "miniProgInfo":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v5, p5

    move/from16 v10, p6

    goto :goto_3

    .line 273
    .restart local v6    # "checkRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    .restart local v12    # "resultPB":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
    .restart local v13    # "scs":Lcom/alipay/mobile/framework/service/common/SecurityCacheService;
    .restart local v20    # "miniProgInfo":Ljava/lang/String;
    :cond_3
    move-object/from16 v15, p0

    .line 283
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "checkSameSubjectMiniAppInfoFromRPC...not allowed: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 285
    .local v11, "notAllowedInfo":Ljava/lang/String;
    invoke-static {v3, v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 286
    .local v14, "newInfo":Ljava/lang/String;
    invoke-virtual {v8, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "checkSameSubjectMiniAppInfoFromRPC..not allowed: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static/range {p1 .. p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v13, v10, v0, v5}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->b(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 295
    .end local v6    # "checkRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    .end local v11    # "notAllowedInfo":Ljava/lang/String;
    .end local v12    # "resultPB":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
    .end local v13    # "scs":Lcom/alipay/mobile/framework/service/common/SecurityCacheService;
    .end local v14    # "newInfo":Ljava/lang/String;
    .end local v20    # "miniProgInfo":Ljava/lang/String;
    return-void

    .line 257
    .restart local v6    # "checkRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;
    .restart local v9    # "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    .restart local v12    # "resultPB":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
    :cond_4
    move-object/from16 v15, p0

    .line 258
    :goto_2
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "checkSameSubjectMiniAppInfoFromRPC...rpc failed: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/16 v5, 0x1f

    invoke-static {v4, v5, v7}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    return-void

    .line 292
    .end local v6    # "checkRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;
    .end local v9    # "request":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;
    .end local v12    # "resultPB":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    .line 293
    .local v0, "e":Ljava/lang/Throwable;
    :goto_3
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "checkSameSubjectMiniAppInfoFromRPC...e="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/16 v5, 0x1f

    invoke-static {v4, v5, v7}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 296
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p0, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 312
    const/16 v0, 0x1e

    const-string/jumbo v1, "\u4e0d\u5141\u8bb8\u8df3\u8f6c\u5230\u76ee\u6807\u5c0f\u7a0b\u5e8f"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 313
    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 201
    if-nez p0, :cond_0

    .line 202
    const/16 v0, 0x20

    const-string/jumbo v1, "\u56de\u8df3\u5931\u8d25"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 203
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 206
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "chInfo"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    const-string v3, "ch_backfromtinyapp"

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "closeCurrentApp"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_2
    const-string/jumbo v0, "startApp"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/h5container/api/H5Event;->setAction(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/h5container/api/H5Event;->setParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 214
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 215
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 216
    invoke-virtual {v1, p0, p1}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 218
    :cond_3
    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Ljava/lang/String;

    .line 43
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "navigateInfo"    # Ljava/lang/String;

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    return v1

    .line 185
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 187
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_2
    return v1
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetId"    # Ljava/lang/String;
    .param p1, "navigateInfo"    # Ljava/lang/String;

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    return-object p0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_miniprog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 76
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "navigateToMiniProgram"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "navigateBackMiniProgram"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 81
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 63
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 64
    const-string/jumbo v0, "navigateToMiniProgram"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "navigateBackMiniProgram"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramNavigationPlugin;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 71
    return-void
.end method
