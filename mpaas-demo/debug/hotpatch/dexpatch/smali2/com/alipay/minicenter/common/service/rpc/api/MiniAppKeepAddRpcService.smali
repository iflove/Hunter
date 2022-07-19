.class public interface abstract Lcom/alipay/minicenter/common/service/rpc/api/MiniAppKeepAddRpcService;
.super Ljava/lang/Object;
.source "MiniAppKeepAddRpcService.java"


# virtual methods
.method public abstract addKeep(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepOperationResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.keep"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
