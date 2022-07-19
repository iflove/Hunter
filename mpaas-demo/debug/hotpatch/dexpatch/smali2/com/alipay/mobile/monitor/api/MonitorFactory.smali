.class public Lcom/alipay/mobile/monitor/api/MonitorFactory;
.super Ljava/lang/Object;
.source "MonitorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMpaasTrafficMonitor;,
        Lcom/alipay/mobile/monitor/api/MonitorFactory$NullTimestampInfo;,
        Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMonitorContext;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MonitorFactory"

.field private static a:Lcom/alipay/mobile/monitor/api/MonitorContext;

.field private static b:Lcom/alipay/mobile/monitor/api/TimestampInfo;

.field private static c:Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMonitorContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMonitorContext;-><init>(Lcom/alipay/mobile/monitor/api/MonitorFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/monitor/api/MonitorFactory;->a:Lcom/alipay/mobile/monitor/api/MonitorContext;

    .line 26
    new-instance v0, Lcom/alipay/mobile/monitor/api/MonitorFactory$NullTimestampInfo;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/monitor/api/MonitorFactory$NullTimestampInfo;-><init>(Lcom/alipay/mobile/monitor/api/MonitorFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/monitor/api/MonitorFactory;->b:Lcom/alipay/mobile/monitor/api/TimestampInfo;

    .line 27
    new-instance v0, Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMpaasTrafficMonitor;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMpaasTrafficMonitor;-><init>(Lcom/alipay/mobile/monitor/api/MonitorFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/monitor/api/MonitorFactory;->c:Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    const-string/jumbo v1, "need invoke bind before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "MonitorFactory"

    const-string/jumbo v2, "reportNoInitialization"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .line 21
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V

    return-void
.end method

.method public static bind(Lcom/alipay/mobile/monitor/api/MonitorContext;Lcom/alipay/mobile/monitor/api/TimestampInfo;Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;)V
    .locals 3
    .param p0, "monitorContext"    # Lcom/alipay/mobile/monitor/api/MonitorContext;
    .param p1, "timestampInfo"    # Lcom/alipay/mobile/monitor/api/TimestampInfo;
    .param p2, "mpaasTrafficMonitor"    # Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;

    .line 42
    if-eqz p0, :cond_0

    .line 43
    sput-object p0, Lcom/alipay/mobile/monitor/api/MonitorFactory;->a:Lcom/alipay/mobile/monitor/api/MonitorContext;

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    .line 46
    sput-object p1, Lcom/alipay/mobile/monitor/api/MonitorFactory;->b:Lcom/alipay/mobile/monitor/api/TimestampInfo;

    .line 48
    :cond_1
    if-eqz p2, :cond_2

    .line 49
    sput-object p2, Lcom/alipay/mobile/monitor/api/MonitorFactory;->c:Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;

    .line 52
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MonitorFactory.bind invoked by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitorFactory"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;
    .locals 1

    .line 30
    sget-object v0, Lcom/alipay/mobile/monitor/api/MonitorFactory;->a:Lcom/alipay/mobile/monitor/api/MonitorContext;

    return-object v0
.end method

.method public static getMpaasTrafficMonitor()Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;
    .locals 1

    .line 38
    sget-object v0, Lcom/alipay/mobile/monitor/api/MonitorFactory;->c:Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;

    return-object v0
.end method

.method public static getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;
    .locals 1

    .line 34
    sget-object v0, Lcom/alipay/mobile/monitor/api/MonitorFactory;->b:Lcom/alipay/mobile/monitor/api/TimestampInfo;

    return-object v0
.end method
