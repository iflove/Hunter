.class public interface abstract Lcom/alipay/mobile/h5container/api/H5Session;
.super Ljava/lang/Object;
.source "H5Session.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CoreNode;
.implements Lcom/alipay/mobile/nebulax/kernel/node/Scope;


# virtual methods
.method public abstract addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
.end method

.method public abstract addPage(Lcom/alipay/mobile/h5container/api/H5Page;)Z
.end method

.method public abstract exitSession()Z
.end method

.method public abstract getAppxVersionInRender()Ljava/lang/String;
.end method

.method public abstract getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPages()Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public abstract getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;
.end method

.method public abstract getSceneParams()Landroid/os/Bundle;
.end method

.method public abstract getServiceWorkerID()Ljava/lang/String;
.end method

.method public abstract getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
.end method

.method public abstract isExited()Z
.end method

.method public abstract isNebulaX()Z
.end method

.method public abstract removeAllListener()V
.end method

.method public abstract removeListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
.end method

.method public abstract removePage(Lcom/alipay/mobile/h5container/api/H5Page;)Z
.end method

.method public abstract setAppxVersionInRender(Ljava/lang/String;)V
.end method

.method public abstract setH5LinkMonitor(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setScenario(Lcom/alipay/mobile/h5container/api/H5Scenario;)V
.end method

.method public abstract setServiceWorkerID(Ljava/lang/String;)V
.end method
