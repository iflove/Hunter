.class final Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$2;
.super Ljava/lang/Object;
.source "H5ReceiverUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->downLoadNebula(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 232
    move-object/from16 v0, p0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    .line 233
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v2, 0x0

    move-object v3, v2

    .line 234
    .local v3, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v3, v1

    const-string/jumbo v4, "no"

    if-eqz v1, :cond_0

    .line 235
    nop

    .line 236
    const-string v1, "h5_downloadall"

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    return-void

    .line 242
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 243
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v5, v2

    .line 244
    .local v5, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v5, v1

    const-string v11, "H5ReceiverUtil"

    if-nez v1, :cond_1

    .line 245
    const-string v1, "h5AppProvider == null"

    invoke-static {v11, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void

    .line 250
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v6, v2

    .line 251
    .local v6, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v12, v1

    .end local v6    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v12, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_2

    .line 252
    const-string v1, "h5_preDownload"

    invoke-interface {v12, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$2;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->a(Ljava/lang/String;)V

    .line 255
    return-void

    .line 259
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    const-class v1, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 261
    .local v2, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v2, v1

    if-eqz v1, :cond_5

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 264
    .local v13, "time":J
    nop

    .line 265
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAllHighestAppVersion()Ljava/util/Map;

    move-result-object v1

    .line 267
    .local v1, "nebulaList":Ljava/util/Map;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 269
    .local v15, "nebulaAppTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "nebulaList getAllHighestAppVersion "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " cost: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v15, v13

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->syncAppManage()Ljava/util/Map;

    move-result-object v4

    .line 272
    .local v4, "mappingApp":Ljava/util/Map;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "openPlatApp:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cost\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v15

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 274
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 275
    .local v10, "appId":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 276
    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->getInstance()Lcom/alipay/mobile/performance/PerformanceSceneHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->cyclicScenceCheck()V

    .line 279
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Ljava/lang/String;

    .line 280
    .local v18, "version":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v7, v0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$2;->a:Ljava/lang/String;

    move-object v6, v10

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    move-object/from16 v20, v10

    .end local v10    # "appId":Ljava/lang/String;
    .local v20, "appId":Ljava/lang/String;
    move-object/from16 v10, v19

    invoke-static/range {v5 .. v10}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->download(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/nebula/appcenter/H5AppDBService;Ljava/lang/String;)V

    .line 281
    .end local v18    # "version":Ljava/lang/String;
    .end local v20    # "appId":Ljava/lang/String;
    goto :goto_0

    .line 285
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "nebulaList "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 288
    .local v7, "appId":Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 289
    .local v8, "version":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->getInstance()Lcom/alipay/mobile/performance/PerformanceSceneHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/performance/PerformanceSceneHelper;->cyclicScenceCheck()V

    .line 290
    const/16 v20, 0x1

    .line 291
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v21

    iget-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$2;->a:Ljava/lang/String;

    .line 290
    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v22, v9

    invoke-static/range {v17 .. v22}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->download(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;ZLcom/alipay/mobile/nebula/appcenter/H5AppDBService;Ljava/lang/String;)V

    .line 292
    .end local v7    # "appId":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    goto :goto_1

    .line 298
    .end local v1    # "nebulaList":Ljava/util/Map;
    .end local v4    # "mappingApp":Ljava/util/Map;
    .end local v13    # "time":J
    .end local v15    # "nebulaAppTime":J
    :cond_5
    return-void
.end method
