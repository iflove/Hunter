.class public Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoUtil;
.super Ljava/lang/Object;
.source "UserInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLastUserId()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;->getInstance()Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManagerFactory;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManager;

    invoke-interface {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoManager;->getLastUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
