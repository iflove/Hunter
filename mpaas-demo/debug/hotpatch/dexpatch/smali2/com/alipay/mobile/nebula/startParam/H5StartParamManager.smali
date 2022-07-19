.class public Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;
.super Ljava/lang/Object;
.source "H5StartParamManager.java"


# static fields
.field public static final appConfig:Ljava/lang/String; = "appConfig.json"

.field public static final index:Ljava/lang/String; = "index"

.field private static instance:Lcom/alipay/mobile/nebula/startParam/H5StartParamManager; = null

.field public static final launchParamsTag:Ljava/lang/String; = "launchParamsTag"


# instance fields
.field private homePageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prerenderPageInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startParamInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private windowTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->homePageMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->windowTagMap:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->instance:Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->instance:Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    .line 40
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->instance:Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->homePageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->homePageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    return-void
.end method

.method public getH5PreRenderPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move-object v2, v1

    .line 89
    .local v2, "list":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;

    .line 91
    .local v3, "h5StartParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    move-object v3, v4

    iget-object v4, v4, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->tag:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    iget-object v0, v3, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->param:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 94
    .end local v3    # "h5StartParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    :cond_0
    goto :goto_0

    .line 96
    :cond_1
    return-object v1
.end method

.method public getH5StartParamTag(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getHomePage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->homePageMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getWindowTag(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->windowTagMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "startParamInfoList":Ljava/util/List;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v4, "prerenderPageInfo":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v5, "homePageContainer":Ljava/lang/StringBuilder;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v7, v1

    .line 55
    .local v7, "windowContainer":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/nebula/startParam/H5StartParamUtil;->byteToInfo(Ljava/lang/String;[BLjava/util/List;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/alibaba/fastjson/JSONObject;)V

    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 61
    .local v3, "homePageStr":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->homePageMap:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v2, "prerenderPageInfoStr":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->prerenderPageInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->windowTagMap:Ljava/util/Map;

    invoke-interface {v1, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public setH5StartParamTag(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "startParamInfos"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->startParamInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void

    .line 118
    :cond_1
    :goto_0
    return-void
.end method
