.class final Lcom/alipay/mobile/quinox/framemonitor/f$b;
.super Ljava/lang/Object;
.source "JerkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/framemonitor/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/alipay/mobile/quinox/framemonitor/cpu/c;


# direct methods
.method constructor <init>(JLcom/alipay/mobile/quinox/framemonitor/cpu/c;)V
    .locals 0
    .param p1, "startupTimeMillis"    # J
    .param p3, "totalCpuUsage"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-wide p1, p0, Lcom/alipay/mobile/quinox/framemonitor/f$b;->a:J

    .line 250
    iput-object p3, p0, Lcom/alipay/mobile/quinox/framemonitor/f$b;->b:Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    .line 251
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 256
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 257
    .local v2, "paramMap":Ljava/util/Map;
    move-object v2, v0

    const-string v3, "StartupTime"

    iget-wide v4, p0, Lcom/alipay/mobile/quinox/framemonitor/f$b;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x800

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 260
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 261
    .local v1, "printStream":Ljava/io/PrintStream;
    move-object v1, v3

    iget-object v4, p0, Lcom/alipay/mobile/quinox/framemonitor/f$b;->b:Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/framemonitor/f;->a(Ljava/io/PrintStream;Lcom/alipay/mobile/quinox/framemonitor/cpu/c;)V

    .line 262
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 263
    const-string v3, "CpuUsage"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    const-string v4, "BIZ_APM"

    const-string v5, "APM_QUINOX_ANR"

    const-string v6, "long_startup"

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "printStream":Ljava/io/PrintStream;
    .end local v2    # "paramMap":Ljava/util/Map;
    return-void

    .line 266
    :catchall_0
    move-exception v0

    .line 267
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "JerkMonitor"

    const-string v2, "fail report long start"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
