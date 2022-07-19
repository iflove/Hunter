.class public interface abstract Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;
.super Ljava/lang/Object;
.source "TinyWebWorkerProvider.java"


# virtual methods
.method public abstract onPageParamReady(Landroid/os/Bundle;)V
.end method

.method public abstract preloadWorker(Landroid/os/Bundle;)V
.end method

.method public abstract sendWebWorkerPushMessage(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
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
