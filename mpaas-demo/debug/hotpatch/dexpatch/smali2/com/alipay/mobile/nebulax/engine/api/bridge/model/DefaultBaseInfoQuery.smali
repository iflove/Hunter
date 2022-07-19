.class public Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;
.super Ljava/lang/Object;
.source "DefaultBaseInfoQuery.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;


# instance fields
.field private TAG:Ljava/lang/String;

.field private nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/NXView;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "NebulaXEngine.DefaultBaseInfoQuery"

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->TAG:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 28
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getProxy()Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getApplication()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 42
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->uri:Landroid/net/Uri;

    .line 44
    iput-object p1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->originUrl:Ljava/lang/String;

    .line 45
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->canUseFallback:Z

    .line 46
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->canAsyncFallback:Z

    .line 47
    iput-boolean p1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->isMainDoc:Z

    .line 49
    const-class p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    .line 50
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;->load(Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    move-result-object p1

    .line 52
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    if-eqz v0, :cond_0

    .line 53
    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    return-object p1

    .line 55
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getInternalView()Landroid/view/View;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getPageId()I

    move-result v0

    return v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewId()I
    .locals 3

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->nxView:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getViewId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/DefaultBaseInfoQuery;->TAG:Ljava/lang/String;

    const-string v2, "get view Id exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    const/4 v0, 0x0

    return v0
.end method
