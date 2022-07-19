.class final Lcom/alipay/mobile/quinox/framemonitor/f$a;
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
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

.field private final e:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/quinox/framemonitor/cpu/c;J)V
    .locals 0
    .param p1, "finalStack"    # Ljava/lang/String;
    .param p2, "threadsDump"    # Ljava/lang/String;
    .param p3, "stacks"    # Ljava/lang/String;
    .param p4, "cpuUsageInfo"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/c;
    .param p5, "jerkDurationMillis"    # J

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->a:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->b:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->c:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->d:Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    .line 216
    iput-wide p5, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->e:J

    .line 217
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 222
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 224
    .local v2, "map":Ljava/util/Map;
    move-object v2, v0

    const-string v3, "JerkDuration"

    iget-wide v4, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->e:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 228
    .local v1, "printStream":Ljava/io/PrintStream;
    move-object v1, v3

    iget-object v4, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->d:Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/framemonitor/f;->a(Ljava/io/PrintStream;Lcom/alipay/mobile/quinox/framemonitor/cpu/c;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 230
    const-string v3, "CpuUsage"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v3, "MainStack.MostThreadStackEntry"

    iget-object v4, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v3, "AllStack"

    iget-object v4, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v3, "MainStack.Stacks"

    iget-object v4, p0, Lcom/alipay/mobile/quinox/framemonitor/f$a;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    const-string v4, "BIZ_APM"

    const-string v5, "APM_QUINOX_ANR"

    const-string v6, "jerk"

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "printStream":Ljava/io/PrintStream;
    .end local v2    # "map":Ljava/util/Map;
    return-void

    .line 237
    :catchall_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "JerkMonitor"

    const-string v2, "fail save jerk result"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
