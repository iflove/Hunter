.class public Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoUtil;
.super Ljava/lang/Object;
.source "ProcessInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;
    .locals 1

    .line 21
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;->getInstance()Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;

    return-object v0
.end method

.method public static getProcessStartTime()J
    .locals 4

    .line 13
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoUtil;->a()Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;->getProcessStartTime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/InnerMiscUtil;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessStartTime ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 17
    const-wide/16 v0, -0x1

    return-wide v0
.end method
