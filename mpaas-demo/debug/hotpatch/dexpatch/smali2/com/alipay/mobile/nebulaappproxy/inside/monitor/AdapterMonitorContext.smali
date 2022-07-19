.class public Lcom/alipay/mobile/nebulaappproxy/inside/monitor/AdapterMonitorContext;
.super Ljava/lang/Object;
.source "AdapterMonitorContext.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/api/MonitorContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoStartWhitelistStatus()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public autoWakeupReceiver()V
    .locals 0

    .line 17
    return-void
.end method

.method public collectAliveStatus()[Ljava/lang/String;
    .locals 1

    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public flushMonitorData()V
    .locals 0

    .line 117
    return-void
.end method

.method public handleSmoothnessEvent(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 97
    return-void
.end method

.method public isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z
    .locals 1
    .param p1, "batteryID"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .param p2, "s"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public isSmoothnessSampleWork()Z
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataflowID"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p2, "s"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public isTraficConsumeAccept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public keepAliveWhitelistStatus()I
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public kickOnNetworkBindService(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z
    .param p3, "s1"    # Ljava/lang/String;

    .line 57
    return-void
.end method

.method public kickOnNetworkDiagnose(ZLjava/lang/String;)V
    .locals 0
    .param p1, "b"    # Z
    .param p2, "s"    # Ljava/lang/String;

    .line 62
    return-void
.end method

.method public kickOnSystemBroadcastReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 67
    return-void
.end method

.method public loadTrafficConsumeInfo()Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .locals 1

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 0
    .param p1, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 22
    return-void
.end method

.method public noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 0
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 32
    return-void
.end method

.method public notificationWhitelistStatus()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public notifyReceiveBootComplete()V
    .locals 0

    .line 112
    return-void
.end method

.method public recentLockedWhitelistStatus()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public updateTraficDegradeCfg(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 47
    return-void
.end method

.method public uploadLogByManualTrigger(Landroid/os/Bundle;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "uploadTaskStatus"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 102
    return-void
.end method
