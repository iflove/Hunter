.class public Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;
.super Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;
.source "ProcessInfoManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory<",
        "Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;-><init>()V

    .line 26
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;
    .locals 2

    .line 13
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;

    if-eqz v0, :cond_0

    .line 14
    return-object v0

    .line 16
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;

    if-eqz v1, :cond_1

    .line 18
    monitor-exit v0

    return-object v1

    .line 20
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;

    invoke-direct {v1}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;

    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected newBackupBean()Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;
    .locals 1

    .line 35
    new-instance v0, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerAdapter;

    invoke-direct {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerAdapter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newBackupBean()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;->newBackupBean()Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;

    move-result-object v0

    return-object v0
.end method

.method protected newDefaultBean()Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;
    .locals 2

    .line 30
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->processInfoManagerServiceName:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/netsdkextdependapi/InnerMiscUtil;->newDefaultBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;

    return-object v0
.end method

.method protected bridge synthetic newDefaultBean()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManagerFactory;->newDefaultBean()Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoManager;

    move-result-object v0

    return-object v0
.end method
