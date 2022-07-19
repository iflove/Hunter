.class public Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PPDownloadPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PPDownloadPlugin"


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 34
    const-string v0, "ppdownload"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 23
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 57
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "url"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "url":Ljava/lang/String;
    const-string v3, "fileName"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, "userAgent"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 60
    .local v14, "userAgent":Ljava/lang/String;
    const-string v4, "contentDisposition"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, "contentDisposition":Ljava/lang/String;
    const-string v4, "mimeType"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 62
    .local v16, "mimeType":Ljava/lang/String;
    const-string v4, "contentLength"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v17

    .line 65
    .local v17, "contentLength":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    .line 66
    .local v19, "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    const/4 v4, 0x0

    .line 67
    .local v4, "channel":Z
    const-string v5, "H5PPDownloadPlugin"

    if-eqz v19, :cond_0

    .line 68
    invoke-interface/range {v19 .. v19}, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;->getChannelId()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "channelId":Ljava/lang/String;
    const-string v7, "5136"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "channelId is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", isGooglePlayChannel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v20, v4

    goto :goto_0

    .line 67
    .end local v6    # "channelId":Ljava/lang/String;
    :cond_0
    move/from16 v20, v4

    .line 72
    .end local v4    # "channel":Z
    .local v20, "channel":Z
    :goto_0
    move/from16 v12, v20

    .line 73
    .local v12, "isGooglePlayChannel":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "isGooglePlayChannel "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v21, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;

    move-object/from16 v4, v21

    move-object/from16 v5, p0

    move v6, v12

    move-object v7, v0

    move-object v8, v3

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, v16

    move/from16 v22, v12

    .end local v12    # "isGooglePlayChannel":Z
    .local v22, "isGooglePlayChannel":Z
    move-wide/from16 v12, v17

    invoke-direct/range {v4 .. v13}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    .local v4, "onGetQueryResult":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;
    const-string v5, "URGENT"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    .line 117
    .local v5, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->getInstance()Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;

    move-result-object v6

    .line 118
    .local v1, "h5PPQueryThread":Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;
    move-object v1, v6

    const/4 v7, 0x1

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v6, v0, v7, v4, v9}, Lcom/alipay/mobile/nebulacore/util/H5PPQueryThread;->setParams(Ljava/lang/String;ILcom/alipay/mobile/nebulacore/util/H5PPQueryThread$OnGetQueryResult;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 119
    invoke-virtual {v5, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # J

    .line 31
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "contentDisposition"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    .line 124
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 125
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "fileName"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "userAgent"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "contentDisposition"

    invoke-virtual {v1, v0, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "mimeType"

    invoke-virtual {v1, v0, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "contentLength"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "h5PageDownload"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 132
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 48
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 52
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 39
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PPDownloadPlugin;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 44
    return-void
.end method
