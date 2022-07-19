.class public Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;
.super Ljava/lang/Object;
.source "LogcatDumpManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->c:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->b:Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->b:Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->b:Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->b:Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 11

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->a:Ljava/lang/String;

    const-string v2, "dumpLogAllLines, start logcatDump"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dumpLogcat_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "logName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 134
    .local v3, "logFile":Ljava/io/File;
    move-object v3, v1

    const/16 v4, 0x2710

    invoke-static {v1, v4}, Lcom/alipay/mobile/monitor/util/TransUtils;->dumpLogcat(Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "count":I
    const/4 v4, 0x0

    .line 139
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 142
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v2, "line":Ljava/lang/String;
    move-object v2, v5

    if-eqz v5, :cond_0

    .line 147
    new-instance v5, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string v6, "logcat"

    const-string v7, ""

    sget-object v8, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 148
    .local v5, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    nop

    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_0

    .line 158
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :goto_1
    goto :goto_2

    .line 159
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 152
    :catchall_1
    move-exception v2

    .line 153
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->a:Ljava/lang/String;

    const-string v7, "dumpLogAllLines"

    invoke-interface {v5, v6, v7, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 156
    .end local v2    # "t":Ljava/lang/Throwable;
    if-eqz v4, :cond_1

    .line 158
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 165
    :cond_1
    :goto_2
    :try_start_5
    invoke-static {v3}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileNotDir(Ljava/io/File;)V

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v5, Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dumpLogAllLines, end logcatDump, count="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v5, "logcat"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 168
    monitor-exit p0

    return-void

    .line 156
    .end local p0    # "this":Lcom/alipay/mobile/logmonitor/util/logcat/LogcatDumpManager;
    :catchall_2
    move-exception v2

    if-eqz v4, :cond_2

    .line 158
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 161
    goto :goto_3

    .line 159
    :catchall_3
    move-exception v5

    .line 161
    :cond_2
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 129
    .end local v0    # "logName":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v3    # "logFile":Ljava/io/File;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method
