.class public interface abstract Lcom/alipay/mobile/monitor/traffic/MpaasTrafficMonitor;
.super Ljava/lang/Object;
.source "MpaasTrafficMonitor.java"


# virtual methods
.method public abstract addDomainLengthLimit(Ljava/lang/String;J)V
.end method

.method public abstract handleTraffic(Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;)V
.end method

.method public abstract report(J)V
.end method

.method public abstract setCommonLengthLimit(J)V
.end method

.method public abstract setDomainLengthLimits(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method
