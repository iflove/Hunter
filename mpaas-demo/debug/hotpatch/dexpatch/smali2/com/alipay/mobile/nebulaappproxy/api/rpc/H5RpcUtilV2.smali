.class public Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;
.super Ljava/lang/Object;
.source "H5RpcUtilV2.java"


# static fields
.field public static final DEFAULT_RPC_APPKEYCONFIG:Ljava/lang/String; = "{\"http(s?):\\\\/\\\\/bkmobilegw(.*)\\\\/mgw\\\\.htm\":\"23387407\"}"

.field public static final QUERY_SPM_JS:Ljava/lang/String; = "try{(function(){if(document.querySelectorAll(\"meta[name=data-aspm]\").length==0||document.querySelectorAll(\"body\").length==0){return}var spma=document.querySelectorAll(\"meta[name=data-aspm]\")[0].getAttribute(\"content\");var spmb=document.querySelectorAll(\"body\")[0].getAttribute(\"data-aspm\");if(spma&&spmb){return spma+\".\"+spmb}})()}catch(err){};"

.field public static final RPC_HEADER_SPM_ID:Ljava/lang/String; = "pagets"

.field public static final TAG:Ljava/lang/String; = "H5RpcUtil"

.field private static a:Z

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a:Z

    .line 255
    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->b:Z

    .line 256
    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "joHeaders"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "headers":Ljava/util/Map;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 223
    .local v2, "e":Ljava/util/Map$Entry;
    move-object v2, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 225
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v2    # "e":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 228
    :cond_1
    return-object v0

    .line 217
    .end local v0    # "headers":Ljava/util/Map;
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private static declared-synchronized a(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V
    .locals 9
    .param p0, "rpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    const-class v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "signTypeMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setSignType"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 264
    goto :goto_0

    .line 263
    :catch_0
    move-exception v4

    .line 265
    :goto_0
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    :try_start_2
    sput-boolean v4, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    const/4 v4, 0x0

    .line 269
    .local v4, "setBizLogMethod":Ljava/lang/reflect/Method;
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "setBizLog"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v5

    .line 271
    goto :goto_2

    .line 270
    :catch_1
    move-exception v5

    .line 272
    :goto_2
    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    :try_start_4
    sput-boolean v2, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->c:Z

    .line 274
    const-string v2, "H5RpcUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isSupportSignType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->b:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSupportSetBizLog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->c:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sput-boolean v3, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    .end local v1    # "signTypeMethod":Ljava/lang/reflect/Method;
    .end local v4    # "setBizLogMethod":Ljava/lang/reflect/Method;
    :cond_2
    monitor-exit v0

    return-void

    .line 258
    .end local p0    # "rpcInvokeContext":Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;I)V
    .locals 6
    .param p0, "rpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .param p1, "signType"    # I

    .line 281
    if-nez p0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V

    .line 285
    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->b:Z

    if-eqz v0, :cond_1

    .line 287
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setSignType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string v0, "H5RpcUtil"

    const-string/jumbo v1, "setSignType failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;Ljava/lang/String;)V
    .locals 6
    .param p0, "rpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/RpcInvokeContext;
    .param p1, "bizLog"    # Ljava/lang/String;

    .line 296
    if-nez p0, :cond_0

    .line 297
    return-void

    .line 299
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;)V

    .line 300
    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->c:Z

    if-eqz v0, :cond_1

    .line 302
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setBizLog"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5RpcUtil"

    const-string/jumbo v2, "setBizLog failed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 251
    const-string/jumbo v0, "pb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "gateway"    # Ljava/lang/String;

    .line 232
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    const-string v0, "h5_rpcAppKeyConfig_android"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 234
    .local v2, "config":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string/jumbo v2, "{\"http(s?):\\\\/\\\\/bkmobilegw(.*)\\\\/mgw\\\\.htm\":\"23387407\"}"

    .line 237
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v1

    .line 238
    .local v3, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 240
    .local v1, "key":Ljava/lang/String;
    move-object v1, v4

    invoke-static {v4, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getAppKey match key "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "H5RpcUtil"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 247
    .end local v2    # "config":Ljava/lang/String;
    .end local v3    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public static rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;
    .locals 16

    .line 54
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move/from16 v0, p8

    move/from16 v3, p10

    move/from16 v4, p11

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "rpcCall, type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "H5RpcUtil"

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    nop

    .line 58
    invoke-static/range {p9 .. p9}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a(Ljava/lang/String;)Z

    move-result v5

    .line 60
    invoke-static {}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getInstance()Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getRpcService()Lcom/alipay/android/phone/inside/commonservice/RpcService;

    move-result-object v6

    .line 63
    nop

    .line 65
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 66
    move-object/from16 v8, p2

    goto :goto_0

    .line 68
    :cond_0
    const-string v8, "https://mobilegw.alipay.com/mgw.htm"

    .line 70
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "set rpc url "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 74
    const-string v10, "OpenAuthLogin"

    const-string v11, "YES"

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v10, "needOpenAuth"

    const-string v11, "NO"

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v10, "bizSource"

    const-string/jumbo v11, "tinyapp"

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "cAuthUUID"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-class v10, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    .line 79
    invoke-virtual {v6, v10}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;

    .line 80
    invoke-virtual {v6, v10}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v6

    .line 82
    invoke-interface {v6, v9}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setExtParams(Ljava/util/Map;)V

    .line 83
    invoke-interface {v6, v8}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setGwUrl(Ljava/lang/String;)V

    .line 84
    move/from16 v8, p3

    invoke-interface {v6, v8}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setCompress(Z)V

    .line 85
    if-eqz v3, :cond_1

    .line 86
    invoke-interface {v6, v3}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setGetMethod(Z)V

    .line 88
    :cond_1
    const/4 v3, 0x1

    if-eqz p6, :cond_2

    .line 89
    invoke-interface {v6, v3}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAllowRetry(Z)V

    .line 92
    :cond_2
    if-ltz v4, :cond_3

    .line 93
    invoke-static {v6, v4}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;I)V

    .line 96
    :cond_3
    if-eqz v0, :cond_4

    .line 99
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    :try_start_0
    invoke-interface {v6, v8, v9}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 101
    invoke-static {v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_4
    :goto_1
    nop

    .line 106
    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 108
    const-string v4, ""

    const/4 v8, 0x0

    if-eqz v2, :cond_a

    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 111
    const-class v9, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 112
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 113
    if-eqz v9, :cond_6

    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 114
    nop

    .line 115
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5Logger;->getTracerInfo(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    .line 116
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 117
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 119
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "put key : "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 126
    :cond_6
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v13, "pagets"

    if-eqz v3, :cond_7

    .line 127
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v14, "extLogInfo"

    invoke-static {v3, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 129
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_7

    .line 131
    const-string/jumbo v14, "miniPageId"

    invoke-virtual {v3, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 133
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "miniPageId:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x1

    goto :goto_3

    .line 141
    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_9

    .line 143
    if-eqz v9, :cond_9

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 144
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->isPageStarted(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 146
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v3

    const-string v14, "-"

    invoke-interface {v9, v14, v3}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_8
    invoke-interface/range {p7 .. p7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->getSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "key:"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, " logAddTime="

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 158
    :cond_a
    move-object v3, v4

    :goto_4
    if-eqz v2, :cond_b

    .line 160
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppRpcUpdate;->senReqHeader(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;)V

    .line 165
    :cond_b
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 166
    move-object/from16 v9, p5

    invoke-interface {v6, v9}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setAppKey(Ljava/lang/String;)V

    .line 169
    :cond_c
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    .line 170
    invoke-interface {v6, v0}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setRequestHeaders(Ljava/util/Map;)V

    .line 173
    :cond_d
    invoke-static/range {p7 .. p7}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->generateBizLog(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->a(Lcom/alipay/mobile/common/rpc/RpcInvokeContext;Ljava/lang/String;)V

    .line 175
    const/4 v9, 0x0

    if-eqz v5, :cond_e

    .line 177
    move-object/from16 v11, p1

    :try_start_1
    invoke-static {v11, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 178
    invoke-interface {v10, v1, v0, v9}, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0

    .line 180
    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 181
    :catch_1
    move-exception v0

    .line 182
    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :goto_5
    goto :goto_6

    .line 185
    :cond_e
    move-object/from16 v11, p1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 186
    const-string v0, "[{}]"

    move-object v11, v0

    .line 189
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 190
    invoke-interface {v10, v1, v11, v9}, Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;->executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " executeRPC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    :goto_6
    invoke-interface {v6}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .line 198
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 200
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppWholeNetworkUtil;->b(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;)Z

    move-result v1

    .line 201
    if-eqz v1, :cond_10

    .line 202
    invoke-static {v2, v0, v4}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppRpcUpdate;->checkResponse(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;Ljava/lang/String;)V

    .line 204
    :cond_10
    goto :goto_7

    .line 206
    :cond_11
    invoke-static {v2, v0, v4}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppRpcUpdate;->checkResponse(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/util/Map;Ljava/lang/String;)V

    .line 209
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", isPBFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " rpc response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;

    invoke-direct {v1, v0, v9, v3}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;I)Ljava/lang/String;
    .locals 12
    .param p0, "operationType"    # Ljava/lang/String;
    .param p1, "requestData"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;
    .param p3, "compress"    # Z
    .param p4, "joHeaders"    # Lcom/alibaba/fastjson/JSONObject;
    .param p5, "appKey"    # Ljava/lang/String;
    .param p6, "retryAble"    # Z
    .param p7, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p8, "timeout"    # I

    .line 44
    const-string v9, "json"

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcUtilV2;->rpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;ILjava/lang/String;ZI)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->getResponse()Ljava/lang/String;

    move-result-object v0

    .line 44
    return-object v0
.end method
