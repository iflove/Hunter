.class public Lcom/alipay/mobile/common/transport/utils/NetworkMiscUtils;
.super Ljava/lang/Object;
.source "NetworkMiscUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBindedPushProcess()Z
    .locals 2

    .line 17
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isBindedPushProcess()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    const-string v0, "NetworkMiscUtils"

    const-string v1, "isBindedPushProcess ex"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    return v0
.end method
