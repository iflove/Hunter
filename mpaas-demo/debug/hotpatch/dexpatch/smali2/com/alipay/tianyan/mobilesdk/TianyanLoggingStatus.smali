.class public Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;
.super Ljava/lang/Object;
.source "TianyanLoggingStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptTimeTicksMadly()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->acceptTimeTicksMadly()V

    .line 31
    return-void
.end method

.method public static getBundleByClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->getBundleByClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "configKey"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 38
    invoke-static {p0, p1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFrameworkBackground()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsFrameworkBackground:Z

    return v0
.end method

.method public static isMonitorBackground()Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsMonitorBackground:Z

    return v0
.end method

.method public static isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .param p1, "diagnose"    # Ljava/lang/String;

    .line 46
    invoke-static {p0, p1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRelaxedBackground()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsRelaxedBackground:Z

    return v0
.end method

.method public static isStrictBackground()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsStrictBackground:Z

    return v0
.end method

.method public static isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p1, "url"    # Ljava/lang/String;

    .line 54
    invoke-static {p0, p1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 0
    .param p0, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 42
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V

    .line 43
    return-void
.end method

.method public static noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 0
    .param p0, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 50
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 51
    return-void
.end method
