.class public interface abstract Lcom/alipay/minicenter/common/service/rpc/api/MiniAppKeepCancelRpcService;
.super Ljava/lang/Object;
.source "MiniAppKeepCancelRpcService.java"


# virtual methods
.method public abstract cancelKeep(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepOperationResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.keep.cancel"
    .end annotation
.end method
