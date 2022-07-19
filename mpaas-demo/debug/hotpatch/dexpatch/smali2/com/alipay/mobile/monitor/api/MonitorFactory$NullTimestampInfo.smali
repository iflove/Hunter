.class Lcom/alipay/mobile/monitor/api/MonitorFactory$NullTimestampInfo;
.super Ljava/lang/Object;
.source "MonitorFactory.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/api/TimestampInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/api/MonitorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullTimestampInfo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/monitor/api/MonitorFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/monitor/api/MonitorFactory$1;

    .line 198
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/api/MonitorFactory$NullTimestampInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientCurrentStartupTime()J
    .locals 2

    .line 250
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 251
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getClientPreviousStartupTime()J
    .locals 2

    .line 256
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 257
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceCurrentRebootExactTime()J
    .locals 2

    .line 202
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 203
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceCurrentRebootFuzzyTime()J
    .locals 2

    .line 208
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 209
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceLatestRebootExactTime()J
    .locals 2

    .line 214
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 215
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeviceLatestRebootFuzzyTime()J
    .locals 2

    .line 220
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 221
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessCurrentLaunchElapsedTime()J
    .locals 2

    .line 238
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 239
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessCurrentLaunchNaturalTime()J
    .locals 2

    .line 232
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 233
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessPreviousLaunchTime()J
    .locals 2

    .line 244
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 245
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDeviceRebootRecently()Z
    .locals 1

    .line 226
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessLaunchFirstly()Z
    .locals 1

    .line 262
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 263
    const/4 v0, 0x0

    return v0
.end method
