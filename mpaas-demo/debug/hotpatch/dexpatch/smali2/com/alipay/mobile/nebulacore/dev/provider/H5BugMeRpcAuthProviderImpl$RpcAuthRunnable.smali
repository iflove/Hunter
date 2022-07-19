.class Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;
.super Ljava/lang/Object;
.source "H5BugMeRpcAuthProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RpcAuthRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl;

.field private b:Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl;Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "listen"    # Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "nbscene"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->a:Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->b:Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;

    .line 45
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->d:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->e:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->f:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "H5BugMeRpcAuthProviderImpl"

    .line 53
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v3, v0

    .line 54
    .local v3, "requestData":Lcom/alibaba/fastjson/JSONArray;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 55
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v0

    const-string v6, "method"

    const-string v7, "bugme"

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v6, v4

    .line 58
    .local v6, "tokenJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v0

    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->c:Ljava/lang/String;

    const-string v8, "token"

    invoke-virtual {v0, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->d:Ljava/lang/String;

    const-string v7, "target"

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->e:Ljava/lang/String;

    const-string v7, "appId"

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->f:Ljava/lang/String;

    const-string v7, "nbscene"

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2
    const-string v0, "params"

    invoke-virtual {v5, v0, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 73
    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "req:"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "com.alipay.hpmweb.validMember"

    .line 75
    .local v0, "authRpcName":Ljava/lang/String;
    const-class v8, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-object v9, v4

    .line 76
    .local v9, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v9, v8

    if-eqz v8, :cond_3

    .line 77
    invoke-interface {v9}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->getDebugAuthRpcName()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 80
    :cond_3
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    move-object v10, v4

    .line 81
    .local v10, "h5SimpleRpcProvider":Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;
    move-object v10, v8

    if-nez v8, :cond_4

    .line 82
    const-string v8, "RpcAuthRunnable h5SimpleRpcProvider == null"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 85
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const/4 v14, 0x1

    new-instance v15, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v15}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v0

    invoke-interface/range {v10 .. v19}, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v4

    .line 87
    .local v11, "response":Ljava/lang/String;
    move-object v11, v8

    if-nez v8, :cond_5

    .line 88
    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->b:Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;

    invoke-interface {v8, v7, v7, v4}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;->onResponse(ZZ[Ljava/lang/String;)V

    .line 89
    const-string v8, "response == null"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_5
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 92
    .local v8, "joResponse":Lcom/alibaba/fastjson/JSONObject;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "rep:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v12, "result"

    invoke-static {v8, v12, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 94
    .local v12, "result":Lcom/alibaba/fastjson/JSONObject;
    iget-object v13, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->b:Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;

    if-nez v13, :cond_6

    .line 95
    return-void

    .line 97
    :cond_6
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    .line 98
    const-string v13, "pass"

    invoke-static {v12, v13, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v13

    .line 99
    .local v13, "pass":Z
    const-string v14, "isSuperUser"

    invoke-static {v12, v14, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v14

    .line 100
    .local v14, "isSuperUser":Z
    const-string v15, "domainWhiteList"

    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4, v7}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 101
    invoke-static {v12, v15, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    const/4 v15, 0x0

    move-object/from16 v17, v15

    .line 102
    .local v17, "domainWhiteList":Lcom/alibaba/fastjson/JSONArray;
    move-object v15, v4

    .end local v17    # "domainWhiteList":Lcom/alibaba/fastjson/JSONArray;
    .local v15, "domainWhiteList":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    move/from16 v17, v7

    .line 103
    .local v17, "size":I
    move/from16 v18, v4

    .end local v17    # "size":I
    .local v18, "size":I
    new-array v4, v4, [Ljava/lang/String;

    .line 104
    .local v4, "dwArray":[Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v7, v17

    .local v7, "i":I
    :goto_0
    move-object/from16 v17, v0

    move/from16 v0, v18

    .end local v18    # "size":I
    .local v0, "size":I
    .local v17, "authRpcName":Ljava/lang/String;
    if-ge v7, v0, :cond_7

    .line 105
    invoke-virtual {v15, v7}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    aput-object v18, v4, v7

    .line 104
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v0

    move-object/from16 v0, v17

    goto :goto_0

    .line 107
    .end local v7    # "i":I
    :cond_7
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->b:Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;

    invoke-interface {v7, v13, v14, v4}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;->onResponse(ZZ[Ljava/lang/String;)V

    .line 108
    .end local v0    # "size":I
    .end local v4    # "dwArray":[Ljava/lang/String;
    .end local v13    # "pass":Z
    .end local v14    # "isSuperUser":Z
    .end local v15    # "domainWhiteList":Lcom/alibaba/fastjson/JSONArray;
    return-void

    .line 97
    .end local v17    # "authRpcName":Ljava/lang/String;
    .local v0, "authRpcName":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v0

    .line 109
    .end local v0    # "authRpcName":Ljava/lang/String;
    .restart local v17    # "authRpcName":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->b:Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v4, v4, v7}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;->onResponse(ZZ[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v8    # "joResponse":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    .end local v10    # "h5SimpleRpcProvider":Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;
    .end local v11    # "response":Ljava/lang/String;
    .end local v12    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "authRpcName":Ljava/lang/String;
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeRpcAuthProviderImpl$RpcAuthRunnable;->b:Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v7, v7, v8}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;->onResponse(ZZ[Ljava/lang/String;)V

    .line 113
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
