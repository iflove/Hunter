.class public Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;
.super Landroid/os/Handler;
.source "TinyAppHandler.java"


# static fields
.field public static final BROADCAST_ADD_TO_ALIPAY_HOME_TO_LITE:I = 0x10

.field public static final FROM_APP_ID:Ljava/lang/String; = "appId"

.field public static final INIT_SP_CACHE_DATA:I = 0x4

.field public static final INIT_SP_CACHE_DATA_FROM_LITE:I = 0x5

.field public static final ITEM_LOG_TAG:Ljava/lang/String; = "logTag"

.field public static final MODIFY_SP_DATA_FROM_LITE:I = 0x6

.field public static final OPEN_SETTING_DATA:I = 0x3

.field public static final REMOVE_SP_CACHE_DATA:I = 0x2

.field public static final UPDATE_SP_CACHE_DATA:I = 0x1

.field public static final WHAT_TINY_APP_IPC_REQUEST:I = 0x7

.field public static final WHAT_TINY_APP_IPC_RESPONSE:I = 0x8

.field private static a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 183
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;Landroid/os/Bundle;)V

    const-string v1, "IO"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method private a(Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .line 136
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;Landroid/os/Bundle;Landroid/os/Messenger;)V

    const-string v1, "IO"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method private a(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 287
    if-nez p1, :cond_0

    return-void

    .line 288
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;Landroid/os/Messenger;)V

    const-string v1, "IO"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 209
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 212
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$3;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "result":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "TinyAppHandler"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private static b(Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 312
    const-string v0, "appId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "appId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const-string v2, "TinyAppHandler"

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "modifySpDataFromLite...bundle is empty: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 324
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 325
    .local v3, "value":Ljava/lang/Object;
    move-object v3, v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 326
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v1, v4, v6}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_1
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 328
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v6

    move-object v7, v3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v4, v7, v5}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->putInt(Ljava/lang/String;IZ)V

    .line 330
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "modifySpDataFromLite..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 334
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 335
    invoke-static {v5, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->sendDataToAllLiteProcess(ILandroid/os/Bundle;)V

    return-void

    .line 337
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->getAllAliveProcess()Ljava/util/List;

    move-result-object v3

    .line 338
    .local v0, "liteProcessList":Ljava/util/List;
    move-object v0, v3

    if-eqz v3, :cond_6

    .line 340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 341
    .local v4, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-virtual {v4}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 342
    invoke-virtual {v4}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v6

    if-eq p1, v6, :cond_5

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "modifySpDataFromLite..notify other appId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v4}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v6

    invoke-static {v6, v5, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->replyDataToLiteProcess(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 347
    .end local v4    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_5
    goto :goto_2

    .line 350
    .end local v0    # "liteProcessList":Ljava/util/List;
    :cond_6
    return-void
.end method

.method private static c(Landroid/os/Bundle;)V
    .locals 3
    .param p0, "data"    # Landroid/os/Bundle;

    .line 240
    if-nez p0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->removeCacheData(Ljava/lang/String;)V

    .line 245
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 246
    :cond_1
    return-void
.end method

.method private static d(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;

    .line 254
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->resetCache()V

    .line 255
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->e(Landroid/os/Bundle;)V

    .line 256
    return-void
.end method

.method private static e(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "data"    # Landroid/os/Bundle;

    .line 264
    if-nez p0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 268
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->updateCacheData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 270
    :cond_1
    return-void
.end method

.method private static f(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 274
    :try_start_0
    const-string/jumbo v0, "userId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "userId":Ljava/lang/String;
    const-string v1, "appId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "data"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;

    .line 277
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;->getBooleanMap()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    .line 278
    .local v3, "settingData":Ljava/util/Map;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 279
    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramOpenSettingPlugin;->sendOpenSettingResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v0    # "userId":Ljava/lang/String;
    .end local v1    # "appId":Ljava/lang/String;
    .end local v3    # "settingData":Ljava/util/Map;
    :cond_0
    return-void

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "returnOpenSettingData..e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinyAppHandler"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static get()Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;
    .locals 2

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    const-string v0, "logTag"

    .line 85
    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    .line 88
    .local v2, "data":Landroid/os/Bundle;
    move-object v2, v1

    const-string v3, "TinyAppHandler"

    if-nez v1, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage...data is null: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 93
    :cond_1
    const-wide/16 v4, 0x0

    .line 95
    .local v4, "logTag":J
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v4, v6

    .line 97
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "handleMessage...e="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage...what : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",logTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 127
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->a(Landroid/os/Bundle;)V

    .line 128
    return-void

    .line 124
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->a(Landroid/os/Bundle;Landroid/os/Messenger;)V

    .line 125
    return-void

    .line 121
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->b(Landroid/os/Bundle;Landroid/os/Messenger;)V

    .line 122
    return-void

    .line 118
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->a(Landroid/os/Messenger;)V

    .line 119
    return-void

    .line 115
    :pswitch_4
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->d(Landroid/os/Bundle;)V

    .line 116
    return-void

    .line 112
    :pswitch_5
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->f(Landroid/os/Bundle;)V

    .line 113
    return-void

    .line 109
    :pswitch_6
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->c(Landroid/os/Bundle;)V

    .line 110
    return-void

    .line 106
    :pswitch_7
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->e(Landroid/os/Bundle;)V

    .line 107
    return-void

    .line 130
    :cond_2
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->b(Landroid/os/Bundle;)V

    .line 133
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
