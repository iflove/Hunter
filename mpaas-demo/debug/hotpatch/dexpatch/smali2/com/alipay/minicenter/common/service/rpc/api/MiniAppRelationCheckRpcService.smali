.class public interface abstract Lcom/alipay/minicenter/common/service/rpc/api/MiniAppRelationCheckRpcService;
.super Ljava/lang/Object;
.source "MiniAppRelationCheckRpcService.java"


# virtual methods
.method public abstract checkRelation(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppRelationCheckRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.minirelation.check"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
