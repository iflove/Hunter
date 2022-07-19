.class Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMpaasTrafficMonitor;
.super Ljava/lang/Object;
.source "MonitorFactory.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/api/MonitorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullMpaasTrafficMonitor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/monitor/api/MonitorFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/monitor/api/MonitorFactory$1;

    .line 268
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMpaasTrafficMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public addDomainLengthLimit(Ljava/lang/String;J)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "limit"    # J

    .line 291
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 292
    return-void
.end method

.method public handleTraffic(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V
    .locals 0
    .param p1, "traffic"    # Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    .line 271
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 272
    return-void
.end method

.method public report(J)V
    .locals 0
    .param p1, "foregroundTime"    # J

    .line 276
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 277
    return-void
.end method

.method public setCommonLengthLimit(J)V
    .locals 0
    .param p1, "limit"    # J

    .line 281
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 282
    return-void
.end method

.method public setDomainLengthLimits(Ljava/util/Map;)V
    .locals 0
    .param p1, "limits"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 286
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 287
    return-void
.end method
