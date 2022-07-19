.class public Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;
.super Ljava/lang/Object;
.source "TinyAppLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$TinyAppLimitControllerInner;
    }
.end annotation


# static fields
.field private static final LIMIT_ALL_URI:Ljava/lang/String; = "limitAllUri"

.field private static final LIMIT_CONTROL_CONFIG_NAME:Ljava/lang/String; = "limit_control_cfg"

.field public static final LIMIT_CONTROL_TAG:Ljava/lang/String; = "limitControlTag"

.field private static final LIMIT_URI_LIST:Ljava/lang/String; = "limitUriList"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLimitControlDataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPluginRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->mLimitControlDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->doLimitControlRpc(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->writeToDiskFile(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private doLimitControlRpc(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isAppLimit"    # Z

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "resultPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->getRpcService(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    move-result-object v2

    move-object v3, v1

    .line 257
    .local v3, "rpcService":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
    move-object v3, v2

    const-class v4, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;

    .line 258
    .local v2, "controlService":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;
    if-nez p3, :cond_0

    .line 260
    invoke-virtual {v3, v3}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;

    move-result-object v4

    .line 262
    .local v1, "rpcInvokeContext":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;
    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;->setTimeout(J)V

    .line 265
    .end local v1    # "rpcInvokeContext":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcInvokeContext;
    :cond_0
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckRequestPB;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckRequestPB;-><init>()V

    .line 266
    .local v1, "requestPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckRequestPB;
    move-object v1, v4

    iput-object p1, v4, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckRequestPB;->appId:Ljava/lang/String;

    .line 268
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckRequestPB;->isSpecAppOpenning:Ljava/lang/Boolean;

    .line 269
    iput-object p2, v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckRequestPB;->url:Ljava/lang/String;

    .line 270
    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;->miniappCheck(Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckRequestPB;)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;

    move-result-object v4

    move-object v0, v4

    .line 271
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doLimitControlRpc...r: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v1    # "requestPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckRequestPB;
    .end local v2    # "controlService":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;
    .end local v3    # "rpcService":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
    goto :goto_0

    .line 272
    :catchall_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doLimitControlRpc...e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private doPreRpcCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->doLimitControlRpc(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 287
    .local v2, "resultPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    const-string v3, "appStartControl...resultPB is null"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-object v1

    .line 292
    :cond_0
    iget-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;->canPass:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 293
    return-object v1

    .line 296
    :cond_1
    iget-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;->canPass:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappCheckResultPB;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;
    .locals 1

    .line 65
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$TinyAppLimitControllerInner;->a()Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;

    move-result-object v0

    return-object v0
.end method

.method private getLimitControlConfigFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_limit_control_cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLimitControlDiskCacheDir()Ljava/lang/String;
    .locals 2

    .line 154
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/nebulaInstallApps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "throwable":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method private getLimitControlDiskCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->getLimitControlDiskCacheDir()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 136
    .local v1, "cacheDir":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, ""

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->getLimitControlConfigFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readFromDiskFile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;

    const-string/jumbo v0, "readFromDiskFile...close : "

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 207
    return-object v2

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->mLimitControlDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    move-object v3, v2

    .line 211
    .local v3, "dataObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 212
    return-object v3

    .line 215
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->getLimitControlDiskCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    .line 216
    .local v4, "diskCachePath":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    return-object v2

    .line 220
    :cond_2
    const/4 v1, 0x0

    .line 222
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v5, "file":Ljava/io/File;
    new-instance v6, Ljava/io/ObjectInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 228
    move-object v1, v6

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .line 229
    .local v6, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->mLimitControlDataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    nop

    .line 236
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    goto :goto_0

    .line 238
    :catchall_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v6

    .line 231
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "data":Lcom/alibaba/fastjson/JSONObject;
    :catchall_1
    move-exception v5

    .line 232
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_2
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "readFromDiskFile...e: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 235
    .end local v5    # "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 236
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 238
    :catchall_2
    move-exception v5

    .line 239
    .restart local v5    # "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 240
    :cond_3
    :goto_1
    nop

    .line 242
    :goto_2
    return-object v2

    .line 234
    :catchall_3
    move-exception v2

    .line 235
    if-eqz v1, :cond_4

    .line 236
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    .line 238
    :catchall_4
    move-exception v5

    .line 239
    .restart local v5    # "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 240
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    nop

    :goto_4
    throw v2
.end method

.method private shouldUrlNeedPreRpcCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 306
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->readFromDiskFile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 311
    .local v3, "limitConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 312
    return v1

    .line 315
    :cond_1
    const-string v0, "limitAllUri"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "limitAllUri":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 318
    return v5

    .line 320
    :cond_2
    const-string v4, "limitUriList"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    move-object v6, v2

    .line 321
    .local v6, "limitUriList":Lcom/alibaba/fastjson/JSONArray;
    move-object v6, v4

    if-nez v4, :cond_3

    .line 322
    return v1

    .line 325
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 326
    .local v4, "size":I
    const/4 v7, 0x0

    move v8, v7

    move-object v7, v2

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_6

    .line 328
    :try_start_0
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v2, "limitUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 330
    .local v7, "uri":Landroid/net/Uri;
    move-object v7, v9

    if-nez v9, :cond_4

    .line 331
    goto :goto_1

    .line 333
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 334
    invoke-static {v9, p2}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_5

    .line 336
    return v5

    .line 340
    .end local v2    # "limitUrl":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_5
    goto :goto_1

    .line 338
    :catchall_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v9, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "shouldUrlNeedPreRpcCheck...e:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 342
    .end local v8    # "i":I
    :cond_6
    return v1

    .line 307
    .end local v0    # "limitAllUri":Ljava/lang/String;
    .end local v3    # "limitConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "size":I
    .end local v6    # "limitUriList":Lcom/alibaba/fastjson/JSONArray;
    :cond_7
    :goto_2
    return v1
.end method

.method private writeToDiskFile(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "dataObject"    # Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v0, "writeToDiskFile...close : "

    .line 169
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->getLimitControlDiskCacheDir()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 170
    .local v3, "diskCacheDir":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 174
    :cond_0
    const/4 v1, 0x0

    .line 177
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v4

    .line 180
    .local v4, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "writeToDiskFile...mkdir e: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->getLimitControlConfigFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 184
    new-instance v4, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    move-object v1, v4

    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 191
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    return-void

    .line 193
    :catchall_1
    move-exception v4

    .line 194
    .restart local v4    # "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v4    # "e":Ljava/lang/Throwable;
    return-void

    .line 186
    :catchall_2
    move-exception v4

    .line 187
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "writeToDiskFile...e: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 190
    .end local v4    # "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 191
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 193
    :catchall_3
    move-exception v4

    .line 194
    .restart local v4    # "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    return-void

    .line 189
    :catchall_4
    move-exception v4

    .line 190
    if-eqz v1, :cond_2

    .line 191
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    .line 193
    :catchall_5
    move-exception v5

    .line 194
    .local v5, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 195
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    nop

    :goto_4
    throw v4

    .line 171
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    :goto_5
    return-void
.end method


# virtual methods
.method public isLimitControlOpened(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 375
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getLimitControlSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 376
    .local v1, "limitControlSet":Ljava/util/Set;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerLimitControlPlugin(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "startupParams"    # Landroid/os/Bundle;

    .line 389
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->mPluginRegistered:Z

    if-eqz v0, :cond_0

    .line 390
    return-void

    .line 393
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 394
    .local v1, "appId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->isLimitControlOpened(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyLimitControlPlugin;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyLimitControlPlugin;-><init>()V

    invoke-interface {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->mPluginRegistered:Z

    .line 402
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerLimitControlPlugin"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_2
    return-void
.end method

.method public shouldInterceptNetRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->shouldUrlNeedPreRpcCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 363
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldInterceptNetRequest...appId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;->doPreRpcCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startAppLimitControl(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppLimitController;Ljava/lang/String;)V

    const-string v1, "URGENT"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method
