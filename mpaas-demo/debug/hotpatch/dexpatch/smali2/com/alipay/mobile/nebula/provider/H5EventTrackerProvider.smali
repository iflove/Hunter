.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
.super Ljava/lang/Object;
.source "H5EventTrackerProvider.java"


# virtual methods
.method public abstract cost(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end method

.method public abstract duplicateLinkData(Landroid/os/Bundle;)V
.end method

.method public abstract error(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end method

.method public abstract event(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/Event;)V
.end method

.method public abstract getSnapshotFLData()Landroid/os/Parcelable;
.end method

.method public abstract stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end method

.method public abstract stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end method

.method public abstract trackNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
.end method

.method public abstract trackNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
