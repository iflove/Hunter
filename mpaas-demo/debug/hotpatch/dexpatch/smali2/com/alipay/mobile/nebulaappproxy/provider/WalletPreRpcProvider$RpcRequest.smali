.class Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;
.super Ljava/lang/Object;
.source "WalletPreRpcProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RpcRequest"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;

.field private b:Lcom/alibaba/fastjson/JSONObject;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p2, "preRpcJo"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "md5Key"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->a:Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 172
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->c:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "\""

    const-string v2, "exception detail"

    const-string v3, "WalletPreRpcProvider"

    .line 178
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v5, "operationType"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "operationType":Ljava/lang/String;
    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v6, "requestData"

    const/4 v15, 0x0

    invoke-static {v5, v6, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 180
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "requestData":Ljava/lang/String;
    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "gateway"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "gateway":Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, "appKey":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtil;->getAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_0

    .line 183
    :cond_0
    move-object/from16 v17, v6

    .line 186
    .end local v6    # "appKey":Ljava/lang/String;
    .local v17, "appKey":Ljava/lang/String;
    :goto_0
    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "headers"

    invoke-static {v6, v7, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v18

    .line 187
    .local v18, "headers":Lcom/alibaba/fastjson/JSONObject;
    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "compress"

    const/4 v14, 0x1

    invoke-static {v6, v7, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v19

    .line 188
    .local v19, "compress":Z
    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->b:Lcom/alibaba/fastjson/JSONObject;

    const/4 v7, 0x0

    const-string/jumbo v8, "retryable"

    invoke-static {v6, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v20

    .line 190
    .local v20, "retryable":Z
    const/4 v13, 0x0

    const/16 v21, 0x0

    const/16 v12, 0xa

    move-object v6, v4

    move-object v7, v5

    move-object/from16 v8, v16

    move/from16 v9, v19

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move/from16 v12, v20

    move/from16 v14, v21

    :try_start_0
    invoke-static/range {v6 .. v14}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v15

    .line 192
    .local v7, "response":Ljava/lang/String;
    move-object v7, v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    move-object v8, v15

    .line 193
    .local v8, "joResponse":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v6

    if-nez v6, :cond_2

    .line 194
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v8, v6

    .line 195
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 196
    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    invoke-virtual {v7, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v6, "\\\\"

    const-string v9, ""

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 200
    :cond_1
    const-string/jumbo v0, "resData"

    invoke-virtual {v8, v0, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "joResponse is "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->a:Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;

    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->handleResultPool(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v7    # "response":Ljava/lang/String;
    .end local v8    # "joResponse":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->a:Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;

    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->c:Ljava/lang/String;

    const/16 v6, 0xa

    invoke-virtual {v2, v3, v6}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->handleResultPool(Ljava/lang/String;I)V

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    return-void

    .line 207
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->a:Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;

    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->c:Ljava/lang/String;

    const/16 v6, 0xb

    invoke-virtual {v2, v3, v6}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->handleResultPool(Ljava/lang/String;I)V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 204
    :catch_2
    move-exception v0

    const/16 v6, 0xa

    .line 205
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->a:Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;

    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider$RpcRequest;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/alipay/mobile/nebulaappproxy/provider/WalletPreRpcProvider;->handleResultPool(Ljava/lang/String;I)V

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_1
.end method
