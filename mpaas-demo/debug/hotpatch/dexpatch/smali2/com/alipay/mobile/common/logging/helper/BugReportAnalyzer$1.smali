.class Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer$1;
.super Ljava/lang/Object;
.source "BugReportAnalyzer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->reportLogcat(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;

.field final synthetic val$lines:I

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;

    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer$1;->this$0:Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;

    iput p2, p0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer$1;->val$lines:I

    iput-boolean p3, p0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer$1;->val$sync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer$1;->this$0:Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;

    iget v1, p0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer$1;->val$lines:I

    # invokes: Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->a(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;->access$000(Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer;I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "logcat":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 129
    .local v3, "params":Ljava/util/HashMap;
    move-object v3, v1

    const-string v4, "logcat"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    const-string v4, "BIZ_FRAME"

    const-string v5, "FRAME_LOGCAT_REPORT"

    const-string v6, "0"

    invoke-interface {v1, v4, v5, v6, v3}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    iget-boolean v4, p0, Lcom/alipay/mobile/common/logging/helper/BugReportAnalyzer$1;->val$sync:Z

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->uploadAfterSync(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v0    # "logcat":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/HashMap;
    return-void

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "BugReportAnalyzer"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method
