.class public Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;
.super Ljava/lang/Object;
.source "H5EmbededViewProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/h5container/api/H5Page;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/view/IH5EmbedView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Lcom/alipay/mobile/h5container/api/H5BridgeContext;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->e:Ljava/util/Map;

    .line 37
    new-instance v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->f:Ljava/util/Set;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->d:Ljava/util/List;

    .line 47
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .line 280
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->getConfig(Ljava/lang/String;)Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 281
    .local v2, "config":Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 282
    return-object v1

    .line 284
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->getBundleName()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "bundleName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "clazzName":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v5, v1

    .line 287
    .local v5, "clazz":Ljava/lang/Class;
    move-object v5, v4

    const-string v6, "H5EmbededViewProviderImpl"

    if-nez v4, :cond_1

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "getEmbedViewWrapper reflect clazz == null "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-object v1

    .line 292
    :cond_1
    :try_start_0
    const-class v4, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 293
    return-object v1

    .line 295
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    move-object v7, v1

    .line 296
    .local v7, "embedView":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v7, v4

    if-nez v4, :cond_3

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "getEmbedViewWrapper reflect embedView == null "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-object v1

    .line 300
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7, v4, v8}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onCreate(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    return-object v7

    .line 302
    .end local v7    # "embedView":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :catchall_0
    move-exception v4

    .line 303
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getEmbedViewWrapper reflect catch exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 380
    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    .local v0, "type":Ljava/lang/String;
    const-string v1, "TINY_COMPONENT"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "newembedbase"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    const-string v1, "id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .line 382
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v1, p0

    .line 386
    .restart local v1    # "result":Ljava/lang/String;
    :goto_1
    return-object v1
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedView;)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "embedViewWrapper"    # Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->e:Ljava/util/Map;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    move-object v3, v2

    .line 118
    .local v3, "pendingMessages":Ljava/util/List;
    move-object v3, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 119
    .local v1, "size":I
    :goto_0
    const-string v4, "H5EmbededViewProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "flushPendingMessages id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz v3, :cond_1

    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/util/Pair;

    .line 122
    .local v2, "pair":Landroidx/core/util/Pair;
    move-object v2, v6

    iget-object v6, v6, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "actionType"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "actionType":Ljava/lang/String;
    iget-object v7, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    const-string v8, "data"

    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 124
    .local v5, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v7

    const-string v8, "element"

    invoke-virtual {v7, v8, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v7, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {p2, v6, v5, v7}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 126
    .end local v2    # "pair":Landroidx/core/util/Pair;
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "actionType":Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v1    # "size":I
    .end local v3    # "pendingMessages":Ljava/util/List;
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPendingMessage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "message"    # Lcom/alibaba/fastjson/JSONObject;

    .line 51
    const-string v0, "H5EmbededViewProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addPendingMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->e:Ljava/util/Map;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 54
    .local v2, "pendingArray":Ljava/util/List;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    new-instance v1, Landroidx/core/util/Pair;

    invoke-direct {v1, p2, p3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    nop

    .end local v2    # "pendingArray":Ljava/util/List;
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearBaseView()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 324
    .local v1, "id":Ljava/lang/String;
    move-object v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 330
    :cond_2
    return-void
.end method

.method public getEmbedView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 15
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 71
    move-object v1, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "H5EmbededViewProviderImpl getEmbedView, viewId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "H5EmbededViewProviderImpl"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v13, 0x0

    if-eqz v10, :cond_6

    :try_start_0
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 75
    const-string v0, "type"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "type":Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .line 77
    .local v14, "id":Ljava/lang/String;
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 78
    const-string v2, "H5EmbededViewProviderImpl getEmbedView init"

    invoke-static {v12, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    move-result-object v2

    move-object v3, v13

    .line 80
    .local v3, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v8, v2

    .end local v3    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .local v8, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v2, :cond_3

    .line 81
    const-string v2, "newembedbase"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->clearBaseView()V

    .line 83
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->d:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-object v2, v8

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v2

    .line 87
    .local v2, "view":Landroid/view/View;
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 88
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v4, v13

    .line 89
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v3

    const-string v5, "elementid"

    invoke-virtual {v3, v5, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v3

    const-string v5, "nbcomponent.canrender"

    invoke-interface {v3, v5, v4, v13}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 93
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const-string v3, "canvas"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-direct {p0, v14, v8}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedView;)V

    .line 96
    :cond_2
    return-object v2

    .line 98
    .end local v2    # "view":Landroid/view/View;
    .end local v8    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :cond_3
    goto :goto_0

    .line 99
    :cond_4
    const-string v2, "H5EmbededViewProviderImpl getEmbedView reuse"

    invoke-static {v12, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 101
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->f:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    nop

    .line 103
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->getSpecialRestoreView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v3

    .line 102
    return-object v3

    .line 105
    :cond_5
    move-object v3, v2

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 109
    .end local v0    # "type":Ljava/lang/String;
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v14    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 110
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "getEmbedView catch throwable "

    invoke-static {v12, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_6
    nop

    .line 112
    :goto_0
    return-object v13
.end method

.method public getEmbedViewWrapperById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    return-object v0
.end method

.method public getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5EmbededViewProviderImpl getSnapshot, viewId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbededViewProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    :try_start_0
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    invoke-static {p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    move-object v4, v0

    .line 354
    .local v4, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v4, v3

    if-eqz v3, :cond_0

    .line 355
    nop

    .line 356
    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    return-object v0

    .line 359
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :catchall_0
    move-exception v2

    .line 360
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "getSnapshot catch throwable "

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 361
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    nop

    .line 362
    :goto_0
    return-object v0
.end method

.method public onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5EmbededViewProviderImpl onEmbedViewAttachedToWebView, viewId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbededViewProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz p5, :cond_0

    :try_start_0
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    const/4 v3, 0x0

    .line 140
    .local v3, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 141
    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    .end local v0    # "id":Ljava/lang/String;
    .end local v3    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :catchall_0
    move-exception v0

    .line 145
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onEmbedViewAttachedToWebView catch throwable "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 146
    :cond_0
    :goto_0
    return-void
.end method

.method public onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5EmbededViewProviderImpl onEmbedViewDestory, viewId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbededViewProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-eqz p5, :cond_0

    :try_start_0
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    const/4 v3, 0x0

    .line 177
    .local v3, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 178
    nop

    .line 179
    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 182
    .end local v0    # "id":Ljava/lang/String;
    .end local v3    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :catchall_0
    move-exception v0

    .line 183
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onEmbedViewDestory catch throwable "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 184
    :cond_0
    :goto_0
    return-void
.end method

.method public onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5EmbededViewProviderImpl onEmbedViewDetachedFromWebView, viewId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbededViewProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-eqz p5, :cond_0

    :try_start_0
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    const/4 v3, 0x0

    .line 158
    .local v3, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 159
    nop

    .line 160
    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    .end local v0    # "id":Ljava/lang/String;
    .end local v3    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :catchall_0
    move-exception v0

    .line 164
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onEmbedViewDetachedFromWebView catch throwable "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 165
    :cond_0
    :goto_0
    return-void
.end method

.method public onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .param p6, "name"    # [Ljava/lang/String;
    .param p7, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 190
    move-object v1, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "H5EmbededViewProviderImpl onEmbedViewParamChanged, viewId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "H5EmbededViewProviderImpl"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz v11, :cond_0

    :try_start_0
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 194
    invoke-static {v10, v11}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "id":Ljava/lang/String;
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    const/4 v2, 0x0

    .line 196
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 197
    nop

    .line 198
    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :catchall_0
    move-exception v0

    .line 202
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onEmbedViewParamChanged catch throwable "

    invoke-static {v13, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 203
    :cond_0
    :goto_0
    return-void
.end method

.method public onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .param p6, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 209
    move-object v1, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "H5EmbededViewProviderImpl onEmbedViewVisibilityChanged, viewId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "H5EmbededViewProviderImpl"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    if-eqz v10, :cond_0

    :try_start_0
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 213
    invoke-static {v9, v10}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "id":Ljava/lang/String;
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    const/4 v2, 0x0

    .line 215
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 216
    nop

    .line 217
    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :catchall_0
    move-exception v0

    .line 221
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onEmbedViewVisibilityChanged catch throwable "

    invoke-static {v12, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 222
    :cond_0
    :goto_0
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 336
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 337
    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public onWebViewDestory()V
    .locals 5

    .line 263
    const-string v0, "H5EmbededViewProviderImpl"

    const-string v1, "H5EmbededViewProviderImpl onWebViewDestory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    check-cast v3, Ljava/lang/String;

    .line 267
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 268
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 269
    nop

    .line 270
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onWebViewDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 276
    :cond_1
    return-void

    .line 274
    :catchall_0
    move-exception v1

    .line 275
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onWebViewDestory catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onWebViewPause()V
    .locals 5

    .line 245
    const-string v0, "H5EmbededViewProviderImpl"

    const-string v1, "H5EmbededViewProviderImpl onWebViewPause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 248
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    check-cast v3, Ljava/lang/String;

    .line 249
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 250
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 251
    nop

    .line 252
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onWebViewPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 258
    :cond_1
    return-void

    .line 256
    :catchall_0
    move-exception v1

    .line 257
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onWebViewPause catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onWebViewResume()V
    .locals 5

    .line 227
    const-string v0, "H5EmbededViewProviderImpl"

    const-string v1, "H5EmbededViewProviderImpl onWebViewResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 230
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    check-cast v3, Ljava/lang/String;

    .line 231
    .local v3, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 232
    .local v2, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 233
    nop

    .line 234
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onWebViewResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v2    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 240
    :cond_1
    return-void

    .line 238
    :catchall_0
    move-exception v1

    .line 239
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onWebViewResume catch throwable "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public releaseView()V
    .locals 2

    .line 310
    const-string v0, "H5EmbededViewProviderImpl"

    const-string v1, "releaseView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->e:Ljava/util/Map;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    .line 316
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->a:Landroid/content/Context;

    .line 317
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 318
    return-void

    .line 313
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public triggerPreSnapshot()V
    .locals 3

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 370
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->triggerPreSnapshot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    goto :goto_0

    .line 375
    :cond_0
    return-void

    .line 373
    :catchall_0
    move-exception v0

    .line 374
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "H5EmbededViewProviderImpl"

    const-string v2, "triggerPreSnapshot catch throwable "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
