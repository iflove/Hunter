.class public Lcom/alipay/mobile/common/logging/appender/AppenderManager;
.super Ljava/lang/Object;
.source "AppenderManager.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/appender/Appender;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/common/logging/api/LogContext;

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 17
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 35
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x41eb0

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->d:J

    .line 36
    iput-object v11, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 38
    new-instance v10, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 39
    const-wide/16 v12, 0x1

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const-wide/32 v7, 0xf00000

    const/high16 v9, 0x10000

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;JJJI)V

    move-object v14, v10

    .line 40
    .local v14, "applogFileAppender":Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;
    iget-object v1, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string v2, "applog"

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v15, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 43
    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-string/jumbo v3, "trafficLog"

    const-wide/32 v8, 0x800000

    const/16 v10, 0x2000

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;JJJI)V

    .line 44
    .local v15, "extAppender":Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;
    iget-object v1, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string/jumbo v2, "trafficLog"

    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v16, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 47
    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-string v3, "logcat"

    const-wide/32 v8, 0x400000

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;JJJI)V

    .line 48
    .end local v15    # "extAppender":Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;
    .local v1, "extAppender":Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;
    iget-object v2, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string v3, "logcat"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ALIVE:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ALIVE:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v2, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v2, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v2, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAG:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAG:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v2, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_AUTOMATION:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_AUTOMATION:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_BEHAVIOR:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_BEHAVIOR:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v2, v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    invoke-direct {v4, v11, v5}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method private b()V
    .locals 10

    .line 275
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a()Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->e()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    .line 276
    .local v2, "mdapFileDir":Ljava/io/File;
    move-object v2, v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move-object v3, v0

    .line 281
    .local v3, "mdapFiles":[Ljava/io/File;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 282
    return-void

    .line 284
    :cond_1
    array-length v1, v3

    const/4 v4, 0x0

    move-object v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v6, v3, v5

    .line 285
    .local v0, "file":Ljava/io/File;
    move-object v0, v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 287
    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v4, "loginfo":[Ljava/lang/String;
    move-object v4, v6

    if-eqz v6, :cond_2

    array-length v6, v4

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    .line 291
    const/4 v6, 0x2

    aget-object v6, v4, v6

    .line 292
    .local v6, "logCategory":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 293
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    new-instance v8, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    iget-object v9, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-direct {v8, v9, v6}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "mdapFileDir":Ljava/io/File;
    .end local v4    # "loginfo":[Ljava/lang/String;
    .end local v6    # "logCategory":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 299
    .end local v3    # "mdapFiles":[Ljava/io/File;
    :cond_3
    return-void

    .line 297
    :catchall_0
    move-exception v0

    move-object v0, v2

    goto :goto_2

    .line 277
    :cond_4
    :goto_1
    return-void

    .line 297
    :catchall_1
    move-exception v1

    .line 298
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "AppenderManager"

    const-string v3, "AddToAppenderMap ex"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 8

    .line 306
    const-string v0, "AppenderManager"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a()Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->b()I

    move-result v1

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 308
    iget-wide v4, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->d:J

    sub-long v4, v2, v4

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->d:J

    .line 314
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a()Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->d()Z

    move-result v1

    .line 315
    if-nez v1, :cond_1

    .line 316
    return-void

    .line 319
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " start periodIntervalCheck,curTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/logging/appender/Appender;

    .line 324
    instance-of v3, v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    if-eqz v3, :cond_2

    .line 328
    check-cast v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    .line 329
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b()Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isLogUploadByPeriodInterval(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 331
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()V

    .line 333
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 334
    if-nez v4, :cond_3

    .line 335
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 337
    :cond_3
    const-string v5, "event"

    const-string/jumbo v6, "periodInterval"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "periodInterval,upload:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_4
    goto :goto_0

    .line 344
    :cond_5
    return-void

    .line 342
    :catchall_0
    move-exception p1

    .line 343
    const-string/jumbo p1, "periodIntervalCheck ex"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 102
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->c:Z

    if-eqz v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->c:Z

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineForExternalFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 109
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x7

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const-wide/32 v7, 0x40000000

    const v9, 0x8000

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;JJJI)V

    .line 110
    .local v0, "extAppender":Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    const-string v2, "applog"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v0    # "extAppender":Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;
    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 5

    monitor-enter p0

    .line 135
    if-eqz p1, :cond_16

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->isIllegal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 141
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isLogWrite(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 142
    monitor-exit p0

    return-void

    .line 145
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogCustomerControl()Lcom/alipay/mobile/common/logging/api/LogCustomerControl;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    .line 147
    new-instance v1, Lcom/alipay/mobile/common/logging/api/customer/LogWriteInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/customer/LogWriteInfo;-><init>()V

    .line 148
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/common/logging/api/customer/LogWriteInfo;->logCategory:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/common/logging/api/customer/LogWriteInfo;->logContent:Ljava/lang/String;

    .line 150
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogCustomerControl;->isLogWrite(Lcom/alipay/mobile/common/logging/api/customer/LogWriteInfo;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 151
    if-nez v0, :cond_2

    .line 152
    monitor-exit p0

    return-void

    .line 157
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/appender/Appender;

    .line 158
    if-eqz v0, :cond_3

    .line 161
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 163
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/appender/Appender;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 164
    monitor-exit p0

    return-void

    .line 172
    :cond_3
    :try_start_3
    const-string v1, "flush"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/logging/appender/Appender;

    .line 175
    if-nez v0, :cond_4

    .line 176
    instance-of v3, v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    if-eqz v3, :cond_6

    .line 177
    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/appender/Appender;->b()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 182
    instance-of v3, v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    if-eqz v3, :cond_5

    .line 183
    check-cast v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 185
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/appender/Appender;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 189
    :cond_6
    goto :goto_0

    .line 190
    :cond_7
    monitor-exit p0

    return-void

    .line 193
    :cond_8
    :try_start_4
    const-string/jumbo v1, "uploadByEvent"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 194
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 196
    if-nez v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v2, v2, p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    .line 200
    :cond_9
    :try_start_5
    const-string v1, "ClientEvent_ClientLaunch"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 201
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b()V

    .line 204
    :cond_a
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/logging/appender/Appender;

    .line 205
    instance-of v3, v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    if-eqz v3, :cond_c

    .line 206
    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    .line 208
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/appender/Appender;->b()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isLogUpload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 210
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isLogUploadByInterval(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 211
    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()V

    .line 212
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 213
    if-nez v2, :cond_b

    .line 214
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 216
    :cond_b
    const-string v4, "event"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v4, ""

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 220
    :cond_c
    goto :goto_2

    .line 222
    :cond_d
    monitor-exit p0

    return-void

    .line 225
    :cond_e
    :try_start_6
    const-string/jumbo v1, "uploadByType"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 226
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 228
    if-nez v0, :cond_f

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v2, v2, p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-void

    .line 230
    :cond_f
    if-eqz v1, :cond_10

    :try_start_7
    const-string v3, "isMergeUpload"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 231
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-void

    .line 234
    :cond_10
    :try_start_8
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/appender/Appender;

    .line 235
    instance-of v1, v0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    if-eqz v1, :cond_11

    .line 237
    check-cast v0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    .line 238
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getUploadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 241
    :cond_11
    monitor-exit p0

    return-void

    .line 245
    :cond_12
    :try_start_9
    const-string/jumbo v1, "refreshSession"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_13

    .line 247
    :try_start_a
    iget-object p1, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->refreshSessionId()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 250
    :goto_3
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception p1

    .line 249
    :try_start_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AppenderManager"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 255
    :cond_13
    const-string v1, "gotoBackground"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v1, :cond_14

    .line 257
    :try_start_c
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 258
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->updateBackgroundTime(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 261
    :goto_4
    monitor-exit p0

    return-void

    .line 259
    :catchall_1
    move-exception p1

    .line 260
    :try_start_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AppenderManager"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 265
    :cond_14
    if-nez v0, :cond_15

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 267
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/appender/Appender;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/appender/Appender;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 270
    :cond_15
    monitor-exit p0

    return-void

    .line 136
    :cond_16
    :goto_5
    :try_start_e
    const-string p1, "AppenderManager"

    const-string v0, "appendLogEvent: illegal logEvent"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 137
    monitor-exit p0

    return-void

    .line 134
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "isBackupOthers"    # Z

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AppenderManager"

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "backupCurrent: no category"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/appender/Appender;

    const/4 v2, 0x0

    .line 121
    .local v2, "appender":Lcom/alipay/mobile/common/logging/appender/Appender;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "backupCurrent: no appender"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 128
    :cond_1
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/common/logging/appender/Appender;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "backupCurrent"

    invoke-interface {v3, v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
