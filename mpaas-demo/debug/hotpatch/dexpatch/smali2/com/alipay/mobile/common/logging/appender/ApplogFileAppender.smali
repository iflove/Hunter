.class public Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;
.super Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;
.source "ApplogFileAppender.java"


# instance fields
.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;JJJI)V
    .locals 11
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;
    .param p2, "fileRollTime"    # J
    .param p4, "expiredTime"    # J
    .param p6, "expiredSize"    # J
    .param p8, "eventBufferLength"    # I

    .line 19
    move-object v10, p0

    const-string v2, "applog"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;JJJI)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->v:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->w:Z

    .line 20
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 8
    .param p1, "logEvent"    # Lcom/alipay/mobile/common/logging/api/LogEvent;

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogAppenderistener()Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogAppenderistener()Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/logging/api/LogAppenderistener;->onLogAppend(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 27
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getTraceLoggerInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 28
    .local v2, "interceptor":Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;
    move-object v2, v0

    if-eqz v0, :cond_6

    .line 29
    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;->getAppendType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->o:Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v6, 0x500000

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;->getAppendType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 41
    if-nez p1, :cond_2

    .line 42
    monitor-exit p0

    return-void

    .line 44
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v1, "content":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 46
    monitor-exit p0

    return-void

    .line 48
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->w:Z

    if-nez v0, :cond_4

    .line 49
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->w:Z

    .line 51
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .end local v1    # "content":Ljava/lang/String;
    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;->getAppendType()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 31
    :cond_6
    :goto_0
    :try_start_4
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->w:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->v:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->d:Ljava/lang/String;

    const-string/jumbo v1, "main"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->w:Z

    .line 34
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/ApplogFileAppender;->v:Z

    .line 35
    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;->firstFlush()V

    .line 37
    :cond_7
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 23
    .end local v2    # "interceptor":Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;
    .end local p1    # "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
