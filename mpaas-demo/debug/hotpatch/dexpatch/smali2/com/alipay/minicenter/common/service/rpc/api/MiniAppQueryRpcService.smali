.class public interface abstract Lcom/alipay/minicenter/common/service/rpc/api/MiniAppQueryRpcService;
.super Ljava/lang/Object;
.source "MiniAppQueryRpcService.java"


# virtual methods
.method public abstract queryRelationMiniApp(Lcom/alipay/minicenter/common/service/rpc/request/QueryReleationMiniAppRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/QueryReleationMiniAppResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.minirelation.query"
    .end annotation
.end method
