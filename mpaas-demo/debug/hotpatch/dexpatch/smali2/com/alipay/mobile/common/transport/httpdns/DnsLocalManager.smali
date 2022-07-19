.class public interface abstract Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;
.super Ljava/lang/Object;
.source "DnsLocalManager.java"


# virtual methods
.method public abstract deleteIpByHost(Ljava/lang/String;)V
.end method

.method public abstract getLastUpdateTime()J
.end method

.method public abstract queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
.end method

.method public abstract reloadDns()V
.end method

.method public abstract saveLastUpdateTime()V
.end method

.method public abstract storeIp2CacheAndDB(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract storeIp2DB(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateIp2CacheAndDB(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation
.end method
