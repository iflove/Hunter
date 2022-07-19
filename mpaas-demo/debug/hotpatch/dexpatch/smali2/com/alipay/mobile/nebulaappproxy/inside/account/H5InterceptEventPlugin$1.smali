.class Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;
.super Ljava/lang/Object;
.source "H5InterceptEventPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->needAuthRpc(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

.field final synthetic val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 81
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>(Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    .line 83
    .local v0, "originalEvent":Lcom/alipay/mobile/h5container/api/H5Event;
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 84
    .local v3, "extParams":Ljava/util/Map;
    move-object v3, v1

    const-string v4, "OpenAuthLogin"

    const-string v5, "YES"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v1, "needOpenAuth"

    const-string v4, "NO"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "bizSource"

    const-string/jumbo v4, "tinyapp"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "cAuthUUID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getInstance()Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getRpcService()Lcom/alipay/android/phone/inside/commonservice/RpcService;

    move-result-object v1

    .line 89
    const-class v4, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    invoke-virtual {v1, v4, v3}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    .line 90
    .local v1, "checkRpcService":Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;-><init>()V

    move-object v5, v2

    .line 91
    .local v5, "walletAuthCodeCreateReq":Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;
    move-object v5, v4

    iput-object v2, v4, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;->authSrcUrl:Ljava/lang/String;

    .line 92
    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;->createAuthCodeUrl(Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;)Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/res/WalletAuthCodeCreateRes;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 95
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-virtual {v2, v0, v4}, Lcom/alipay/mobile/h5container/service/H5Service;->sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "checkRpcService":Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;
    .end local v2    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v3    # "extParams":Ljava/util/Map;
    .end local v5    # "walletAuthCodeCreateReq":Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;
    :cond_0
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "H5InterceptEventPlugin"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    instance-of v2, v1, Lcom/alipay/inside/android/phone/mrpc/core/RpcException;

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->showNotAuthedDialogIfNeed(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
