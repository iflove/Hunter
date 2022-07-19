.class public interface abstract Lcom/alipay/minicenter/common/service/rpc/api/MiniAppKeepQueryRpcService;
.super Ljava/lang/Object;
.source "MiniAppKeepQueryRpcService.java"


# virtual methods
.method public abstract isKeep(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepQueryRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.iskeep.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
