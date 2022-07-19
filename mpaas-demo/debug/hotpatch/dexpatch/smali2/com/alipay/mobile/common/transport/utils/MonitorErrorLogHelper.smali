.class public final Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;
.super Ljava/lang/Object;
.source "MonitorErrorLogHelper.java"


# static fields
.field public static final D:I = 0x2

.field public static final E:I = 0x5

.field public static final I:I = 0x3

.field public static final V:I = 0x1

.field public static final W:I = 0x4

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 94
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public static final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 124
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method

.method public static final info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 104
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public static final log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CONNECTERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public static final logExt(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 64
    sget v0, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ERROR_LOG_LEVEL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONFIG_LOG_LEVEL=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MonitorErrorLogHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget v0, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->a:I

    if-lt p0, v0, :cond_1

    .line 72
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_1
    return-void
.end method

.method public static final verbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 84
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public static final warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 114
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->logExt(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method
