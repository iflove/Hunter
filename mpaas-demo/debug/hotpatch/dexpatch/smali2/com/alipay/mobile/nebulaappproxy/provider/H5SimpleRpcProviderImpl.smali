.class public Lcom/alipay/mobile/nebulaappproxy/provider/H5SimpleRpcProviderImpl;
.super Ljava/lang/Object;
.source "H5SimpleRpcProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;I)Ljava/lang/String;
    .locals 1
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "requestData"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .param p4, "compress"    # Z
    .param p5, "joHeaders"    # Lcom/alibaba/fastjson/JSONObject;
    .param p6, "appKey"    # Ljava/lang/String;
    .param p7, "retryAble"    # Z
    .param p8, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p9, "timeout"    # I

    .line 107
    :try_start_0
    invoke-static/range {p1 .. p9}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendSimpleRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;)V
    .locals 13
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "requestData"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .param p4, "compress"    # Z
    .param p5, "joHeaders"    # Lcom/alibaba/fastjson/JSONObject;
    .param p6, "appKey"    # Ljava/lang/String;
    .param p7, "retryable"    # Z
    .param p8, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p9, "h5SimpleRpcListener"    # Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;

    .line 33
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v12, Lcom/alipay/mobile/nebulaappproxy/provider/H5SimpleRpcProviderImpl$1;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/alipay/mobile/nebulaappproxy/provider/H5SimpleRpcProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/H5SimpleRpcProviderImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;)V

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method
