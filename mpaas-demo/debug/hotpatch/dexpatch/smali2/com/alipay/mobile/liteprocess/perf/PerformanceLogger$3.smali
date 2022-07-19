.class final Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$3;
.super Ljava/lang/Object;
.source "PerformanceLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->recordAppStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    return-void

    .line 958
    :catchall_0
    move-exception v0

    .line 959
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
