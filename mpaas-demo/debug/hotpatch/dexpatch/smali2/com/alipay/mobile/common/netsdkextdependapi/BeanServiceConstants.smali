.class public final Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;
.super Ljava/lang/Object;
.source "BeanServiceConstants.java"


# static fields
.field public static appInfoManagerServiceName:Ljava/lang/String;

.field public static deviceInfoManagerServiceName:Ljava/lang/String;

.field public static lbsInfoManagerServiceName:Ljava/lang/String;

.field public static loggerInfoManagerServiceName:Ljava/lang/String;

.field public static monitorInfoManagerServiceName:Ljava/lang/String;

.field public static processInfoManagerServiceName:Ljava/lang/String;

.field public static securityManagerServiceName:Ljava/lang/String;

.field public static userInfoManagerServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "AppInfoManager"

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->appInfoManagerServiceName:Ljava/lang/String;

    .line 12
    const-string v0, "DeviceInfoManager"

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->deviceInfoManagerServiceName:Ljava/lang/String;

    .line 14
    const-string v0, "LoggerManager"

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->loggerInfoManagerServiceName:Ljava/lang/String;

    .line 16
    const-string v0, "UserInfoManager"

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->userInfoManagerServiceName:Ljava/lang/String;

    .line 18
    const-string v0, "MonitorInfoManager"

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->monitorInfoManagerServiceName:Ljava/lang/String;

    .line 20
    const-string v0, "SecurityManager"

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->securityManagerServiceName:Ljava/lang/String;

    .line 22
    const-string v0, "LbsInfoManager"

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->lbsInfoManagerServiceName:Ljava/lang/String;

    .line 24
    const-string v0, "ProcessInfoManager"

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdependapi/BeanServiceConstants;->processInfoManagerServiceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
