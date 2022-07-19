.class public Lcom/alipay/mobile/common/netsdkextdepend/userinfo/DefaultUserInfoManager;
.super Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerAdapter;
.source "DefaultUserInfoManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastUserId()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
