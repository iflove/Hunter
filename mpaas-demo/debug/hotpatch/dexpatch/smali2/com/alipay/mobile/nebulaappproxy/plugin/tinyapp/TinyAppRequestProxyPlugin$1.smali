.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;
.super Ljava/lang/Object;
.source "TinyAppRequestProxyPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin;->requestProxy(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v1, p0

    const-string v2, "data"

    const-string v3, "TinyAppRequestProxyPlugin"

    .line 74
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v4, "\u8bf7\u6c42\u5f02\u5e38"

    const/16 v5, 0x16

    if-nez v0, :cond_0

    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v6, :cond_0

    .line 75
    invoke-interface {v6, v5, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 76
    return-void

    .line 80
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v6, 0x0

    move-object v7, v6

    .line 81
    .local v7, "paramObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v0

    const-string/jumbo v8, "url"

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 82
    .local v8, "url":Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 84
    .local v9, "data":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->getRpcService(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    move-result-object v0

    .line 85
    const-class v10, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;

    move-object v10, v0

    .line 86
    .local v10, "controlService":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;-><init>()V

    move-object v11, v6

    .line 87
    .local v11, "requestPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;
    move-object v11, v0

    iget-object v12, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->c:Ljava/lang/String;

    iput-object v12, v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->appId:Ljava/lang/String;

    .line 88
    iput-object v8, v11, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 91
    :try_start_1
    invoke-static {v9}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v13, v0

    .line 92
    .local v13, "dataObject":Lcom/alibaba/fastjson/JSONObject;
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;-><init>()V

    move-object v14, v6

    .line 93
    .local v14, "mapData":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    move-object v14, v0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    .line 94
    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v6

    :goto_0
    :try_start_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 95
    .local v17, "key":Ljava/lang/String;
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;

    invoke-direct {v6}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;-><init>()V

    .line 96
    .local v0, "entry":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    move-object v0, v6

    move-object/from16 v5, v17

    .end local v17    # "key":Ljava/lang/String;
    .local v5, "key":Ljava/lang/String;
    iput-object v5, v6, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    .line 97
    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    .line 98
    iget-object v6, v14, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const/16 v5, 0x16

    const/4 v6, 0x0

    .end local v0    # "entry":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_0

    .line 100
    .end local v13    # "dataObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iput-object v14, v11, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->data:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .end local v14    # "mapData":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 101
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v13, 0x0

    :goto_1
    const/4 v15, 0x0

    .line 102
    .local v13, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "requestProxy...parseJson error: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 105
    :try_start_5
    const-string/jumbo v0, "utf-8"

    invoke-static {v9, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 107
    .local v14, "dataArray":[Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;-><init>()V

    move-object v5, v15

    .line 108
    .local v5, "mapData":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    move-object v15, v0

    .end local v5    # "mapData":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    .local v15, "mapData":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    .line 109
    array-length v0, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v5, v0, :cond_3

    aget-object v17, v14, v5

    .line 110
    .local v6, "dataItem":Ljava/lang/String;
    move-object/from16 v6, v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 113
    const-string v12, "="

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, "dataItemKeyValue":[Ljava/lang/String;
    move/from16 v18, v0

    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 115
    .local v16, "entry":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    move-object/from16 v19, v0

    move-object/from16 v20, v6

    const/16 v17, 0x0

    .end local v6    # "dataItem":Ljava/lang/String;
    .end local v16    # "entry":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    .local v19, "entry":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    .local v20, "dataItem":Ljava/lang/String;
    :try_start_6
    aget-object v6, v12, v17

    iput-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    aget-object v0, v12, v0

    move-object/from16 v6, v19

    .end local v19    # "entry":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    .local v6, "entry":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    iput-object v0, v6, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    .line 117
    iget-object v0, v15, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v6

    goto :goto_4

    .line 110
    .end local v12    # "dataItemKeyValue":[Ljava/lang/String;
    .end local v15    # "mapData":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    .end local v20    # "dataItem":Ljava/lang/String;
    .local v6, "dataItem":Ljava/lang/String;
    :cond_2
    move/from16 v18, v0

    move-object/from16 v20, v6

    const/16 v17, 0x0

    .line 109
    .end local v6    # "dataItem":Ljava/lang/String;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v18

    move-object/from16 v6, v20

    goto :goto_3

    .line 120
    :cond_3
    const/16 v17, 0x0

    iput-object v15, v11, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->data:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 123
    .end local v14    # "dataArray":[Ljava/lang/String;
    goto :goto_6

    .line 121
    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    const/16 v17, 0x0

    :goto_5
    move-object v14, v0

    .line 122
    .local v14, "ex":Ljava/lang/Throwable;
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "requestProxy..data e: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v13    # "e":Ljava/lang/Throwable;
    .end local v14    # "ex":Ljava/lang/Throwable;
    :goto_6
    invoke-interface {v10, v11}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;->miniappProxy(Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;

    move-result-object v0

    move-object v5, v13

    .line 127
    .local v5, "resultPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;
    move-object v5, v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v0, :cond_4

    .line 128
    const/16 v2, 0x16

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 129
    return-void

    .line 132
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v6, v14

    .line 133
    .local v6, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v0

    const-string/jumbo v12, "status"

    iget-object v13, v5, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;->statusCode:Ljava/lang/Integer;

    if-eqz v13, :cond_5

    iget-object v13, v5, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;->statusCode:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v17, v13

    :cond_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;->data:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;->isSuccess:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;->isSuccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_8

    .line 145
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v2, v15

    .line 146
    .local v2, "headers":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v12, "Content-Length"

    iget-object v13, v5, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;->data:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "0"

    goto :goto_7

    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;->data:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_7
    invoke-virtual {v0, v12, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "headers"

    invoke-virtual {v6, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_a

    .line 136
    .end local v2    # "headers":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    :goto_8
    const/16 v2, 0x17

    .line 138
    .local v2, "code":I
    :try_start_8
    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;->errorCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move v2, v0

    .line 141
    goto :goto_9

    .line 139
    :catchall_5
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_9
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "requestProxy...parseInt :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9
    const-string v0, "error"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v0, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "errorMessage"

    const-string/jumbo v12, "\u4ee3\u7406\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v6, v0, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    nop

    .line 150
    .end local v2    # "code":I
    :goto_a
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v0, :cond_9

    .line 151
    invoke-interface {v0, v6}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 158
    .end local v5    # "resultPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyResultPB;
    .end local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "paramObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "controlService":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/openapi/MiniappControlService;
    .end local v11    # "requestPB":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;
    :cond_9
    return-void

    .line 153
    :catchall_6
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestProxyPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v2, :cond_a

    .line 155
    const/16 v5, 0x16

    invoke-interface {v2, v5, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 157
    :cond_a
    const-string/jumbo v2, "requestProxy...e:"

    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
