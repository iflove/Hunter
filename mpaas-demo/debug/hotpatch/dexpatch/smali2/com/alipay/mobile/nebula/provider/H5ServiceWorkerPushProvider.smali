.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
.super Ljava/lang/Object;
.source "H5ServiceWorkerPushProvider.java"


# virtual methods
.method public abstract clearServiceWorker(Ljava/lang/String;)V
.end method

.method public abstract clearServiceWorkerSync(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
.end method

.method public abstract sendServiceWorkerPushMessage(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendServiceWorkerPushMessage(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/h5container/api/H5CallBack;",
            ")V"
        }
    .end annotation
.end method
