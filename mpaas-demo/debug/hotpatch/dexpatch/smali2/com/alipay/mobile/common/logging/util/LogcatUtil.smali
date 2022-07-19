.class public Lcom/alipay/mobile/common/logging/util/LogcatUtil;
.super Ljava/lang/Object;
.source "LogcatUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "LogcatUtil"

    .line 162
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 163
    .local v1, "logcatFileDir":Ljava/io/File;
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 165
    .local v2, "logcatBackDir":Ljava/io/File;
    if-eqz v1, :cond_5

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 170
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->a(Ljava/io/File;)V

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 174
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v8, v3, v5

    .line 175
    .local v6, "curFile":Ljava/io/File;
    move-object v6, v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 176
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3

    .line 180
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v7, "bakFile":Ljava/io/File;
    move-object v7, v8

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "backupLogcatFiles, bakFile should not be directory: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3

    .line 189
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "backupLogcatFiles: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    invoke-static {v6, v7}, Lcom/alipay/mobile/common/logging/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    goto :goto_1

    .line 192
    :catchall_0
    move-exception v8

    .line 193
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string v10, "backupLogcatFiles: copyFile"

    invoke-interface {v9, v0, v10, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    .end local v6    # "curFile":Ljava/io/File;
    .end local v7    # "bakFile":Ljava/io/File;
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 198
    .end local v1    # "logcatFileDir":Ljava/io/File;
    .end local v2    # "logcatBackDir":Ljava/io/File;
    :cond_4
    return-void

    .line 166
    .restart local v1    # "logcatFileDir":Ljava/io/File;
    .restart local v2    # "logcatBackDir":Ljava/io/File;
    :cond_5
    :goto_2
    return-void

    .line 196
    .end local v1    # "logcatFileDir":Ljava/io/File;
    .end local v2    # "logcatBackDir":Ljava/io/File;
    :catchall_1
    move-exception v1

    .line 197
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "backupOtherFiles"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 0
    .param p0, "targetDir"    # Ljava/io/File;

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->b(Ljava/io/File;)V

    .line 62
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->c(Ljava/io/File;)V

    .line 63
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->d(Ljava/io/File;)V

    .line 64
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 202
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "logcat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 203
    .local v1, "rFile":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const/4 v1, 0x0

    .line 208
    :cond_0
    return-object v1
.end method

.method private static b(Ljava/io/File;)V
    .locals 18
    .param p0, "targetDir"    # Ljava/io/File;

    const-string v1, "LogcatUtil"

    .line 68
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 69
    .local v3, "files":[Ljava/io/File;
    move-object v3, v0

    if-eqz v0, :cond_4

    array-length v0, v3

    if-lez v0, :cond_4

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    .line 71
    .local v8, "nowTime":J
    move-wide v8, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x7

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    sub-long/2addr v4, v12

    .line 72
    .local v4, "effectiveStartTime":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    add-long/2addr v10, v8

    .line 74
    .local v10, "effectiveEndTime":J
    array-length v12, v3

    move-object v0, v2

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_4

    aget-object v15, v3, v14

    .line 75
    .local v2, "file":Ljava/io/File;
    move-object v2, v15

    if-eqz v15, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 79
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v13, "_"

    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aget-object v13, v13, v15

    .line 80
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 81
    .local v6, "timeStamp":J
    move-wide/from16 v6, v16

    cmp-long v13, v16, v4

    if-ltz v13, :cond_1

    cmp-long v13, v6, v10

    if-lez v13, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v17, v0

    goto :goto_2

    .line 82
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v15, "cleanExpiresFile: "

    if-eqz v13, :cond_2

    .line 83
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    move-object/from16 v17, v0

    .end local v0    # "prefix":Ljava/lang/String;
    .local v17, "prefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is too old !"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 88
    .end local v6    # "timeStamp":J
    .end local v17    # "prefix":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 85
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v0

    .end local v0    # "prefix":Ljava/lang/String;
    .restart local v17    # "prefix":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " failed !"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    .end local v17    # "prefix":Ljava/lang/String;
    :goto_2
    nop

    .line 74
    .end local v2    # "file":Ljava/io/File;
    :goto_3
    move-object/from16 v0, v17

    goto :goto_5

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Throwable;
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v1, v15, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 93
    .end local v4    # "effectiveStartTime":J
    .end local v8    # "nowTime":J
    .end local v10    # "effectiveEndTime":J
    :cond_4
    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 212
    const-string v0, "getBackupLogcatsDir"

    const-string v1, "LogcatUtil"

    const/4 v2, 0x0

    .line 214
    .local v2, "rDir":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getCommonExternalStorageDir()Ljava/io/File;

    move-result-object v3

    .line 215
    .local v3, "alipayDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    .local v4, "packageDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "logcatic"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    .line 219
    .end local v3    # "alipayDir":Ljava/io/File;
    .end local v4    # "packageDir":Ljava/io/File;
    goto :goto_0

    .line 217
    :catchall_0
    move-exception v3

    .line 218
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    move-object v2, v0

    .end local v2    # "rDir":Ljava/io/File;
    .local v0, "rDir":Ljava/io/File;
    goto :goto_1

    .line 226
    .end local v0    # "rDir":Ljava/io/File;
    .restart local v2    # "rDir":Ljava/io/File;
    :catchall_1
    move-exception v3

    .line 227
    .restart local v3    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 228
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    nop

    .line 229
    :goto_2
    return-object v2
.end method

.method private static c(Ljava/io/File;)V
    .locals 8
    .param p0, "targetDir"    # Ljava/io/File;

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    const/4 v0, 0x0

    move-object v1, v0

    .line 98
    .local v1, "files":[Ljava/io/File;
    new-instance v2, Lcom/alipay/mobile/common/logging/util/LogcatUtil$1;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/util/LogcatUtil$1;-><init>()V

    .line 104
    .local v2, "cleanFileComparator":Ljava/util/Comparator;
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 105
    move-object v1, v3

    if-eqz v3, :cond_2

    array-length v3, v1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 106
    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 107
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    add-int/lit8 v4, v4, -0x4

    if-ge v3, v4, :cond_2

    .line 108
    aget-object v4, v1, v3

    .line 109
    .local v0, "file":Ljava/io/File;
    move-object v0, v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    const-string v5, "cleanExpiresFile: "

    const-string v6, "LogcatUtil"

    if-eqz v4, :cond_0

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is over 5 !"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed !"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private static d(Ljava/io/File;)V
    .locals 16
    .param p0, "targetDir"    # Ljava/io/File;

    .line 123
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    const/4 v0, 0x0

    move-object v1, v0

    .line 124
    .local v1, "files":[Ljava/io/File;
    new-instance v2, Lcom/alipay/mobile/common/logging/util/LogcatUtil$2;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/util/LogcatUtil$2;-><init>()V

    .line 130
    .local v2, "cleanFileComparator":Ljava/util/Comparator;
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-wide v7, v5

    .line 131
    .local v7, "totalSize":J
    move-wide v7, v3

    const-wide/32 v9, 0x200000

    cmp-long v11, v3, v9

    if-ltz v11, :cond_2

    .line 132
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 133
    move-object v1, v3

    if-eqz v3, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 134
    const-wide/32 v3, 0x100000

    sub-long v3, v7, v3

    .line 135
    .local v3, "sizeToRemove":J
    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 137
    array-length v9, v1

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v11, v1, v10

    .line 138
    .local v0, "file":Ljava/io/File;
    move-object v0, v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 142
    .local v11, "fileLength":J
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v13

    const-string v14, "cleanExpiresFile: "

    const-string v15, "LogcatUtil"

    if-eqz v13, :cond_0

    .line 143
    sub-long/2addr v3, v11

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is too large !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v15, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " failed !"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v15, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v13, v3, v5

    if-lez v13, :cond_2

    .line 137
    .end local v0    # "file":Ljava/io/File;
    .end local v11    # "fileLength":J
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 155
    .end local v3    # "sizeToRemove":J
    :cond_2
    return-void
.end method

.method public static dumpLogcat(Ljava/io/File;I)V
    .locals 13
    .param p0, "targetFile"    # Ljava/io/File;
    .param p1, "lines"    # I

    const-string v0, "close bufferedReader"

    const-string v1, "close logcatProc"

    const-string v2, "close fileWriter"

    .line 241
    if-gtz p1, :cond_0

    .line 242
    const/16 p1, 0xbb8

    .line 244
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start logcatDump for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lines."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LogcatUtil"

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_f

    .line 251
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->deleteFileNotDir(Ljava/io/File;)V

    .line 254
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    .line 255
    .local v4, "parentDir":Ljava/io/File;
    move-object v4, v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "targetFile\'s parent make failed."

    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 260
    :cond_3
    const/4 v3, 0x0

    .line 261
    .local v3, "logcatProcess":Ljava/lang/Process;
    const/4 v6, 0x0

    .line 262
    .local v6, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 264
    .local v7, "fileWriter":Ljava/io/FileWriter;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "logcat -v time -d -t "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    move-object v3, v8

    .line 265
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v6, v8

    .line 266
    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v7, v8

    .line 270
    const/4 v8, 0x0

    .line 271
    .local v8, "count":I
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 273
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v9

    .line 276
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    const-string/jumbo v12, "skip"

    invoke-interface {v11, v5, v12, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    .end local v9    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V

    .line 280
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "end logcatDump: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v5, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 286
    .end local v8    # "count":I
    .end local v10    # "line":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    goto :goto_2

    .line 288
    :catchall_1
    move-exception v8

    .line 289
    .local v8, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v5, v2, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v8    # "e":Ljava/lang/Throwable;
    :goto_2
    if-eqz v3, :cond_5

    .line 293
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 295
    :catchall_2
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-interface {v8, v5, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 297
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_3
    nop

    .line 300
    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 304
    return-void

    .line 302
    :catchall_3
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 281
    :catchall_4
    move-exception v8

    .line 282
    .restart local v8    # "e":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string v10, "dumpLog"

    invoke-interface {v9, v5, v10, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 285
    .end local v8    # "e":Ljava/lang/Throwable;
    if-eqz v7, :cond_6

    .line 286
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_5

    .line 288
    :catchall_5
    move-exception v8

    .line 289
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v5, v2, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 290
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_5
    nop

    .line 292
    :goto_6
    if-eqz v3, :cond_7

    .line 293
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_7

    .line 295
    :catchall_6
    move-exception v2

    .line 296
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-interface {v8, v5, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 297
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_7
    nop

    .line 299
    :goto_8
    if-eqz v6, :cond_8

    .line 300
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 304
    :cond_8
    return-void

    .line 284
    :catchall_7
    move-exception v8

    .line 285
    if-eqz v7, :cond_9

    .line 286
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_9

    .line 288
    :catchall_8
    move-exception v9

    .line 289
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    invoke-interface {v10, v5, v2, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 290
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_9
    :goto_9
    nop

    .line 292
    :goto_a
    if-eqz v3, :cond_a

    .line 293
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_b

    .line 295
    :catchall_9
    move-exception v2

    .line 296
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v5, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 297
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_a
    :goto_b
    nop

    .line 299
    :goto_c
    if-eqz v6, :cond_b

    .line 300
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_d

    .line 302
    :catchall_a
    move-exception v1

    .line 303
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 304
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_b
    :goto_d
    nop

    :goto_e
    throw v8

    .line 248
    .end local v3    # "logcatProcess":Ljava/lang/Process;
    .end local v4    # "parentDir":Ljava/io/File;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "fileWriter":Ljava/io/FileWriter;
    :cond_c
    :goto_f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "targetFile is null or dir."

    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public static dumpLogcatForException(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    .local v1, "logFileDir":Ljava/io/File;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 46
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->a(Ljava/io/File;)V

    .line 49
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_logcat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    const/16 v2, 0xbb8

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->dumpLogcat(Ljava/io/File;I)V

    .line 53
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LogcatUtil;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v1    # "logFileDir":Ljava/io/File;
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LogcatUtil"

    const-string v3, "dumpLogcatForException"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method
