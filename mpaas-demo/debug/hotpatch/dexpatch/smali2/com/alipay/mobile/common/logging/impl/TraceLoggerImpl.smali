.class public Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;
.super Ljava/lang/Object;
.source "TraceLoggerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# instance fields
.field private a:Lcom/alipay/mobile/common/logging/api/LogContext;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/StringBuffer;

.field private e:Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 2
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-interface {p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    .local v0, "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 26
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    .line 27
    invoke-interface {p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->isPrintTraceLogRelease()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->c:Z

    .line 28
    invoke-interface {p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getTraceLoggerInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->e:Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->d:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->d:Ljava/lang/StringBuffer;

    .line 189
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "threadName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->d:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    if-eqz p2, :cond_1

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->d:Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_1
    goto :goto_0

    .line 196
    :catchall_0
    move-exception v1

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->d:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 203
    return-object v1
.end method

.method private a()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->e:Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getTraceLoggerInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->e:Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->e:Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;->getAppendType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 179
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private b()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 55
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    return-void

    .line 124
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 126
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 146
    invoke-static {p3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    .local v1, "str":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;->processThrowable(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    return-void

    .line 156
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 158
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 130
    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 131
    .local v2, "msg":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;->processThrowable(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    return-void

    .line 140
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v3, v2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 142
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    return-void

    .line 66
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 68
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 169
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, ""

    invoke-static {p1, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :cond_0
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    return-void

    .line 40
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 42
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    return-void

    .line 79
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 81
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 101
    invoke-static {p3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    .local v1, "str":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;->processThrowable(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    return-void

    .line 111
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v2, p2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 113
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 85
    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 86
    .local v2, "msg":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/crash/ThrowableListener;->processThrowable(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "message":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    return-void

    .line 95
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, p1, v3, v2, v1}, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/TraceLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 97
    return-void
.end method
