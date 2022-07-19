.class public Lcom/alipay/mobile/common/logging/impl/EventLoggerImpl;
.super Ljava/lang/Object;
.source "EventLoggerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;


# instance fields
.field private a:Lcom/alipay/mobile/common/logging/api/LogContext;

.field private b:Lcom/alipay/mobile/common/logging/render/AntEventRender;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 1
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/EventLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 21
    new-instance v0, Lcom/alipay/mobile/common/logging/render/AntEventRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/AntEventRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/EventLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/AntEventRender;

    .line 22
    return-void
.end method


# virtual methods
.method public antEvent(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V
    .locals 1
    .param p1, "antEvent"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/impl/EventLoggerImpl;->antEvent(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V

    .line 27
    return-void
.end method

.method public antEvent(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V
    .locals 8
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "antEvent"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    .line 31
    if-nez p2, :cond_0

    .line 32
    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->getEventID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "BehavorLogger"

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "illegal args, eventId is empty!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 38
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->getBizType()Ljava/lang/String;

    move-result-object p1

    .line 41
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "illegal args, bizType is empty!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/EventLoggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const/4 v4, 0x0

    new-instance v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 49
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->getLoggerLevel()I

    move-result v2

    invoke-direct {v5, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/impl/EventLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/AntEventRender;

    .line 51
    invoke-static {v2, p2}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/AntEventRender;Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 46
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 52
    return-void
.end method
