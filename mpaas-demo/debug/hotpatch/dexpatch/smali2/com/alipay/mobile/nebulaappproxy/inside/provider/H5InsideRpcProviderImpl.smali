.class public Lcom/alipay/mobile/nebulaappproxy/inside/provider/H5InsideRpcProviderImpl;
.super Ljava/lang/Object;
.source "H5InsideRpcProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
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

    .line 94
    :try_start_0
    invoke-static/range {p1 .. p9}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendSimpleRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "requestData"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .param p4, "compress"    # Z
    .param p5, "joHeaders"    # Lcom/alibaba/fastjson/JSONObject;
    .param p6, "appKey"    # Ljava/lang/String;
    .param p7, "retryable"    # Z
    .param p8, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p9, "h5SimpleRpcListener"    # Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;

    .line 85
    return-void
.end method
