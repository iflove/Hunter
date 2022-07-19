.class final Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent$1;
.super Ljava/lang/Object;
.source "DumpLogToSDEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent;

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent$1;->b:Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent;

    iput-object p2, p0, Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "DumpLogToSDEvent"

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v1

    const-string v2, "LogDumpTag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v3, "cacheTag":Ljava/lang/String;
    move-object v3, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->putStringCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :try_start_0
    const-string v1, "applog"

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    const-string/jumbo v1, "trafficLog"

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/event/DumpLogToSDEvent;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    return-void

    .line 44
    :catchall_1
    move-exception v1

    .line 45
    .restart local v1    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method
