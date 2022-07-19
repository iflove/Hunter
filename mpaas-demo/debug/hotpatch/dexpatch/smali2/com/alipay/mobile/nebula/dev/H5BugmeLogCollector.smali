.class public Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;
.super Ljava/lang/Object;
.source "H5BugmeLogCollector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5BugmeLogCollector"

.field private static final UPLOAD_TAG:Ljava/lang/String; = "NebulaDebug:dumpDebugData"

.field private static dumpLimit:I

.field private static hasReadFile:Z

.field private static needDump:Z

.field private static sFilePath:Ljava/lang/String;

.field private static sLastFlushAppLogTime:J

.field private static final sQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sLastFlushAppLogTime:J

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sFilePath:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->needDump:Z

    .line 40
    sput-boolean v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    .line 41
    const/16 v0, 0x12c

    sput v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->dumpLimit:I

    .line 44
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->initConfig()V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getLockFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static enabled()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->needDump:Z

    return v0
.end method

.method public static enqueueLog(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p0, "logObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 75
    if-eqz p0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "log":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sLastFlushAppLogTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 82
    const-string v1, "NebulaDebug:dumpDebugData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-boolean v2, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    if-nez v2, :cond_2

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->prepare()V

    .line 90
    :cond_2
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v2

    sget v3, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->dumpLimit:I

    if-lt v2, v3, :cond_3

    .line 91
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 93
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 76
    .end local v0    # "log":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method

.method public static flushAppLog()V
    .locals 7

    .line 136
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 141
    .local v2, "start":J
    move-wide v2, v0

    sput-wide v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sLastFlushAppLogTime:J

    .line 142
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->readLog()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 143
    .local v1, "logs":Ljava/util/List;
    move-object v1, v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 144
    .local v4, "size":I
    :goto_0
    move v4, v0

    if-lez v0, :cond_2

    .line 145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 146
    .local v5, "log":Ljava/lang/String;
    const-string v6, "NebulaDebug:dumpDebugData"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v5    # "log":Ljava/lang/String;
    goto :goto_1

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "flush applog "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cost : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "H5BugmeLogCollector"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static flushFile()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flush "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bugme logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5BugmeLogCollector"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector$1;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method private static getFilePath()Ljava/lang/String;
    .locals 3

    .line 191
    sget-object v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    return-object v0

    .line 194
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/h5/bugme/dump-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/filecache/DiskUtil;->getSubDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 195
    .local v1, "fpath":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    .line 198
    :cond_1
    nop

    .line 199
    sput-object v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sFilePath:Ljava/lang/String;

    return-object v1
.end method

.method private static getLockFilePath()Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initConfig()V
    .locals 6

    .line 48
    const-string v0, "h5_bug_me_force_no_dump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 52
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 53
    return-void

    .line 55
    :cond_1
    const-string v0, "h5_bugmeConfig"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 56
    .local v3, "config":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "H5BugmeLogCollector"

    if-eqz v0, :cond_2

    .line 57
    const-string/jumbo v0, "not get config"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 61
    :cond_2
    :try_start_0
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 62
    .local v1, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v5, "dump"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->needDump:Z

    .line 63
    const-string v0, "dumpLimit"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->dumpLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v1    # "jo":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 64
    :catchall_0
    move-exception v0

    move-object v0, v1

    .line 65
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "config init error"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private static prepare()V
    .locals 10

    .line 170
    const-string/jumbo v0, "read log file cost: "

    const-string v1, "H5BugmeLogCollector"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 171
    .local v2, "start":J
    const/4 v4, 0x0

    .line 172
    .local v4, "br":Ljava/io/BufferedReader;
    new-instance v5, Lcom/alipay/mobile/nebula/process/ProcessLock;

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getLockFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alipay/mobile/nebula/process/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 174
    .local v5, "lock":Lcom/alipay/mobile/nebula/process/ProcessLock;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/process/ProcessLock;->lock()V

    .line 175
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v7

    .line 177
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 178
    sget-object v7, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    invoke-interface {v7, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    .end local v8    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    sput-boolean v6, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    .line 185
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 180
    :catchall_0
    move-exception v7

    .line 181
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "read bugme local log file error"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    .end local v7    # "t":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    sput-boolean v6, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    .line 185
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :catchall_1
    move-exception v7

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    sput-boolean v6, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    .line 185
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v7
.end method

.method public static readLog()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->sQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 161
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->hasReadFile:Z

    if-nez v1, :cond_1

    .line 162
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->prepare()V

    .line 165
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
