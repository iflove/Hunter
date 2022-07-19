.class public Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;
.super Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;
.source "LbsInfoManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory<",
        "Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;-><init>()V

    .line 28
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;
    .locals 2

    .line 15
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;

    if-eqz v0, :cond_0

    .line 16
    return-object v0

    .line 18
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;

    if-eqz v1, :cond_1

    .line 20
    monitor-exit v0

    return-object v1

    .line 22
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;

    invoke-direct {v1}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;

    .line 23
    monitor-exit v0

    .line 24
    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected newBackupBean()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;
    .locals 1

    .line 38
    new-instance v0, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerAdapter;

    invoke-direct {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerAdapter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newBackupBean()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;->newBackupBean()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    move-result-object v0

    return-object v0
.end method

.method protected newDefaultBean()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;
    .locals 2

    .line 33
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->lbsInfoManagerServiceName:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/netsdkextdependapi/InnerMiscUtil;->newDefaultBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    return-object v0
.end method

.method protected bridge synthetic newDefaultBean()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerFactory;->newDefaultBean()Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManager;

    move-result-object v0

    return-object v0
.end method
