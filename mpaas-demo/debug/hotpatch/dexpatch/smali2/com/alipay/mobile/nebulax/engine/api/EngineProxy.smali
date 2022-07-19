.class public interface abstract Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
.super Ljava/lang/Object;
.source "EngineProxy.java"


# virtual methods
.method public abstract create(Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
.end method

.method public abstract destroy()V
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getApplication()Landroid/content/Context;
.end method

.method public abstract getByViewId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
.end method

.method public abstract getEngineBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;
.end method

.method public abstract getInstanceId()Ljava/lang/String;
.end method

.method public abstract getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
.end method

.method public abstract getStartParams()Landroid/os/Bundle;
.end method

.method public abstract getTopView()Lcom/alipay/mobile/nebulax/engine/api/NXView;
.end method

.method public abstract getWorkerProxy()Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;
.end method

.method public abstract init(Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V
.end method

.method public abstract setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
.end method
