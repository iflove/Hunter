.class public Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;
.super Ljava/lang/Object;
.source "ThreadDumpHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_TraceDumpTimes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private a(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "pid"    # I
    .param p2, "isForce"    # Z

    .line 194
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->c()I

    move-result v0

    .line 196
    .local v0, "dumpAllStackTracesTimes":I
    const-string v1, "/data/anr/"

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 197
    const-string v1, "listFiles(\"/data/anr/\") is null"

    return-object v1

    .line 199
    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    const/16 v3, 0x14

    if-lt v0, v3, :cond_1

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times exceed MAX_DUMP_ALL_STACKTRACES_TIMES 20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 206
    .local v2, "trace":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b(I)Ljava/lang/String;

    move-result-object v1

    .end local v2    # "trace":Ljava/lang/String;
    .local v1, "trace":Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v1    # "trace":Ljava/lang/String;
    .restart local v2    # "trace":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .end local v2    # "trace":Ljava/lang/String;
    .restart local v1    # "trace":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 211
    invoke-direct {p0, v0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(I)V

    .line 214
    :goto_0
    return-object v1
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "----- pid"

    .line 352
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/32 v4, 0x3200000

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 353
    return-object v3

    .line 355
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v1, "threadsTraces":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "reader":Ljava/io/BufferedReader;
    move-object v4, v3

    .line 358
    .local v4, "line":Ljava/lang/String;
    const/4 v5, 0x0

    .line 360
    .local v5, "insertIine":Z
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v6

    .line 361
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_4

    .line 362
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "\n"

    if-eqz v6, :cond_2

    .line 363
    move-object v3, v4

    .line 364
    .local v3, "temp":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 365
    move-object v4, v6

    const-string v8, "Cmd line:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const/4 v5, 0x1

    .line 370
    .end local v3    # "temp":Ljava/lang/String;
    :cond_2
    const-string v6, "----- end"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const/4 v5, 0x0

    .line 374
    :cond_3
    if-eqz v5, :cond_1

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 390
    :cond_5
    :goto_1
    goto :goto_2

    .line 388
    :catch_0
    move-exception v3

    .line 391
    goto :goto_2

    .line 379
    :catchall_0
    move-exception v6

    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, "exception":Ljava/lang/String;
    const-string v7, "\nexception on reading anr file, start:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v7, "\nexception on reading anr file, end.\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 385
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v6    # "exception":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 386
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 392
    :goto_2
    const/4 v3, 0x0

    .line 393
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 394
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 396
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "dumpTempStackTrace:\n"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ThreadDumpHelper"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-object v3

    .line 384
    .end local v3    # "result":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 385
    if-eqz v2, :cond_7

    .line 386
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 388
    :catch_1
    move-exception v3

    goto :goto_4

    .line 390
    :cond_7
    :goto_3
    nop

    :goto_4
    throw v0
.end method

.method private static a(Ljava/io/File;I)Ljava/lang/String;
    .locals 19
    .param p0, "file"    # Ljava/io/File;
    .param p1, "pid"    # I

    const-string v1, ""

    const-string v2, "ThreadDumpHelper"

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v0

    .line 115
    .local v3, "threadsTraces":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 118
    .local v4, "tmpFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v6, p0

    invoke-direct {v0, v6, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 120
    .local v7, "currentPointer":J
    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v5, 0x0

    move v0, v5

    .line 124
    .local v0, "tempChar":I
    const/4 v11, 0x0

    .local v11, "insertIine":Z
    const/4 v12, 0x0

    .line 126
    :goto_0
    const-wide/16 v13, 0x0

    cmp-long v15, v7, v13

    if-ltz v15, :cond_7

    .line 127
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->read()I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 128
    move/from16 v16, v15

    .end local v0    # "tempChar":I
    .local v16, "tempChar":I
    const/16 v0, 0xa

    const-string v13, "\n"

    if-eq v15, v0, :cond_1

    const/16 v0, 0xd

    move/from16 v14, v16

    .end local v16    # "tempChar":I
    .local v14, "tempChar":I
    if-ne v14, v0, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v9, p1

    goto/16 :goto_4

    .end local v14    # "tempChar":I
    .restart local v16    # "tempChar":I
    :cond_1
    move/from16 v14, v16

    .line 130
    .end local v16    # "tempChar":I
    .restart local v14    # "tempChar":I
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v12, "line":Ljava/lang/String;
    move-object v12, v0

    if-eqz v0, :cond_2

    const-string v0, "---- end"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "----- end "

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v15, " -----"

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v15, v0

    .line 133
    .local v15, "linePid":Ljava/lang/String;
    const/16 v16, 0x0

    .line 136
    .local v16, "tmpPid":I
    :try_start_2
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v16, v0

    .line 139
    move/from16 v0, v16

    goto :goto_2

    .line 137
    :catchall_0
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    .line 138
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v0, v16

    .line 140
    .end local v16    # "tmpPid":I
    .local v0, "tmpPid":I
    :goto_2
    move/from16 v9, p1

    if-ne v0, v9, :cond_3

    .line 141
    const/4 v11, 0x1

    goto :goto_3

    .line 131
    .end local v0    # "tmpPid":I
    .end local v15    # "linePid":Ljava/lang/String;
    :cond_2
    move/from16 v9, p1

    .line 145
    :cond_3
    :goto_3
    if-eqz v12, :cond_4

    :try_start_4
    const-string v0, "----- pid"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v11, :cond_4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    goto :goto_6

    .line 151
    :cond_4
    if-eqz v11, :cond_5

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    .end local v12    # "line":Ljava/lang/String;
    :cond_5
    :goto_4
    const-wide/16 v15, 0x1

    sub-long v17, v7, v15

    .line 157
    move-wide/from16 v7, v17

    const-wide/16 v5, 0x0

    cmp-long v0, v17, v5

    if-ltz v0, :cond_6

    .line 158
    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v5, 0x0

    goto :goto_5

    .line 160
    :cond_6
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    :goto_5
    move-object/from16 v6, p0

    move v0, v14

    move-wide v9, v15

    goto/16 :goto_0

    .line 165
    .end local v7    # "currentPointer":J
    .end local v11    # "insertIine":Z
    .end local v14    # "tempChar":I
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 126
    .local v0, "tempChar":I
    .restart local v7    # "currentPointer":J
    .restart local v11    # "insertIine":Z
    :cond_7
    move/from16 v9, p1

    .line 170
    .end local v0    # "tempChar":I
    .end local v7    # "currentPointer":J
    .end local v11    # "insertIine":Z
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 173
    :goto_7
    goto :goto_9

    .line 171
    :catch_0
    move-exception v0

    goto :goto_7

    .line 165
    :catchall_2
    move-exception v0

    move/from16 v9, p1

    .line 166
    .local v0, "e":Ljava/lang/Throwable;
    :goto_8
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 168
    .end local v0    # "e":Ljava/lang/Throwable;
    if-eqz v4, :cond_8

    .line 170
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    .line 177
    :cond_8
    :goto_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_9

    .line 170
    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 173
    goto :goto_a

    .line 171
    :catch_1
    move-exception v0

    .line 173
    :cond_9
    :goto_a
    throw v1
.end method

.method private a(I)V
    .locals 3
    .param p1, "times"    # I

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 189
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    const-string v2, "dumpAllStackTracesTimes"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "processName"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "bRet":Z
    invoke-static {}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->obtainThreadsStackTrace()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 278
    .local v2, "traces":[Ljava/lang/String;
    move-object v2, v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Processes("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") All Threads Traces: ###"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "monitor"

    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x1

    .line 283
    :cond_0
    return v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2
    .param p0, "pid"    # I

    .line 219
    const/4 v0, 0x3

    :try_start_0
    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 220
    const-wide/16 v0, 0x9c4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 224
    :goto_0
    const-string v0, "/data/anr/"

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    .local v0, "pidSet":Ljava/util/Set;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 45
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 46
    .local v1, "runningApps":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getUserId()I

    move-result v4

    .line 48
    .local v4, "uid":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 49
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v2, v6

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v6, v4, :cond_0

    .line 50
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 55
    .end local v1    # "runningApps":Ljava/util/List;
    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v4    # "uid":I
    :cond_1
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ThreadDumpHelper"

    const-string v4, "getPIDsByUID"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "dir"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 63
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 64
    .local v2, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 69
    .local v1, "tracePath":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object v4, v0

    .line 70
    .local v4, "fileList":[Ljava/io/File;
    move-object v4, v3

    if-nez v3, :cond_2

    .line 71
    return-object v0

    .line 73
    :cond_2
    array-length v0, v4

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    .end local v1    # "tracePath":[Ljava/lang/String;
    .local v0, "tracePath":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v4

    if-ge v1, v3, :cond_3

    .line 75
    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_3
    return-object v0

    .line 65
    .end local v0    # "tracePath":[Ljava/lang/String;
    .end local v4    # "fileList":[Ljava/io/File;
    :cond_4
    :goto_1
    return-object v0

    .line 61
    .end local v2    # "file":Ljava/io/File;
    :cond_5
    :goto_2
    return-object v0
.end method

.method private c()I
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    const-string v1, "dumpAllStackTracesTimes"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 183
    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dir"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    .local v1, "files":[Ljava/lang/String;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    const/4 v0, 0x1

    .line 89
    .local v0, "clearFileState":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    const/4 v0, 0x0

    .line 92
    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private static d(Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p0, "dir"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 100
    .local v2, "fileNames":[Ljava/lang/String;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 101
    return-object v1

    .line 103
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "lastModifiedFile":Ljava/io/File;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 105
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "file":Ljava/io/File;
    move-object v1, v4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 107
    move-object v0, v1

    .line 104
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "resultFiles":Ljava/util/List;
    const/4 v1, 0x0

    move-object v2, v1

    .local v2, "cla":Ljava/lang/Class;
    move-object v3, v1

    .line 292
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v2, v5

    .line 294
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    .line 295
    .local v6, "claArrayTypes":[Ljava/lang/Class;
    const-string v7, "get"

    invoke-virtual {v2, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 296
    .local v7, "meth":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "dalvik.vm.stack-trace-file"

    aput-object v8, v5, v4

    .line 297
    .local v5, "arglist":[Ljava/lang/Object;
    invoke-virtual {v7, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 299
    move-object v3, v8

    if-eqz v8, :cond_0

    instance-of v8, v3, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 300
    new-instance v8, Ljava/io/File;

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 301
    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v5    # "arglist":[Ljava/lang/Object;
    .end local v6    # "claArrayTypes":[Ljava/lang/Class;
    .end local v7    # "meth":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 304
    :catch_0
    move-exception v5

    move-object v6, v5

    .line 305
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v7, "ThreadDumpHelper"

    invoke-interface {v5, v7, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 310
    return-object v0

    .line 313
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/anr"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 314
    .local v6, "traceFils":[Ljava/io/File;
    move-object v6, v5

    if-eqz v5, :cond_6

    .line 315
    array-length v5, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v6, v7

    .line 316
    .local v1, "file":Ljava/io/File;
    move-object v1, v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 317
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 318
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 322
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 323
    return-object v0

    .line 326
    :cond_4
    array-length v5, v6

    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v7, v6, v4

    .line 327
    .restart local v1    # "file":Ljava/io/File;
    move-object v1, v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 328
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v1    # "file":Ljava/io/File;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 333
    :cond_6
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    .line 231
    .local v0, "canClear":Z
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v1

    .line 232
    .local v3, "file":Ljava/io/File;
    move-object v3, v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const/4 v1, 0x1

    return v1

    .line 235
    :cond_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 236
    .local v1, "fw":Ljava/io/FileWriter;
    move-object v1, v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    const/4 v0, 0x1

    .line 242
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v3    # "file":Ljava/io/File;
    goto :goto_1

    .line 240
    :catchall_0
    move-exception v1

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 241
    .local v1, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "dumpAllStackTraces"

    const-string v4, "Clear ANR File fail"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v0, "resultBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 339
    .local v3, "tracesFiles":Ljava/util/List;
    move-object v3, v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 340
    return-object v2

    .line 342
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 343
    .local v2, "traceFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "stackTrace":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .end local v2    # "traceFile":Ljava/lang/String;
    .end local v4    # "stackTrace":Ljava/lang/String;
    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 7
    .param p1, "isForce"    # Z

    .line 252
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->b()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 253
    .local v2, "pidSet":Ljava/util/Set;
    move-object v2, v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string/jumbo v0, "pidSet is empty"

    return-object v0

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "allTraces":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 259
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 262
    .local v4, "pid":I
    invoke-direct {p0, v4, p1}, Lcom/alipay/mobile/logmonitor/util/stacktrace/ThreadDumpHelper;->a(IZ)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v1, "threadsTraces":Ljava/lang/String;
    move-object v1, v5

    if-eqz v5, :cond_1

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n###\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "dumpAllStackTraces"

    invoke-interface {v5, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v1    # "threadsTraces":Ljava/lang/String;
    .end local v4    # "pid":I
    :cond_1
    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
