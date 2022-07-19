.class public interface abstract Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;
.super Ljava/lang/Object;
.source "SpiderResolver.java"


# virtual methods
.method public abstract addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract containsSpiderSilk(Ljava/lang/String;)Z
.end method

.method public varargs abstract dumpSpiderweb([Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)V
.end method

.method public varargs abstract dumpSpiderweb([Ljava/lang/String;)V
.end method

.method public abstract end(Ljava/lang/String;J)V
.end method

.method public abstract endSection(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public varargs abstract getDumpSpiderweb(Ljava/util/Set;Ljava/util/Set;[Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;",
            ")",
            "Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;"
        }
    .end annotation
.end method

.method public varargs abstract getDumpSpiderweb(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;"
        }
    .end annotation
.end method

.method public abstract getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
.end method

.method public abstract setSpiderSilk(Ljava/lang/String;Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)V
.end method

.method public abstract start(Ljava/lang/String;J)V
.end method

.method public abstract startSection(Ljava/lang/String;Ljava/lang/String;J)V
.end method
