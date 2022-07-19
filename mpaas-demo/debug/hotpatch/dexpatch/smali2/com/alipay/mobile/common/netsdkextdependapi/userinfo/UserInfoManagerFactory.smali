.class public Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;
.super Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;
.source "UserInfoManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory<",
        "Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManager;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;
    .locals 2

    .line 16
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;

    if-eqz v0, :cond_0

    .line 17
    return-object v0

    .line 19
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;

    if-eqz v1, :cond_1

    .line 21
    monitor-exit v0

    return-object v1

    .line 23
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;

    invoke-direct {v1}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;->a:Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;

    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected newBackupBean()Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManager;
    .locals 1

    .line 35
    new-instance v0, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerAdapter;

    invoke-direct {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerAdapter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newBackupBean()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;->newBackupBean()Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManager;

    move-result-object v0

    return-object v0
.end method

.method protected newDefaultBean()Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManager;
    .locals 2

    .line 30
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->userInfoManagerServiceName:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManager;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/netsdkextdependapi/InnerMiscUtil;->newDefaultBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManager;

    return-object v0
.end method

.method protected bridge synthetic newDefaultBean()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;->newDefaultBean()Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManager;

    move-result-object v0

    return-object v0
.end method
