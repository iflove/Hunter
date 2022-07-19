.class public Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;
.super Ljava/lang/Object;
.source "H5PluginManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5PluginManager;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PluginManager"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/h5container/api/H5Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5Plugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

.field private d:Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->e:I

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->a:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    monitor-enter p0

    .line 406
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 406
    .end local p1    # "action":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Set;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/h5container/api/H5Event;",
            "Lcom/alipay/mobile/h5container/api/H5BridgeContext;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    monitor-enter p0

    .line 254
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 255
    :try_start_0
    const-string v0, "H5PluginManager"

    const-string v2, "invalid event!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    monitor-exit p0

    return v4

    .line 259
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 262
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "H5PluginManager"

    const-string v2, "invalid event name"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    monitor-exit p0

    return v4

    .line 267
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 268
    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_4

    .line 273
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    move v10, v0

    .line 274
    :goto_0
    if-ltz v10, :cond_a

    .line 275
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 276
    if-eqz v3, :cond_4

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v12, p2

    goto/16 :goto_3

    .line 279
    :cond_4
    :goto_1
    nop

    .line 281
    move-object/from16 v12, p2

    :try_start_3
    invoke-interface {v11, v2, v12}, Lcom/alipay/mobile/h5container/api/H5Plugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    goto/16 :goto_2

    .line 282
    :catchall_0
    move-exception v0

    move-object v13, v0

    .line 284
    :try_start_4
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v14, "H5PluginManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " handleEvent exception."

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    const-string v9, "H5_PLUGIN_EXCEPTION"

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 287
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    const-string v14, "action"

    invoke-virtual {v9, v14, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v9, v0, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 289
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    instance-of v9, v9, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v9, :cond_5

    .line 290
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    check-cast v9, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 291
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string v15, "appId"

    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v2, "appId"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v15, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v4, "tinyApp"

    .line 292
    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string v14, "isTinyApp"

    const/4 v15, 0x0

    invoke-static {v9, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 294
    :cond_5
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 296
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 301
    :goto_2
    const-wide/16 v13, 0x0

    if-eqz v0, :cond_7

    .line 302
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 304
    cmp-long v0, v2, v13

    if-lez v0, :cond_6

    .line 305
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    const-string v4, "H5PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Nebula cost time ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] handled by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " elapse:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 311
    :cond_6
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    .line 314
    :cond_7
    const/4 v2, 0x1

    :try_start_5
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v2, v15, v5

    .line 316
    cmp-long v0, v2, v13

    if-lez v0, :cond_8

    .line 317
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    const-string v9, "H5PluginManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Nebula cost time ["

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] handle pass "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " elapse:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_8
    :goto_3
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 297
    :cond_9
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 325
    :cond_a
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    .line 268
    :cond_b
    const/4 v2, 0x0

    .line 269
    :goto_4
    monitor-exit p0

    return v2

    .line 253
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Set;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/h5container/api/H5Event;",
            "Lcom/alipay/mobile/h5container/api/H5BridgeContext;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    monitor-enter p0

    .line 179
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 180
    :try_start_0
    const-string v0, "H5PluginManager"

    const-string v2, "invalid event!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    monitor-exit p0

    return v4

    .line 183
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "H5PluginManager"

    const-string v2, "invalid event name"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    monitor-exit p0

    return v4

    .line 191
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 192
    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_4

    .line 196
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    move v10, v0

    .line 197
    :goto_0
    if-ltz v10, :cond_a

    .line 198
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 199
    if-eqz v3, :cond_4

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v12, p2

    goto/16 :goto_3

    .line 202
    :cond_4
    :goto_1
    nop

    .line 205
    move-object/from16 v12, p2

    :try_start_3
    invoke-interface {v11, v2, v12}, Lcom/alipay/mobile/h5container/api/H5Plugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    goto/16 :goto_2

    .line 206
    :catchall_0
    move-exception v0

    move-object v13, v0

    .line 207
    :try_start_4
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v14, "H5PluginManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " interceptEvent exception."

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    const-string v9, "H5_PLUGIN_EXCEPTION"

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 210
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    const-string v14, "action"

    invoke-virtual {v9, v14, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v9, v0, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 212
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    instance-of v9, v9, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v9, :cond_5

    .line 213
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    check-cast v9, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 214
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    const-string v15, "appId"

    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v2, "appId"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v15, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v4, "tinyApp"

    .line 215
    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    const-string v14, "isTinyApp"

    const/4 v15, 0x0

    invoke-static {v9, v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 217
    :cond_5
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 219
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 225
    :goto_2
    const-wide/16 v13, 0x0

    if-eqz v0, :cond_7

    .line 226
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 228
    cmp-long v0, v2, v13

    if-lez v0, :cond_6

    .line 229
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v4, "H5PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Nebula cost time ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] intercepted by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " elapse:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    :cond_6
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    .line 238
    :cond_7
    const/4 v2, 0x1

    :try_start_5
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v2, v15, v5

    .line 240
    cmp-long v0, v2, v13

    if-lez v0, :cond_8

    .line 241
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v9, "H5PluginManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Nebula cost time ["

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] intercept pass "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " elapse:"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_8
    :goto_3
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 220
    :cond_9
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 249
    :cond_a
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    .line 192
    :cond_b
    const/4 v2, 0x0

    .line 193
    :goto_4
    monitor-exit p0

    return v2

    .line 178
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 0
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 331
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 336
    return-void
.end method

.method public declared-synchronized onRelease()V
    .locals 8

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    :try_start_1
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Plugin;->onRelease()V

    .line 344
    sget-boolean v4, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 346
    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 347
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 348
    const-string v3, "H5PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Nebula cost time release plugin "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " elapse:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :cond_0
    goto :goto_0

    .line 354
    :catchall_0
    move-exception v2

    .line 355
    :try_start_2
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 356
    const-string v3, "H5PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onRelease exception."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    const-string v3, "H5_PLUGIN_EXCEPTION"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 360
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    instance-of v4, v3, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v4, :cond_1

    .line 361
    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 362
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string v5, "appId"

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "appId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string v5, "tinyApp"

    .line 363
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "isTinyApp"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 365
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 367
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    goto/16 :goto_0

    .line 368
    :cond_2
    throw v2

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    monitor-exit p0

    return-void

    .line 339
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    .locals 12
    .param p1, "plugin"    # Lcom/alipay/mobile/h5container/api/H5Plugin;

    monitor-enter p0

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 48
    :try_start_0
    const-string v1, "H5PluginManager"

    const-string v2, "invalid plugin parameter!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 49
    monitor-exit p0

    return v0

    .line 52
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->enableFilterPlugin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->isInPluginBlackList(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    .line 54
    monitor-exit p0

    return v0

    .line 57
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-string v1, "H5PluginManager"

    const-string v2, "plugin already registered!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 59
    monitor-exit p0

    return v0

    .line 62
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 63
    .local v1, "time":J
    new-instance v3, Lcom/alipay/mobile/h5container/api/H5EventFilter;

    invoke-direct {v3}, Lcom/alipay/mobile/h5container/api/H5EventFilter;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    .local v3, "filter":Lcom/alipay/mobile/h5container/api/H5EventFilter;
    :try_start_4
    invoke-interface {p1, v3}, Lcom/alipay/mobile/h5container/api/H5Plugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    nop

    .line 72
    :try_start_5
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->actionIterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 73
    .local v6, "iterator":Ljava/util/Iterator;
    move-object v6, v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 74
    const-string v4, "H5PluginManager"

    const-string v5, "empty filter"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 75
    monitor-exit p0

    return v0

    .line 79
    :cond_3
    :try_start_6
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    invoke-interface {p1, v4}, Lcom/alipay/mobile/h5container/api/H5Plugin;->onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    nop

    .line 100
    :try_start_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v5

    .line 104
    .local v4, "action":Ljava/lang/String;
    move-object v5, v0

    .end local v4    # "action":Ljava/lang/String;
    .local v5, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    const-string v0, "H5PluginManager"

    const-string v4, "event can\'t be empty!"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_0

    .line 109
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->isInJsApiBlackList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "pluginList":Ljava/util/List;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 118
    .end local v0    # "pluginList":Ljava/util/List;
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 121
    .restart local v0    # "pluginList":Ljava/util/List;
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    nop

    .end local v0    # "pluginList":Ljava/util/List;
    .end local v5    # "action":Ljava/lang/String;
    goto :goto_0

    .line 124
    :cond_7
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    move-object v0, v5

    .line 126
    .local v0, "elapse":J
    move-wide v4, v7

    .end local v0    # "elapse":J
    .local v4, "elapse":J
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-ltz v0, :cond_8

    .line 127
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "clazzName":Ljava/lang/String;
    const-string v7, "H5PluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Nebula cost time register plugin "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " elapse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 133
    .end local v0    # "clazzName":Ljava/lang/String;
    .end local v4    # "elapse":J
    :cond_8
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 80
    :catchall_0
    move-exception v4

    .line 81
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_8
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->d:Ljava/lang/String;

    .line 82
    const-string v7, "H5PluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  onInitialize exception."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    const-string v7, "H5_PLUGIN_EXCEPTION"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    .line 84
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    .line 85
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 86
    .local v5, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    instance-of v8, v7, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v8, :cond_9

    .line 87
    check-cast v7, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 88
    .local v7, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    const-string v9, "appId"

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "appId"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v8

    const-string v9, "tinyApp"

    .line 89
    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "isTinyApp"

    invoke-static {v10, v11, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 91
    .end local v7    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_9
    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v7, :cond_a

    .line 97
    monitor-exit p0

    return v0

    .line 94
    :cond_a
    :try_start_9
    throw v4

    .line 66
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v6    # "iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    .line 67
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->d:Ljava/lang/String;

    .line 68
    const-string v5, "H5PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  onPrepare exception."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 69
    monitor-exit p0

    return v0

    .line 46
    .end local v1    # "time":J
    .end local v3    # "filter":Lcom/alipay/mobile/h5container/api/H5EventFilter;
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local p1    # "plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public register(Ljava/util/List;)Z
    .locals 4
    .param p1, "plugins"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5Plugin;",
            ">;)Z"
        }
    .end annotation

    .line 378
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    const/4 v0, 0x1

    .line 383
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 384
    .local v2, "plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 385
    .end local v2    # "plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    goto :goto_0

    .line 387
    :cond_1
    return v0

    .line 379
    .end local v0    # "result":Z
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized unregister(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    .locals 6
    .param p1, "plugin"    # Lcom/alipay/mobile/h5container/api/H5Plugin;

    monitor-enter p0

    .line 138
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 139
    :try_start_0
    const-string v1, "H5PluginManager"

    const-string v2, "invalid plugin parameter!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return v0

    .line 143
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    const-string v1, "H5PluginManager"

    const-string v2, "plugin not registered!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    monitor-exit p0

    return v0

    .line 149
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 153
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 157
    .local v1, "plugins":Ljava/util/List;
    move-object v1, v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 158
    .local v3, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 160
    .local v4, "l":Lcom/alipay/mobile/h5container/api/H5Plugin;
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 163
    .end local v4    # "l":Lcom/alipay/mobile/h5container/api/H5Plugin;
    :cond_2
    goto :goto_1

    .line 165
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v1    # "plugins":Ljava/util/List;
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "i":Ljava/util/Iterator;
    :cond_4
    goto :goto_0

    .line 170
    :cond_5
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 171
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->d:Ljava/lang/String;

    .line 172
    const-string v1, "H5PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Nebula cost time unregister plugin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :cond_6
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 137
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local p1    # "plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregister(Ljava/util/List;)Z
    .locals 4
    .param p1, "plugins"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5Plugin;",
            ">;)Z"
        }
    .end annotation

    .line 392
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 396
    :cond_0
    const/4 v0, 0x1

    .line 397
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 398
    .local v2, "p":Lcom/alipay/mobile/h5container/api/H5Plugin;
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->unregister(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 399
    .end local v2    # "p":Lcom/alipay/mobile/h5container/api/H5Plugin;
    goto :goto_0

    .line 401
    :cond_1
    return v0

    .line 393
    .end local v0    # "result":Z
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
