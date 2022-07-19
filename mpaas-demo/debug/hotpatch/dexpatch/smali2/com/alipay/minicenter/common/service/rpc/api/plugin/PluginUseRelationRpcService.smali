.class public interface abstract Lcom/alipay/minicenter/common/service/rpc/api/plugin/PluginUseRelationRpcService;
.super Ljava/lang/Object;
.source "PluginUseRelationRpcService.java"


# virtual methods
.method public abstract pullPlugin(Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/plugin/PullPluginResultPB;
    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.openservice.mini.miniapp.plugin.pull"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
