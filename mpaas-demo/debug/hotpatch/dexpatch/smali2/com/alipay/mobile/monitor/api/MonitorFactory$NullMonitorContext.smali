.class Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMonitorContext;
.super Ljava/lang/Object;
.source "MonitorFactory.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/api/MonitorContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/api/MonitorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullMonitorContext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/monitor/api/MonitorFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/monitor/api/MonitorFactory$1;

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/api/MonitorFactory$NullMonitorContext;-><init>()V

    return-void
.end method


# virtual methods
.method public autoStartWhitelistStatus()I
    .locals 1

    .line 122
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public autoWakeupReceiver()V
    .locals 0

    .line 63
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 64
    return-void
.end method

.method public collectAliveStatus()[Ljava/lang/String;
    .locals 1

    .line 162
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 163
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public flushMonitorData()V
    .locals 0

    .line 173
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 174
    return-void
.end method

.method public getDevicePerformanceToolset()Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset;
    .locals 1

    .line 188
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstrumentCallback()Lcom/alipay/mobile/monitor/api/MonitorInstrumentCallback;
    .locals 1

    .line 193
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleSmoothnessEvent(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 152
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 153
    return-void
.end method

.method public isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .param p2, "diagnose"    # Ljava/lang/String;

    .line 73
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public isSmoothnessSampleWork()Z
    .locals 1

    .line 146
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p2, "url"    # Ljava/lang/String;

    .line 84
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isTraficConsumeAccept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 90
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public keepAliveWhitelistStatus()I
    .locals 1

    .line 128
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public kickOnNetworkBindService(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "isBindFailed"    # Z
    .param p3, "failedReason"    # Ljava/lang/String;

    .line 107
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 108
    return-void
.end method

.method public kickOnNetworkDiagnose(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isNetworkBroken"    # Z
    .param p2, "brokenReason"    # Ljava/lang/String;

    .line 112
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 113
    return-void
.end method

.method public kickOnSystemBroadcastReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .line 117
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 118
    return-void
.end method

.method public loadTrafficConsumeInfo()Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .locals 1

    .line 101
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 0
    .param p1, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 68
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 69
    return-void
.end method

.method public noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 0
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 79
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 80
    return-void
.end method

.method public notificationWhitelistStatus()I
    .locals 1

    .line 140
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public notifyReceiveBootComplete()V
    .locals 0

    .line 168
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 169
    return-void
.end method

.method public onTinyAppPageUrlChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 183
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 184
    return-void
.end method

.method public recentLockedWhitelistStatus()I
    .locals 1

    .line 134
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public setTinyAppPageFluencyEnable(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 178
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 179
    return-void
.end method

.method public updateTraficDegradeCfg(Ljava/lang/String;)V
    .locals 0
    .param p1, "cfg"    # Ljava/lang/String;

    .line 96
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 97
    return-void
.end method

.method public uploadLogByManualTrigger(Landroid/os/Bundle;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 157
    # invokes: Lcom/alipay/mobile/monitor/api/MonitorFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->access$300()V

    .line 158
    return-void
.end method
