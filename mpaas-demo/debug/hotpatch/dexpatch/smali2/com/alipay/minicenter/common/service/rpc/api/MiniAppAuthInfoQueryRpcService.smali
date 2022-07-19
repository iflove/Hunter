.class public interface abstract Lcom/alipay/minicenter/common/service/rpc/api/MiniAppAuthInfoQueryRpcService;
.super Ljava/lang/Object;
.source "MiniAppAuthInfoQueryRpcService.java"


# virtual methods
.method public abstract queryAuthInfo(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppAuthInfoQueryRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppAuthInfoQueryResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.authinfo.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
