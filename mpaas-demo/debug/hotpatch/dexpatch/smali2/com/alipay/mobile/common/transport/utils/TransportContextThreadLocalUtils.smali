.class public Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;
.super Ljava/lang/Object;
.source "TransportContextThreadLocalUtils.java"


# static fields
.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alipay/mobile/common/transport/context/TransportContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDnsType(Ljava/lang/String;)V
    .locals 3
    .param p0, "dnsType"    # Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->getValue()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    .local v1, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v2, "DT"

    invoke-interface {v0, v2, p0}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static getValue()Lcom/alipay/mobile/common/transport/context/TransportContext;
    .locals 1

    .line 23
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    return-object v0
.end method

.method public static isFromHttpDns()Z
    .locals 3

    .line 74
    const/4 v0, 0x0

    .local v0, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->getValue()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v1

    .line 75
    move-object v0, v1

    if-nez v1, :cond_0

    .line 76
    const/4 v1, 0x0

    return v1

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v2, "DT"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "httpdns"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isFromIpRank()Z
    .locals 3

    .line 65
    const/4 v0, 0x0

    .local v0, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->getValue()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v1

    .line 66
    move-object v0, v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    return v1

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v2, "DT"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string v2, "iprank"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isFromLocalCacheDns()Z
    .locals 3

    .line 56
    const/4 v0, 0x0

    .local v0, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->getValue()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v1

    .line 57
    move-object v0, v1

    if-nez v1, :cond_0

    .line 58
    const/4 v1, 0x0

    return v1

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v2, "DT"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "localCacheDns"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isFromLocalDns()Z
    .locals 3

    .line 47
    const/4 v0, 0x0

    .local v0, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->getValue()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v1

    .line 48
    move-object v0, v1

    if-nez v1, :cond_0

    .line 49
    const/4 v1, 0x0

    return v1

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v2, "DT"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "localdns"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static setTargetHost(Ljava/lang/String;)V
    .locals 3
    .param p0, "targetHost"    # Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->getValue()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    .local v1, "transportContext":Lcom/alipay/mobile/common/transport/context/TransportContext;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v2, "TARGET_HOST"

    invoke-interface {v0, v2, p0}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static setValue(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 1
    .param p0, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 27
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
