.class public interface abstract Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;
.super Ljava/lang/Object;
.source "EventTracker.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/common/Proxiable;


# virtual methods
.method public abstract cost(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end method

.method public abstract error(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end method

.method public abstract event(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/Event;)V
.end method

.method public abstract stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end method

.method public abstract stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end method
