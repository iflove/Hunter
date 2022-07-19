.class public Lcom/alipay/mobile/common/logging/util/MemoryUtil;
.super Ljava/lang/Object;
.source "MemoryUtil.java"


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/MemoryUtil;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 134
    const-string v0, "getMemHeapDir"

    const-string v1, "MemoryUtil"

    const/4 v2, 0x0

    .line 136
    .local v2, "rDir":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getCommonExternalStorageDir()Ljava/io/File;

    move-result-object v3

    .line 137
    .local v3, "alipayDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v4, "packageDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "memHeaps"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    .line 141
    .end local v3    # "alipayDir":Ljava/io/File;
    .end local v4    # "packageDir":Ljava/io/File;
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v3

    .line 140
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    move-object v2, v0

    .end local v2    # "rDir":Ljava/io/File;
    .local v0, "rDir":Ljava/io/File;
    goto :goto_1

    .line 148
    .end local v0    # "rDir":Ljava/io/File;
    .restart local v2    # "rDir":Ljava/io/File;
    :catchall_1
    move-exception v3

    .line 149
    .restart local v3    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 150
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    nop

    .line 151
    :goto_2
    return-object v2
.end method

.method public static declared-synchronized clearExpiredFiles(Landroid/content/Context;Z)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clearAll"    # Z

    const-class v1, Lcom/alipay/mobile/common/logging/util/MemoryUtil;

    monitor-enter v1

    .line 90
    if-nez p0, :cond_0

    .line 91
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "MemoryUtil"

    const-string v3, "clearExpiredFiles() context:null, just return."

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v1

    return-void

    .line 89
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "clearAll":Z
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 96
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "clearAll":Z
    :cond_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/MemoryUtil;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 98
    .local v3, "targetDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v4, v2

    .line 99
    .local v4, "files":[Ljava/io/File;
    move-object v4, v0

    if-eqz v0, :cond_7

    array-length v0, v4

    if-lez v0, :cond_7

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    .line 101
    .local v9, "nowTime":J
    move-wide v9, v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x3

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    sub-long/2addr v5, v13

    .line 102
    .local v5, "effectiveStartTime":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    add-long/2addr v11, v9

    .line 104
    .local v11, "effectiveEndTime":J
    array-length v13, v4

    move-object v0, v2

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_6

    aget-object v16, v4, v15

    .line 105
    .local v2, "file":Ljava/io/File;
    move-object/from16 v2, v16

    if-eqz v16, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v16, :cond_5

    .line 108
    move/from16 v16, p1

    .line 110
    .local v16, "shouldDelete":Z
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v17, v3

    .end local v3    # "targetDir":Ljava/io/File;
    .local v17, "targetDir":Ljava/io/File;
    :try_start_3
    const-string v3, "_"

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v14, 0x0

    :try_start_4
    aget-object v3, v3, v14

    .line 111
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    .local v7, "timeStamp":J
    move-wide/from16 v7, v18

    cmp-long v3, v18, v5

    if-ltz v3, :cond_1

    cmp-long v3, v7, v11

    if-lez v3, :cond_2

    .line 113
    :cond_1
    const/16 v16, 0x1

    .line 118
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v7    # "timeStamp":J
    :cond_2
    move-object/from16 v18, v4

    goto :goto_2

    .line 115
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v14, 0x0

    goto :goto_1

    .end local v17    # "targetDir":Ljava/io/File;
    .restart local v3    # "targetDir":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v3

    const/4 v14, 0x0

    .line 116
    .end local v3    # "targetDir":Ljava/io/File;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v17    # "targetDir":Ljava/io/File;
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v14, "MemoryUtil"

    move-object/from16 v18, v4

    .end local v4    # "files":[Ljava/io/File;
    .local v18, "files":[Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v14, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const/16 v16, 0x1

    .line 119
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    if-eqz v16, :cond_4

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "MemoryUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    const-string v0, "cleanExpiresFile: "

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " success!"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 123
    :cond_3
    move-object/from16 v19, v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "MemoryUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "cleanExpiresFile: "

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " failed !"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    .line 119
    :cond_4
    move-object/from16 v19, v0

    .line 104
    .end local v2    # "file":Ljava/io/File;
    .end local v16    # "shouldDelete":Z
    :goto_3
    move-object/from16 v0, v19

    goto :goto_4

    .line 105
    .end local v17    # "targetDir":Ljava/io/File;
    .end local v18    # "files":[Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "targetDir":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 104
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "targetDir":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .restart local v17    # "targetDir":Ljava/io/File;
    .restart local v18    # "files":[Ljava/io/File;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_0

    .end local v17    # "targetDir":Ljava/io/File;
    .end local v18    # "files":[Ljava/io/File;
    .restart local v3    # "targetDir":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_6
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "targetDir":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .restart local v17    # "targetDir":Ljava/io/File;
    .restart local v18    # "files":[Ljava/io/File;
    goto :goto_5

    .line 99
    .end local v5    # "effectiveStartTime":J
    .end local v9    # "nowTime":J
    .end local v11    # "effectiveEndTime":J
    .end local v17    # "targetDir":Ljava/io/File;
    .end local v18    # "files":[Ljava/io/File;
    .restart local v3    # "targetDir":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 130
    .end local v3    # "targetDir":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    :goto_5
    monitor-exit v1

    return-void

    .line 128
    :catchall_4
    move-exception v0

    .line 129
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MemoryUtil"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 131
    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit v1

    return-void

    .line 89
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "clearAll":Z
    :goto_6
    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized dumpMemHeap(Landroid/content/Context;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    const-class v2, Lcom/alipay/mobile/common/logging/util/MemoryUtil;

    monitor-enter v2

    .line 33
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/MemoryUtil;->a:Z

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "MemoryUtil"

    const-string/jumbo v4, "mShouldDumpOOMHeap:false, just return."

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 35
    monitor-exit v2

    return-void

    .line 38
    :cond_0
    if-nez v1, :cond_1

    .line 39
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "MemoryUtil"

    const-string v4, "dumpMemHeap() context:null, just return."

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 40
    monitor-exit v2

    return-void

    .line 44
    :cond_1
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/MemoryUtil;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    move-object v3, v0

    .line 46
    .local v3, "targetDir":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 47
    .local v4, "nowTime":J
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "_dump.hprof"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    .line 48
    .local v6, "hprofFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "_dump.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 50
    .local v7, "zipFile":Ljava/io/File;
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/util/MemoryUtil;->clearExpiredFiles(Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 54
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 55
    .local v8, "start":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v10, "MemoryUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "dump start time = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    goto :goto_0

    .line 82
    .end local v8    # "start":J
    :catchall_0
    move-exception v0

    move-object v15, v3

    move-wide/from16 v16, v4

    goto/16 :goto_2

    .line 58
    .restart local v8    # "start":J
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    const-string v11, "MemoryUtil"

    invoke-interface {v10, v11, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 62
    .local v10, "end":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v12, "MemoryUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "dump end time = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " use time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v14, v10, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-wide v8, v13

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v13, "MemoryUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "zip start time = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v12

    .line 69
    .local v13, "willZipFiles":Ljava/util/List;
    move-object v13, v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0, v12, v12}, Lcom/alipay/mobile/common/logging/util/ZipUtil;->zipFile(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-wide v10, v14

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v12, "MemoryUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "zip end time = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " use time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v15, v3

    move-wide/from16 v16, v4

    .end local v3    # "targetDir":Ljava/io/File;
    .end local v4    # "nowTime":J
    .local v15, "targetDir":Ljava/io/File;
    .local v16, "nowTime":J
    sub-long v3, v10, v8

    :try_start_6
    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v12, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v13    # "willZipFiles":Ljava/util/List;
    move-object v12, v13

    goto :goto_1

    .line 74
    .end local v15    # "targetDir":Ljava/io/File;
    .end local v16    # "nowTime":J
    .restart local v3    # "targetDir":Ljava/io/File;
    .restart local v4    # "nowTime":J
    :cond_2
    move-object v15, v3

    move-wide/from16 v16, v4

    .end local v3    # "targetDir":Ljava/io/File;
    .end local v4    # "nowTime":J
    .restart local v15    # "targetDir":Ljava/io/File;
    .restart local v16    # "nowTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "MemoryUtil"

    const-string v4, "dump nothing"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v3, v12

    .line 78
    .local v3, "intent":Landroid/content/Intent;
    move-object v3, v0

    const-string v4, "com.alipay.android.automonkey"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v0, "ACTION_DUMP_HPROF_FINISHED"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v4, "MemoryUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "hprofFile:"

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " delete:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 86
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "start":J
    .end local v10    # "end":J
    monitor-exit v2

    return-void

    .line 82
    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v15    # "targetDir":Ljava/io/File;
    .end local v16    # "nowTime":J
    .local v3, "targetDir":Ljava/io/File;
    .restart local v4    # "nowTime":J
    :catchall_2
    move-exception v0

    move-object v15, v3

    move-wide/from16 v16, v4

    .line 83
    .end local v3    # "targetDir":Ljava/io/File;
    .end local v4    # "nowTime":J
    .local v0, "tr":Ljava/lang/Throwable;
    .restart local v15    # "targetDir":Ljava/io/File;
    .restart local v16    # "nowTime":J
    :goto_2
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "MemoryUtil"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "MemoryUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "hprofFile:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " delete:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "MemoryUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "hprofFile:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " delete:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 87
    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit v2

    return-void

    .line 32
    .end local v6    # "hprofFile":Ljava/io/File;
    .end local v7    # "zipFile":Ljava/io/File;
    .end local v15    # "targetDir":Ljava/io/File;
    .end local v16    # "nowTime":J
    .end local p0    # "context":Landroid/content/Context;
    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static isShouldDumpOOMHeap()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/MemoryUtil;->a:Z

    return v0
.end method

.method public static setShouldDumpOOMHeap(Z)V
    .locals 0
    .param p0, "shouldDumpOOMHeap"    # Z

    .line 29
    sput-boolean p0, Lcom/alipay/mobile/common/logging/util/MemoryUtil;->a:Z

    .line 30
    return-void
.end method
