.class public interface abstract Lcom/alipay/mobileappcommon/biz/rpc/pginfo/PGInfoFacade;
.super Ljava/lang/Object;
.source "PGInfoFacade.java"


# virtual methods
.method public abstract getPGInfo(Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;)Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileappcommon.pg.pgPGInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
