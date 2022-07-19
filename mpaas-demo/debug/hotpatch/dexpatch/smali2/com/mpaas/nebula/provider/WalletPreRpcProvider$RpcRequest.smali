.class Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;
.super Ljava/lang/Object;
.source "WalletPreRpcProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/provider/WalletPreRpcProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RpcRequest"
.end annotation


# instance fields
.field private md5Key:Ljava/lang/String;

.field private preRpcJo:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic this$0:Lcom/mpaas/nebula/provider/WalletPreRpcProvider;


# direct methods
.method public constructor <init>(Lcom/mpaas/nebula/provider/WalletPreRpcProvider;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p2, "preRpcJo"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "md5Key"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->this$0:Lcom/mpaas/nebula/provider/WalletPreRpcProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->preRpcJo:Lcom/alibaba/fastjson/JSONObject;

    .line 175
    iput-object p3, p0, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->md5Key:Ljava/lang/String;

    .line 176
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 181
    move-object/from16 v1, p0

    const-string v0, "\""

    const-string v2, "exception detail"

    const-string v3, "WalletPreRpcProvider"

    iget-object v4, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->preRpcJo:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "operationType"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "operationType":Ljava/lang/String;
    iget-object v5, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->preRpcJo:Lcom/alibaba/fastjson/JSONObject;

    const-string v6, "requestData"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 183
    .local v5, "jaRequest":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, "requestData":Ljava/lang/String;
    iget-object v6, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->preRpcJo:Lcom/alibaba/fastjson/JSONObject;

    const-string v8, "gateway"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 185
    .local v16, "gateway":Ljava/lang/String;
    const/4 v6, 0x0

    .line 186
    .local v6, "appKey":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 187
    invoke-static/range {v16 .. v16}, Lcom/mpaas/nebula/rpc/H5RpcUtil;->getAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_0

    .line 186
    :cond_0
    move-object/from16 v17, v6

    .line 189
    .end local v6    # "appKey":Ljava/lang/String;
    .local v17, "appKey":Ljava/lang/String;
    :goto_0
    iget-object v6, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->preRpcJo:Lcom/alibaba/fastjson/JSONObject;

    const-string v8, "headers"

    invoke-static {v6, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v18

    .line 190
    .local v18, "headers":Lcom/alibaba/fastjson/JSONObject;
    iget-object v6, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->preRpcJo:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "compress"

    const/4 v14, 0x1

    invoke-static {v6, v7, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v19

    .line 191
    .local v19, "compress":Z
    iget-object v6, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->preRpcJo:Lcom/alibaba/fastjson/JSONObject;

    const/4 v7, 0x0

    const-string v8, "retryable"

    invoke-static {v6, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v20

    .line 193
    .local v20, "retryable":Z
    const/4 v13, 0x0

    const/16 v21, 0x0

    const/16 v12, 0xa

    move-object v6, v4

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v19

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move/from16 v12, v20

    move-object/from16 v22, v4

    const/4 v4, 0x1

    .end local v4    # "operationType":Ljava/lang/String;
    .local v22, "operationType":Ljava/lang/String;
    move/from16 v14, v21

    :try_start_0
    invoke-static/range {v6 .. v14}, Lcom/mpaas/nebula/rpc/H5RpcUtil;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;I)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "response":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 196
    .local v7, "joResponse":Lcom/alibaba/fastjson/JSONObject;
    if-nez v7, :cond_2

    .line 197
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v7, v8

    .line 198
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 199
    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v6, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 201
    .end local v6    # "response":Ljava/lang/String;
    .local v0, "response":Ljava/lang/String;
    const-string v4, "\\\\"

    const-string v6, ""

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object v6, v0

    .line 203
    .end local v0    # "response":Ljava/lang/String;
    .restart local v6    # "response":Ljava/lang/String;
    :cond_1
    const-string v0, "resData"

    invoke-virtual {v7, v0, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "joResponse is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->this$0:Lcom/mpaas/nebula/provider/WalletPreRpcProvider;

    iget-object v4, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->md5Key:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->handleResultPool(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "joResponse":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    iget-object v2, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->this$0:Lcom/mpaas/nebula/provider/WalletPreRpcProvider;

    iget-object v3, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->md5Key:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->handleResultPool(Ljava/lang/String;I)V

    goto :goto_2

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    iget-object v2, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->this$0:Lcom/mpaas/nebula/provider/WalletPreRpcProvider;

    iget-object v3, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->md5Key:Ljava/lang/String;

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->handleResultPool(Ljava/lang/String;I)V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 207
    :catch_2
    move-exception v0

    const/16 v4, 0xa

    .line 208
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    iget-object v2, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->this$0:Lcom/mpaas/nebula/provider/WalletPreRpcProvider;

    iget-object v3, v1, Lcom/mpaas/nebula/provider/WalletPreRpcProvider$RpcRequest;->md5Key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/mpaas/nebula/provider/WalletPreRpcProvider;->handleResultPool(Ljava/lang/String;I)V

    .line 216
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_1
    nop

    .line 217
    :goto_2
    return-void
.end method
