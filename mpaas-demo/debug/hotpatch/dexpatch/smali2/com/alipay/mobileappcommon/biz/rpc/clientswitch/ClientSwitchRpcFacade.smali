.class public interface abstract Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/ClientSwitchRpcFacade;
.super Ljava/lang/Object;
.source "ClientSwitchRpcFacade.java"


# virtual methods
.method public abstract getSwitchesPbAfterLogin(Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;)Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.switches.all.get.afterloginPb"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract getSwitchesPbYac(Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;)Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoRespPb;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.switches.all.get.yac"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
