.class public interface abstract Lcom/alipay/minicenter/common/service/rpc/api/MiniAppKeepRpcService;
.super Ljava/lang/Object;
.source "MiniAppKeepRpcService.java"


# virtual methods
.method public abstract addKeep(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepRpcRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.keep"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract addTop(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepRpcRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.stick"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract aggregateKeepUpdateOperation(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.keep.aggregate.update"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract cancelKeep(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepRpcRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.keep.cancel"
    .end annotation
.end method

.method public abstract cancelTop(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepRpcRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.stick.cancel"
    .end annotation
.end method

.method public abstract isKeep(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepQueryRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.iskeep.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract queryKeep(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepQueryRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.keep.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
