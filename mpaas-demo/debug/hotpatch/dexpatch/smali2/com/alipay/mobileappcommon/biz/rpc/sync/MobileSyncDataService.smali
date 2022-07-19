.class public interface abstract Lcom/alipay/mobileappcommon/biz/rpc/sync/MobileSyncDataService;
.super Ljava/lang/Object;
.source "MobileSyncDataService.java"


# virtual methods
.method public abstract getBatchSyncData(Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataReq;)Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.getBatchSyncData"
    .end annotation
.end method

.method public abstract getSyncData(Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;)Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.getSyncData"
    .end annotation
.end method
