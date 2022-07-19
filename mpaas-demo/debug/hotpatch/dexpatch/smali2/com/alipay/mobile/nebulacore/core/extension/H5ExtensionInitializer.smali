.class public Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;
.super Ljava/lang/Object;
.source "H5ExtensionInitializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static a()Lcom/alipay/mobile/nebulax/kernel/security/AccessController;
    .locals 1

    .line 32
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;-><init>()V

    return-object v0
.end method

.method private static b()Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;
    .locals 3

    .line 36
    const/4 v0, 0x0

    .local v0, "remoteController":Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;
    new-instance v1, Lcom/alipay/mobile/nebulax/kernel/remote/internal/DefaultRemoteController;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulax/kernel/remote/internal/DefaultRemoteController;-><init>()V

    .line 37
    move-object v0, v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/core/extension/DefaultRemoteControlManagement;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/core/extension/DefaultRemoteControlManagement;-><init>()V

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;->setRemoteControlManagement(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteControlManagement;)V

    .line 38
    return-object v0
.end method

.method private c()Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;
    .locals 5

    .line 42
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;-><init>()V

    const/4 v1, 0x0

    .line 44
    .local v1, "registry":Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;
    move-object v1, v0

    new-instance v2, Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer$1;-><init>(Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->setClassLoader(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;)V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->getInstance()Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/config/NebulaExternalConfig;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    .line 70
    .local v2, "info":Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->register(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;)V

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "register extension meta info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5ExtensionInitializer"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v2    # "info":Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;
    goto :goto_0

    .line 74
    :cond_0
    return-object v1
.end method


# virtual methods
.method public initExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;
    .locals 4

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;

    .line 26
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;->a()Lcom/alipay/mobile/nebulax/kernel/security/AccessController;

    move-result-object v1

    .line 27
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;->b()Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    move-result-object v2

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/extension/H5ExtensionInitializer;->c()Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;-><init>(Lcom/alipay/mobile/nebulax/kernel/security/AccessController;Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;)V

    .line 25
    return-object v0
.end method
