.class public interface abstract Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;
.super Ljava/lang/Object;
.source "Oauth2AuthCodeFacade.java"


# virtual methods
.method public abstract authSign(Lcom/alipay/mobile/nebulaappproxy/openauth/core/model/auth/AuthSignReq;)Lcom/alipay/mobile/nebulaappproxy/openauth/core/model/auth/AuthSignRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openauthplatform.authcode.authSign"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract createAuthCodeUrl(Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/req/WalletAuthCodeCreateReq;)Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/res/WalletAuthCodeCreateRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openauthplatform.authcode.createAuthCodeUrl"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract executeAuth(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.openauthplatform.userauth.executeAuth"
    .end annotation
.end method

.method public abstract getAuthContentOrAutoAuth(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.openauthplatform.userauth.getAuthContentOrAutoAuth"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract getAuthPreDecision(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.member.authcenter.tiny.pre.decision"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
