.class public Lcom/alipay/mobile/common/netsdkextdepend/beaninfo/DefaultBeanInfoManager;
.super Lcom/alipay/mobile/common/netsdkextdependapi/beaninfo/BeanInfoManagerAdapter;
.source "DefaultBeanInfoManager.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 26
    sput-object v0, Lcom/alipay/mobile/common/netsdkextdepend/beaninfo/DefaultBeanInfoManager;->a:Ljava/util/Map;

    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->loggerInfoManagerServiceName:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/common/netsdkextdepend/logger/DefaultLoggerManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->deviceInfoManagerServiceName:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/common/netsdkextdepend/deviceinfo/DefaultDeviceInfoManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->appInfoManagerServiceName:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/common/netsdkextdepend/appinfo/DefaultAppInfoManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->userInfoManagerServiceName:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/common/netsdkextdepend/userinfo/DefaultUserInfoManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->monitorInfoManagerServiceName:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/common/netsdkextdepend/monitorinfo/DefaultMonitorInfoManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->securityManagerServiceName:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->lbsInfoManagerServiceName:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->processInfoManagerServiceName:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/common/netsdkextdepend/processinfo/DefaultProcessInfoManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/beaninfo/BeanInfoManagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeanClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "beanServiceName"    # Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdepend/beaninfo/DefaultBeanInfoManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
