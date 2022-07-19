.class Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper$NebulaEngineProxy;
.super Ljava/lang/Object;
.source "NXViewWrapper.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NebulaEngineProxy"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;


# virtual methods
.method public create(Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "node"    # Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .param p3, "createParams"    # Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    .line 282
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper$NebulaEngineProxy;->a:Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Landroid/content/Context;
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper$NebulaEngineProxy;->a:Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a(Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 315
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    return-object v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper$NebulaEngineProxy;->a:Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a(Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    const/4 v1, 0x0

    .line 318
    .local v1, "coreNode":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v1, v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 319
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 320
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 322
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getByViewId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEngineBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;
    .locals 1

    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper$NebulaEngineProxy;->a:Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a(Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper$NebulaEngineProxy;->a:Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->a(Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper$NebulaEngineProxy;->a:Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTopView()Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper$NebulaEngineProxy;->a:Lcom/alipay/mobile/nebulacore/core/extension/NXViewWrapper;

    return-object v0
.end method

.method public getWorkerProxy()Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;
    .locals 1

    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V
    .locals 0
    .param p1, "initParams"    # Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;
    .param p2, "engineInitCallback"    # Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

    .line 267
    return-void
.end method

.method public setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "bundle1"    # Landroid/os/Bundle;
    .param p3, "engineSetupCallback"    # Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    .line 262
    return-void
.end method
