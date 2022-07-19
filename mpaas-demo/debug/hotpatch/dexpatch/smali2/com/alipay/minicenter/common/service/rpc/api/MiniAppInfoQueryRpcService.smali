.class public interface abstract Lcom/alipay/minicenter/common/service/rpc/api/MiniAppInfoQueryRpcService;
.super Ljava/lang/Object;
.source "MiniAppInfoQueryRpcService.java"


# virtual methods
.method public abstract batchQueryMiniAppInfo(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.info.query"
    .end annotation
.end method
