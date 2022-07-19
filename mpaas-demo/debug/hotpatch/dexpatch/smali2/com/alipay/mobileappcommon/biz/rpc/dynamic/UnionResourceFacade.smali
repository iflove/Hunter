.class public interface abstract Lcom/alipay/mobileappcommon/biz/rpc/dynamic/UnionResourceFacade;
.super Ljava/lang/Object;
.source "UnionResourceFacade.java"


# virtual methods
.method public abstract getUnionResource(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.getUnionResource"
    .end annotation
.end method
