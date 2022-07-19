.class public final Lcom/alipay/mobile/common/transport/utils/MonitorLogRecordUtil;
.super Ljava/lang/Object;
.source "MonitorLogRecordUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordCtrlPrintURLFlagToDataflow(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Z)V
    .locals 3
    .param p0, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .param p1, "isPrintUrl"    # Z

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isPrintReqURL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public static final recordMultMainProcessItem(Lcom/alipay/mobile/common/transport/context/TransportContext;Landroid/content/Context;)V
    .locals 3
    .param p0, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->getDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    return-void

    .line 30
    :cond_0
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 31
    return-void

    .line 34
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isExistMultiMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    return-void

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "MULTIMAIN"

    const-string v2, "T"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "MonitorLogUtil"

    const-string v1, "There are multiple processes."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
