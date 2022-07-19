.class public Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;
.super Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityManagerAdapter;
.source "DefaultSecurityManager.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityManagerAdapter;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;)Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;
    .locals 9
    .param p0, "signRequest"    # Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 97
    .local v2, "sgMng":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    move-object v2, v0

    const-string v3, "SecurityManager"

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "[doSignature] request data sign fail, sgMng is null"

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->newEmptySignData()Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v0

    move-object v4, v1

    .line 104
    .local v4, "ssComp":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    move-object v4, v0

    if-nez v0, :cond_1

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "[doSignature] request data sign fail, ssComp is null"

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->newEmptySignData()Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    move-result-object v0

    return-object v0

    .line 110
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;-><init>()V

    .line 111
    .local v0, "signResult":Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v6, v1

    .line 112
    .local v6, "paramMap":Ljava/util/HashMap;
    move-object v6, v5

    iget-object v7, p0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->content:Ljava/lang/String;

    const-string v8, "INPUT"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v5, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 115
    .local v1, "sgc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    move-object v1, v5

    iput-object v6, v5, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 116
    iget-object v5, p0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->appkey:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->isSignTypeMD5()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    const/4 v5, 0x4

    iput v5, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->isSignTypeHmacSha1()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    const/4 v5, 0x3

    iput v5, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 122
    sget v5, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->SIGN_TYPE_HMAC_SHA1:I

    iput v5, v0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->signType:I

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->isSignTypeAtlas()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 124
    const-string v5, "ATLAS"

    const-string v7, "a"

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/4 v5, 0x5

    iput v5, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 126
    sget v5, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;->SIGN_TYPE_ATLAS:I

    iput v5, v0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->signType:I

    .line 129
    :cond_4
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;->getAuthCodeFromMetaData()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->sign:Ljava/lang/String;

    .line 130
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->setSuccess(Z)V

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[doSignature] Get security signed string: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->sign:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",  requestType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",  appKey: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v3, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v0
.end method

.method public static getAuthCodeFromMetaData()Ljava/lang/String;
    .locals 6

    .line 139
    const-string v0, ""

    sget-object v1, Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 141
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 142
    .local v3, "context":Landroid/content/Context;
    move-object v3, v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 143
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "security_guard_auth_code"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v2

    .line 144
    .local v4, "appkeyObj":Ljava/lang/Object;
    move-object v4, v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 145
    .local v2, "appkey":Ljava/lang/String;
    :goto_0
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    sput-object v2, Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;->a:Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_1
    sput-object v0, Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "appkeyObj":Ljava/lang/Object;
    goto :goto_1

    .line 150
    :catchall_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "SecurityManager"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    sput-object v0, Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;->a:Ljava/lang/String;

    .line 155
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 2
    .param p1, "encrypted"    # [B

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0

    .line 68
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context in EnvUtil is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decrypt([BLjava/lang/String;)[B
    .locals 2
    .param p1, "encrypted"    # [B
    .param p2, "type"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B

    move-result-object v0

    .line 77
    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context in EnvUtil is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 2
    .param p1, "source"    # [B

    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0

    .line 50
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context in EnvUtil is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([BLjava/lang/String;)[B
    .locals 2
    .param p1, "source"    # [B
    .param p2, "type"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B

    move-result-object v0

    .line 59
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context in EnvUtil is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApDid()Ljava/lang/String;
    .locals 4

    .line 84
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    .local v1, "apSecuritySdk":Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    .line 86
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 87
    .end local v1    # "apSecuritySdk":Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;
    :catchall_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getApDid] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v0    # "e":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public signature(Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;)Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;
    .locals 5
    .param p1, "signRequest"    # Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;

    .line 35
    const-string v0, "[signature] Exception: "

    const-string v1, "SecurityManager"

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/netsdkextdepend/security/DefaultSecurityManager;->a(Lcom/alipay/mobile/common/netsdkextdependapi/security/SignRequest;)Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 39
    :catchall_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .end local v2    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->newEmptySignData()Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    move-result-object v0

    return-object v0

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;->newErrorResult(Ljava/lang/String;)Lcom/alipay/mobile/common/netsdkextdependapi/security/SignResult;

    move-result-object v0

    return-object v0
.end method
