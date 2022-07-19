.class public Lcom/alipay/mobile/common/netsdkextdepend/processinfo/DefaultProcessInfoManager;
.super Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerAdapter;
.source "DefaultProcessInfoManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getProcessStartTime()J
    .locals 2

    .line 10
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessStartTime()J

    move-result-wide v0

    return-wide v0
.end method
