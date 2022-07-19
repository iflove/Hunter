.class public Lcom/alipay/mobile/common/transport/utils/RpcSignUtil;
.super Ljava/lang/Object;
.source "RpcSignUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pUseSignAtlas"    # Z

    .line 58
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAlipayLocalPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    if-eqz p1, :cond_1

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SIGN_ATLAS_OPEN:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v2, "T"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_1
    return v1

    .line 59
    :cond_2
    :goto_0
    return v1
.end method

.method public static signature(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Z)Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "externalAppKey"    # Ljava/lang/String;
    .param p2, "isReq2Online"    # Z
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "pUseSignAtlas"    # Z

    .line 38
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;

    invoke-direct {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;-><init>()V

    const/4 v1, 0x0

    .line 39
    .local v1, "signRequest":Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;
    move-object v1, v0

    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppkey(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->appkey:Ljava/lang/String;

    .line 40
    iput-object p3, v1, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->content:Ljava/lang/String;

    .line 43
    invoke-static {p0, p4}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget v0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->SIGN_TYPE_ATLAS:I

    iput v0, v1, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->signType:I

    .line 47
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityUtil;->signature(Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;)Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->createSignDataBySignResult(Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;)Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 49
    .end local v1    # "signRequest":Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;
    :catchall_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "RpcSignUtil"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->newEmptySignData()Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v0

    return-object v0
.end method
