.class public Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;
.super Ljava/lang/Object;
.source "DataItemsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "dataContainer"    # Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    .param p1, "key"    # Ljava/lang/String;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const-string v0, ""

    return-object v0

    .line 54
    :cond_0
    invoke-interface {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putDataItem2ContainerAnyway(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "dataContainer"    # Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 37
    if-nez p0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "dataContainer"    # Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 25
    if-nez p0, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    invoke-interface {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1
    return-void
.end method

.method public static removeFromDataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;)V
    .locals 0
    .param p0, "dataContainer"    # Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    .param p1, "key"    # Ljava/lang/String;

    .line 58
    if-nez p0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-interface {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->removeDataItem(Ljava/lang/String;)V

    .line 62
    return-void
.end method
