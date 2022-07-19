.class public Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;
.super Lcom/alipay/mobile/common/cleancache/CacheCleanerService;
.source "CacheCleanerServiceImpl.java"


# static fields
.field private static final CONFIG_KEY_CLEAN_CACHE_LIST:Ljava/lang/String; = "config_key_clean_cache_list"

.field private static final CONFIG_KEY_PERIODIC_CACHE_LIST:Ljava/lang/String; = "config_key_periodic_cache_list"

.field private static final TAG:Ljava/lang/String; = "CacheCleanerService"


# instance fields
.field private mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

.field private mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

.field private mMicroContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/common/cleancache/CacheCleanerService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;)Lcom/alipay/mobile/framework/BundleContext;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;Ljava/lang/String;)Lcom/alipay/mobile/common/cleancache/impl/CacheClean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->parseCacheCleanConfig(Ljava/lang/String;)Lcom/alipay/mobile/common/cleancache/impl/CacheClean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;Lcom/alipay/mobile/common/cleancache/impl/CacheClean;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/common/cleancache/impl/CacheClean;

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->getExecutors(Lcom/alipay/mobile/common/cleancache/impl/CacheClean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->excuteTask(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized excuteTask(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)J
    .locals 16
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "cleanExecutors"    # Ljava/util/List;
    .param p3, "cleanListener"    # Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;",
            ">;",
            "Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;",
            ")J"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 99
    const-wide/16 v4, 0x0

    if-eqz v2, :cond_6

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 104
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v0

    .line 105
    .local v6, "size":I
    const/4 v0, 0x0

    .line 106
    .local v0, "tmpCleanExecutor":Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;
    const-wide/16 v7, 0x0

    .line 107
    .local v7, "cleanSize":J
    const/4 v9, 0x0

    move v10, v9

    move-wide v8, v7

    move-object v7, v0

    .end local v0    # "tmpCleanExecutor":Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;
    .local v7, "tmpCleanExecutor":Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;
    .local v8, "cleanSize":J
    .local v10, "i":I
    :goto_0
    if-ge v10, v6, :cond_5

    .line 109
    const-wide/16 v11, 0x0

    .line 110
    .local v11, "cleanTemp":J
    :try_start_1
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;

    move-object v7, v0

    .line 111
    const-string v0, "config_key_clean_cache_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v7}, Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;->cacheClean()J

    move-result-wide v13

    move-wide v11, v13

    goto :goto_1

    .line 113
    .end local p0    # "this":Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;
    :cond_1
    const-string v0, "config_key_periodic_cache_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-interface {v7}, Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;->periodicClean()J

    move-result-wide v13

    move-wide v11, v13

    .line 117
    :cond_2
    :goto_1
    cmp-long v0, v11, v4

    if-lez v0, :cond_3

    .line 118
    add-long/2addr v8, v11

    .line 120
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v13, "CacheCleanerService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "cleanExecutor.executeClean  [cleanExecutor = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ",   clean size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ",total : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v11    # "cleanTemp":J
    goto :goto_2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    const-string v12, "CacheCleanerService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "cleanExecutor.executeClean Exception : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "   -> crash executor is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_4

    .line 126
    add-int/lit8 v0, v10, 0x1

    int-to-float v0, v0

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v0, v0, v11

    int-to-float v11, v6

    div-float/2addr v0, v11

    :try_start_3
    invoke-interface {v3, v0, v8, v9}, Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;->onClean(FJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    goto :goto_3

    .line 127
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 128
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    const-string v12, "CacheCleanerService"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "cleanListener.onClean Exception : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "   -> crash cleanListener is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 139
    .end local v10    # "i":I
    :cond_5
    monitor-exit p0

    return-wide v8

    .line 100
    .end local v6    # "size":I
    .end local v7    # "tmpCleanExecutor":Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;
    .end local v8    # "cleanSize":J
    :cond_6
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v6, "CacheCleanerService"

    const-string v7, "cleanExecutors==null||cleanExecutors.size()==0"

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    monitor-exit p0

    return-wide v4

    .line 98
    .end local p1    # "configKey":Ljava/lang/String;
    .end local p2    # "cleanExecutors":Ljava/util/List;
    .end local p3    # "cleanListener":Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getExecutors(Lcom/alipay/mobile/common/cleancache/impl/CacheClean;)Ljava/util/List;
    .locals 10
    .param p1, "cacheClean"    # Lcom/alipay/mobile/common/cleancache/impl/CacheClean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cleancache/impl/CacheClean;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;",
            ">;"
        }
    .end annotation

    const-string v0, "CacheCleanerService"

    .line 79
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 80
    return-object v1

    .line 82
    :cond_0
    iget-object v2, p1, Lcom/alipay/mobile/common/cleancache/impl/CacheClean;->cleanInfos:Ljava/util/List;

    .line 83
    .local v2, "cleanInfos":Ljava/util/List;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "cleanExecutors":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/cleancache/impl/CleanInfo;

    .line 86
    .local v5, "cleanInfo":Lcom/alipay/mobile/common/cleancache/impl/CleanInfo;
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    iget-object v7, v5, Lcom/alipay/mobile/common/cleancache/impl/CleanInfo;->bundleName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    .line 87
    .local v1, "classLoaderByBundleName":Ljava/lang/ClassLoader;
    iget-object v7, v5, Lcom/alipay/mobile/common/cleancache/impl/CleanInfo;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;

    .line 89
    .local v6, "cleanExecutor":Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "doClean new class success : [cleanInfo.bundleName = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Lcom/alipay/mobile/common/cleancache/impl/CleanInfo;->bundleName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",cleanInfo.className"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/alipay/mobile/common/cleancache/impl/CleanInfo;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "classLoaderByBundleName":Ljava/lang/ClassLoader;
    .end local v6    # "cleanExecutor":Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CacheCleanExecutor;
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "cleanInfo":Lcom/alipay/mobile/common/cleancache/impl/CleanInfo;
    goto :goto_0

    .line 95
    :cond_1
    return-object v3
.end method

.method private parseCacheCleanConfig(Ljava/lang/String;)Lcom/alipay/mobile/common/cleancache/impl/CacheClean;
    .locals 3
    .param p1, "configKey"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mMicroContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mMicroContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mMicroContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 202
    .local v2, "json":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    return-object v1

    .line 205
    :cond_2
    const-class v0, Lcom/alipay/mobile/common/cleancache/impl/CacheClean;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cleancache/impl/CacheClean;

    return-object v0
.end method


# virtual methods
.method public clean(Ljava/lang/String;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)V
    .locals 6
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "cleanListener"    # Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;

    .line 37
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;-><init>(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "CacheCleanerService"

    const-wide/16 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 210
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    .line 211
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mMicroContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 212
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 217
    return-void
.end method

.method public syncClean(Ljava/lang/String;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)J
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "cleanListener"    # Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    const-string v1, "CacheCleanerService"

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v4, "mBundleContext == null"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-wide v2

    .line 66
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->parseCacheCleanConfig(Ljava/lang/String;)Lcom/alipay/mobile/common/cleancache/impl/CacheClean;

    move-result-object v0

    .line 67
    .local v0, "cacheClean":Lcom/alipay/mobile/common/cleancache/impl/CacheClean;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->getExecutors(Lcom/alipay/mobile/common/cleancache/impl/CacheClean;)Ljava/util/List;

    move-result-object v4

    .line 68
    .local v4, "executors":Ljava/util/List;
    invoke-direct {p0, p1, v4, p2}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->excuteTask(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 69
    .end local v0    # "cacheClean":Lcom/alipay/mobile/common/cleancache/impl/CacheClean;
    .end local v4    # "executors":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz p2, :cond_1

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, v0, v2, v3}, Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;->onClean(FJ)V

    .line 75
    :cond_1
    return-wide v2
.end method
